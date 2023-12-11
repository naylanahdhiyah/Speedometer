#ifndef DAYA_H
#define DAYA_H

#include <QObject>

class daya : public QObject
{
    Q_OBJECT
public:
    explicit daya(QObject *parent = nullptr);

    int dyx;


    Q_INVOKABLE int getData();

signals:

};
#endif // DAYA_H

