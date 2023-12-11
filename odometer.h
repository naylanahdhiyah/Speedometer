#ifndef ODOMETER_H
#define ODOMETER_H

#include <QObject>

class odometer : public QObject
{
    Q_OBJECT
public:
    explicit odometer(QObject *parent = nullptr);
    double hasil;
    float ododis;


    Q_INVOKABLE float gettempuh();

signals:

};

#endif // ODOMETER_H
