#include "suhu_ruang.h"

#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>

suhu_ruang::suhu_ruang(QObject *parent) : QObject(parent)
{
suhu=0;

}
int suhu_ruang::getData(){

      std::uniform_int_distribution<int>distribution(29,30);

                   suhu = distribution(*QRandomGenerator::global());
//        qDebug() << suhu;




return suhu;
}

