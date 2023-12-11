#include "daya.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>

daya::daya(QObject *parent) : QObject(parent)
{
    dyx = 101;
}

int daya::getData(){

    for (int i = 0; i < 1; i++)
    {
        dyx=dyx-1;
    }
//        return speed;
       if(dyx <= 0)
       {
           dyx=0;

        }

return dyx;
}



