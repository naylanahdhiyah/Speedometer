#include "odometer.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>
odometer::odometer(QObject *parent) : QObject(parent)
{
    ododis = 0;

}

float odometer::gettempuh(){
    for (int i = 0; i < 10; ++i)
    {
        ododis=ododis+0.001;
    }
    if(ododis >= 43)
    {
        ododis = 43;
    }

return ododis;
}







