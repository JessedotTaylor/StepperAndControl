#ifndef DIALOG_H
#define DIALOG_H

#include <QDialog>
#include <QtSerialPort/QSerialPort>

namespace Ui {
class Dialog;
}

class Dialog : public QDialog
{
    Q_OBJECT

public:
    explicit Dialog(QWidget *parent = 0);
    ~Dialog();

private slots:
    void serialDataReady();

    void on_En_state_stateChanged();

    void on_dir_clicked();

    void on_spinBox_valueChanged(int arg1);

    void on_home_clicked();

    void on_velocity_editingFinished();

    void on_acceleration_editingFinished();

    void on_stall_editingFinished();

    void on_bumpFullstep_editingFinished();

private:
    Ui::Dialog *ui;
    QSerialPort *serial;
};

#endif // DIALOG_H
