#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "spedometer.h"
#include "rpm.h"
#include "daya.h"
#include "odometer.h"
#include "temperature.h"
#include "suhu_ruang.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    spedometer kecepatan;
//  DigitalClock waktu;
    rpm rpmm;
    daya persen;
    odometer odomet;
    temperature tempmesin;
    suhu_ruang suhu;


//  engine.rootContext()->setContextProperty("waktu", &waktu);

    engine.rootContext()->setContextProperty("kecepatan", &kecepatan);
    engine.rootContext()->setContextProperty("rpmm", &rpmm);
    engine.rootContext()->setContextProperty("persen", &persen);
    engine.rootContext()->setContextProperty("odomet", &odomet);
    engine.rootContext()->setContextProperty("tempmesin", &tempmesin);
    engine.rootContext()->setContextProperty("suhu", &suhu);

//    qmlRegisterType<ExampleClass>("KelasContoh", 1, 0, "KelasContoh");

            const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}


