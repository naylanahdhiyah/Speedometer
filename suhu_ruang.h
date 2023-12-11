#ifndef SUHU_RUANG_H
#define SUHU_RUANG_H

#include <QThread>

#include <QObject>
class suhu_ruang: public QObject
{
    Q_OBJECT
public:
    explicit suhu_ruang(QObject *parent = nullptr);

    int suhu;

    Q_INVOKABLE int getData();
signals:

};


#endif // TEMPERATURE_H
