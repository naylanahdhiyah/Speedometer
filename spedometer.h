#ifndef SPEDOMETER_H
#define SPEDOMETER_H

#include <QObject>

class spedometer : public QObject
{
    Q_OBJECT
public:
    explicit spedometer(QObject *parent = nullptr);
    int speed;
    int battery;


    Q_INVOKABLE int getData();
    Q_INVOKABLE int getBatteryMin();

signals:

};
#endif // SPEDOMETER_H
