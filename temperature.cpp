#include "temperature.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>

temperature::temperature(QObject *parent) : QObject(parent)
{
temp=0;
}
int temperature::getData(){
      std::uniform_int_distribution<int>distribution(140,145);
      for (int i = 0; i < 8; i++)
      {
          temp=temp+2;
          if(temp >= 160){
                   temp = distribution(*QRandomGenerator::global());
          }
      }

return temp;
}

