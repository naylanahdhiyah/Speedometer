#ifndef RPM_H
#define RPM_H

#include <QObject>

class rpm : public QObject
{
    Q_OBJECT
public:
    explicit rpm(QObject *parent = nullptr);

    int rpmdata;


    Q_INVOKABLE int getputaran();

signals:

};
#endif // RPM_H
