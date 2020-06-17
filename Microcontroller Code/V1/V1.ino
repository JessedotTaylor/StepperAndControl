#define ERROR_PIN 1 //PD3
#define INDEX_PIN 0 //PD2
#define EN_PIN 10 //PB6 CGF6
#define CS_PIN 14 //PF7 / A0
#define DIR_PIN 19 // PF0 / A5
#define STEP_PIN 18 //PF1 / A4
#define CGF0_PIN 17 //PF4 / A3
#define CGF1_PIN 16 //PF5 / A2
#define CGF2_PIN 15 //PF6 / A1
//#define CGF3_PIN 14 //PF7 / A0
#define CGF4_PIN 12 //PD6 
#define CGF5_PIN 6 // PD7


constexpr uint32_t steps_per_mm = 80;


#include <TMC2130Stepper.h>
#include <TMC2130Stepper_REGDEFS.h>
TMC2130Stepper driver = TMC2130Stepper(EN_PIN, DIR_PIN, STEP_PIN, CS_PIN);

#include <AccelStepper.h>
AccelStepper stepper = AccelStepper(stepper.DRIVER, STEP_PIN, DIR_PIN);

volatile byte error = false;
volatile int count = 0;
bool dir = false;

void pinError(void){
  error = true;
}

void index(void) {
  count++;
}


void setup() {
  // put your setup code here, to run once:
  pinMode(CGF0_PIN, OUTPUT);
  digitalWrite(CGF0_PIN, LOW); //Recommended setting for spreadcycle chopper
  pinMode(CGF4_PIN, OUTPUT);
  digitalWrite(CGF4_PIN, LOW); //Recommended setting for chopper hysteresis
  pinMode(CGF5_PIN, OUTPUT);
  digitalWrite(CGF5_PIN, HIGH); // Chopper blank time

  pinMode(ERROR_PIN, INPUT_PULLUP);   //These pins may trip on Serial Comms
  attachInterrupt(digitalPinToInterrupt(ERROR_PIN), pinError ,CHANGE);
  pinMode(INDEX_PIN, INPUT);
  attachInterrupt(digitalPinToInterrupt(INDEX_PIN), index ,CHANGE);

  Serial.begin(9600);
  while(!Serial); //Needed for 32u4 based boards
  Serial.println("Start...");
  SPI.begin();
  pinMode(MISO, INPUT_PULLUP);
  driver.begin();       // Initiate pins and registeries
  driver.rms_current(600);  // Set stepper current to 600mA. The command is the same as command TMC2130.setCurrent(600, 0.11, 0.5);
  driver.stealthChop(1);  // Enable extremely quiet stepping
  driver.sg_stall_value(0);
  
  digitalWrite(EN_PIN, HIGH); //LOW Enabled

  stepper.setMaxSpeed(50*steps_per_mm); // 100mm/s @ 80 steps/mm
  stepper.setAcceleration(1000*steps_per_mm); // 2000mm/s^2
  stepper.setEnablePin(EN_PIN);
  stepper.setPinsInverted(false, false, true);
  stepper.enableOutputs();

    // Set stepper interrupt
  {
    cli();//stop interrupts
    TCCR1A = 0;// set entire TCCR1A register to 0
    TCCR1B = 0;// same for TCCR1B
    TCNT1  = 0;//initialize counter value to 0
    OCR1A = 256;// = (16*10^6) / (1*1024) - 1 (must be <65536)
    // turn on CTC mode
    TCCR1B |= (1 << WGM12);
    // Set CS11 bits for 8 prescaler
    TCCR1B |= (1 << CS11);// | (1 << CS10);  
    // enable timer compare interrupt
    TIMSK1 |= (1 << OCIE1A);
    sei();//allow interrupts
  }
  bool dir = false;

}

ISR(TIMER1_COMPA_vect){
  PORTF |= 1 << 0;
  PORTF &= ~(1 << 0);
}

void loop() {
  static uint32_t last_time = 0;
  uint32_t ms = millis();
  // put your main code here, to run repeatedly:
  if((ms-last_time) > 500) { //run every 0.5s
    while(!Serial.available());
    char inc[80];
    int i = 0;
    while(Serial.available() > 0) {
      inc[i++] = Serial.read();
    }
    inc[i] = '\0';
    int n;
    switch (inc[0]){
       case 'O': // Toggle Enable
       {
          digitalWrite(EN_PIN, !digitalRead(EN_PIN));
          break;
       }
       case 'D': //Toggle Direction
       {
          dir = !dir;
          driver.shaft_dir(dir);
          break;
       }
      case 'F': //Fullstep X steps
      {
          sscanf(inc+1, "%d", &n); 
          count = 0;
          digitalWrite(EN_PIN, LOW);  //Active LOW
          while (count < n) {};     //Very bad programming
          digitalWrite(EN_PIN, HIGH); // Active LOW
          break;
      }
      case 'M': //Set microsteps
      {
          sscanf(inc+1, "%d", &n); 
          driver.microsteps(n);
          break;
      }
      case 'X': // goto x.y absolute position
          break;
  
      case 'Z': // goto x.y relative position
          break;
  
      case 'H': // reHome
          driver.shaft_dir(0);
          static uint32_t last_time = 0;
          uint32_t ms = millis();
          
          if((ms-last_time) > 10) //run every 0.01s
          {
            last_time = ms;
            uint32_t drv_status = driver.DRV_STATUS();
            while ((drv_status & SG_RESULT_bm)>>SG_RESULT_bp != 0) {};  //Again with the bad programming
          }
          driver.shaft_dir(dir);
          break;
  
      case 'S':
          switch (inc[2]) {
            case 'M':
            {
              sscanf(inc+3, "%d", &n);
              stepper.setMaxSpeed(n * steps_per_mm);
              break;
            }
            case 'A':
            {
              sscanf(inc+3, "%d", &n);
              stepper.setAcceleration(n * steps_per_mm);
              break;
            }  
            case 'S':
            {
              sscanf(inc+3, "%d", &n);
              driver.sg_stall_value(n);
              break;
            } 
            default:
              break;
          }
          
      default:
         break;
    }
  }

  if (error) {  // Error Pin goes high
    error = false;
    Serial.println("E");
    digitalWrite(EN_PIN, LOW);
  }
  
  
  if((ms-last_time) > 100) //run every 0.1s
  {
    last_time = ms;
    uint32_t drv_status = driver.DRV_STATUS();
    if ((drv_status & SG_RESULT_bm)>>SG_RESULT_bp == 0){ // Driver stalled
      Serial.println("N");
      digitalWrite(EN_PIN, LOW);
    }
  }


}
