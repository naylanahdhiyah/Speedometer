#ifndef TEMPERATURE_H
#define TEMPERATURE_H
#include <QObject>
class temperature: public QObject
{
    Q_OBJECT
public:
    explicit temperature(QObject *parent = nullptr);

    int temp;


    Q_INVOKABLE int getData();
signals:

};

#endif // TEMPERATURE_H
