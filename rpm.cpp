#include "rpm.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>
rpm::rpm(QObject *parent) : QObject(parent)
{
    rpmdata = 0;

}

int rpm::getputaran(){
      std::uniform_int_distribution<int>distribution(2,4);
      for (int i = 0; i <1; i++)
      {
        rpmdata=rpmdata+1;
      }

      if(rpmdata>=6){
          rpmdata = distribution(*QRandomGenerator::global());
          rpmdata=rpmdata*1;

        }
//        qDebug() << rpmdata;

return rpmdata;
}
