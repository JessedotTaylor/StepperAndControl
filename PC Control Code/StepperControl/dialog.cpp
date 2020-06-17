#include "dialog.h"
#include "ui_dialog.h"

Dialog::Dialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::Dialog)
{
    ui->setupUi(this);
    serial = new QSerialPort("COM3", this);  //Change the COM port!!!!
    connect(serial, SIGNAL(readyRead()), SLOT(serialDataReady()));
    bool success = serial->open(QIODevice::ReadWrite);
    if (success) {
        ui->connection_Light->setValue(1);
        ui->driver_stat->setValue(1);
    }

}

Dialog::~Dialog()
{
    delete ui;
}
void Dialog::serialDataReady() {
    if (serial->canReadLine()) {
        char s[80];
        serial->readLine(s, 80);
        s[strlen(s)-1] = '\0';
        switch (s[0]) {
        case 'E':
            ui->driver_stat->setValue(0);
            ui->En_state->setChecked(false);
            break;
        case 'N':
            ui->home->setCheckable(false);
            break;
        case 'C':
            int n;
            sscanf(s+1, "%d", &n);
            ui->Pos->setValue(n);
        }
    }
}

void Dialog::on_En_state_stateChanged()
{
    serial->write("O\n");
}



void Dialog::on_dir_clicked()
{
    serial->write("D\n");

}


void Dialog::on_spinBox_valueChanged(int arg1)
{
    char s[80];
    sprintf(s, "M %s\n", qPrintable(arg1));
    serial->write(s);
}

void Dialog::on_home_clicked()
{
    serial->write("H");
}

void Dialog::on_velocity_editingFinished()
{
    char s[80];
    sprintf(s, "S M %s\n", qPrintable(ui->velocity->text()));
    serial->write(s);
}

void Dialog::on_acceleration_editingFinished()
{
    char s[80];
    sprintf(s, "S A %s\n", qPrintable(ui->acceleration->text()));
    serial->write(s);
}

void Dialog::on_stall_editingFinished()
{
    char s[80];
    sprintf(s, "S S %s\n", qPrintable(ui->stall->text()));
    serial->write(s);
}

void Dialog::on_bumpFullstep_editingFinished()
{
    if (ui->bumpFullstep->text() < 0) {
        serial->write("D\n");
        int val = ui->bumpFullstep->text().toInt();
        val = - val;
        char s[80];
        sprintf(s, "F %d\n", val);
        serial->write(s);
        serial->write("D\n");
    } else {
        char s[80];
        sprintf(s, "F %s\n", qPrintable(ui->bumpFullstep->text()));
        serial->write(s);
    }
    ui->bumpFullstep->setValue(0);

}
