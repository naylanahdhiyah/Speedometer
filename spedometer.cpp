#include "spedometer.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>
spedometer::spedometer(QObject *parent) : QObject(parent)
{
    speed = 0;
    battery = 740;
}

int spedometer::getData(){
      std::uniform_int_distribution<int>distribution(70,91);

        // random hex string generator


    for (int i = 0; i <10; i++)
    {
        speed=speed+1;
//        return speed;
       if(speed >= 90){

                speed = distribution(*QRandomGenerator::global());

        }
    }
//        }
   //     qDebug() << speed;

return speed;
}
 int spedometer::getBatteryMin()
 {
     battery = battery - 10;

     return battery;
 }



