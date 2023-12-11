import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQml 2.12

Window {
    width: 1600
    height: 900
    visible: true
    color: "#000000"
    title: qsTr("Hello World")

property int dyx
property int speed
property int rpmdata
property real ododis
property int temp
property int suhu_ruang

Rectangle{
    id: rectangle
    width: 1600
    height: 900
    color: "#000000"
    layer.enabled: false
    anchors.centerIn: parent


    Image {
        id: gradienBg
        width: 1600
        height: 831
        anchors.verticalCenter: parent.verticalCenter
        source: "Asset/bluegrade.png"
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        opacity: 0.5
    }



    Text {
        id: x1000
        x: 377
        y: 601
        width: 43
        height: 19
        color: "#ffffff"
        text: qsTr("X1000")
        font.pixelSize: 20
        font.family: "DS-Digital"
    }



    Image {
        id: right
        x: 960
        y: 659
        source: "Asset//right.png"
        fillMode: Image.PreserveAspectFit

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (blinkdarkright.running === false)
                    blinkdarkright.running = true
                else
                    blinkdarkright.running = false
                if(right.opacity === 1)
                    right.opacity = 0.3
            }
        }
    }


    Image {
        id: left
        x: 579
        y: 659
        source: "Asset//left.png"
        fillMode: Image.PreserveAspectFit
        opacity: 0.3

        MouseArea {
            anchors.fill: parent
            onPressAndHold:  {
                if (blinkleftright.running === false)
                    blinkleftright.running = true
                else
                    blinkleftright.running = false
                if (left.opacity && right.opacity === 1)
                {
                    left.opacity = 0.3
                    right.opacity = 0.3
                }
            }
            onClicked: {
                if(blinkleft.running === false)
                    blinkleft.running = true
                else
                    blinkleft.running = false
                if(left.opacity === 1)
                    left.opacity = 0.3
            }
        }
    }

    Text {
        id: text4
        x: 381
        y: 573
        width: 39
        height: 24
        color: "#ffffff"
        text: qsTr("RPM")
        font.pixelSize: 25
        font.family: "DS-Digital"
    }

    Text {
        id: dataRPM
        x: 381
        y: 505
        width: 37
        height: 65
        color: "#ffffff"
        //text: qsTr("5")
        font.pixelSize: 75
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "DS-Digital"
            text: {
                if (dyx ==0){
                           qsTr("0")
                               }
              else{
                rpmdata.toString()
                  }
                }
                //rpmdata.toString()
        }
        Timer {
            id: timer3
            interval: 1000
            repeat: true
            running: true
            onTriggered: {
            rpmdata = rpmm.getputaran()
                }
        }

    Image {
        id: outlinerpm
        x: 252
        y: 423
        width: 292
        height: 287
        source: "Asset//outlinerpm.png"
        fillMode: Image.PreserveAspectFit
    }




    Image {
        id: outlinebaterai
        x: 1051
        y: 423
        width: 305
        height: 287
        source: "Asset//outlinebaterai.png"
        fillMode: Image.PreserveAspectFit

        Image {
            id: battery
            x: 134
            y: 179
            source: "Asset//battery.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: text7
            x: 120
            y: 154
            color: "#ffffff"
            text: qsTr("PERCENT")
            font.pixelSize: 20
            font.family: "DS-Digital"
        }

        Text {
            id: dayaBaterai
            x: 116
            y: 82
            width: 74
            height: 71
            color: "#ffffff"
           // text: qsTr("57")
            font.pixelSize: 75
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "DS-Digital"
                text: dyx.toString()
        }

        Timer {
                id: timer6
                interval: 1000
                repeat: true
                running: true
                onTriggered: {
                    dyx = persen.getData()
                    }
            }
    }

    Image {
        id: linggrad
        x: 603
        y: 90
        width: 383
        height: 480
        opacity: 0.5
        source: "Asset//linggrad.png"
        fillMode: Image.PreserveAspectFit
    }

        Image {
            id: outlinggrad
            x: 573
            y: 84
            width: 444
            height: 491
            source: "Asset//outlinggrad.png"
            fillMode: Image.PreserveAspectFit

            Text {
                id: text1
                x: 198
                y: 181
                width: 48
                height: 92
                color: "#ffffff"
//                text: qsTr("120")
                font.pixelSize: 100
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "DS-Digital"
                text:{
                if (dyx == 0){
                qsTr("0")
                }
                else{
                speed.toString()
                }
              }
            }

            Timer {
                id: timer
                interval: 1000
                repeat: true
                running: true
                onTriggered: {
                speed = kecepatan.getData()

                    }
            }



            Text {
                id: text2
                x: 192
                y: 279
                width: 60
                height: 34
                color: "#ffffff"
                text: qsTr("KM/H")
                font.pixelSize: 35
                font.styleName: "Normal"
                font.family: "DS-Digital"
            }
        }

        Image {
            id: redup
            x: 721
            y: 595
            width: 36
            height: 31
            source: "Asset//redup.png"
            fillMode: Image.PreserveAspectFit
            opacity: 0.3

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(redup.opacity = 0.3)
                    {
                     terang.opacity = 0.3
                     redup.opacity = 1
                    }
                }
            }
        }

        Image {
            id: terang
            x: 844
            y: 595
            width: 36
            height: 31
            source: "Asset//terang.png"
            fillMode: Image.PreserveAspectFit
            opacity: 0.3

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(terang.opacity = 0.3)
                    {
                     terang.opacity = 1
                     redup.opacity = 0.3
                    }
                }
            }
        }

        Text {
            id: odo
            x: 683
            y: 660
            width: 177
            height: 50
            color: "#ffffff"
            //text: qsTr("2584")
            font.pixelSize: 50
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "DS-Digital"
            text: {
                if (dyx == 0){
                qsTr("10.07")
                }
                else{
                ododis.toString()
                }
              }

                //ododis.toString()

        }
            Timer {
                id: timerodo
                interval: 100
                repeat: true
                running: true
                onTriggered: {
                ododis = odomet.gettempuh().toFixed(2)

                    }
            }

        Text {
            id: textKM
            x: 814
            y: 660
            width: 75
            height: 50
            color: "#757272"
            text: qsTr("KM")
            font.pixelSize: 50
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "DS-Digital"
        }

        Image {
            id: backgroundProp
            x: 511
            y: 737

            width: 578
            height: 134
            source: "Asset/BackgroundProp.png"
            fillMode: Image.PreserveAspectFit
            opacity: 0.4

        }

        Image {
            id: pSign
            x: 607
            y: 781
            width: 34
            height: 46
            source: "Asset/pSign.png"
            fillMode: Image.PreserveAspectFit
            opacity: 0.3
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(pSign.opacity >= 0.3)
                    {
                        pSign.opacity = 1
                        rSign.opacity = 0.3
                        nSign.opacity = 0.3
                        dSign.opacity = 0.3
                        sSign.opacity = 0.3
                    }
                }
            }
        }

        Image {
            id: rSign
            x: 692
            y: 781
            width: 40
            height: 46
            source: "Asset/rSign.png"
            fillMode: Image.PreserveAspectFit
            opacity: 0.3
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(rSign.opacity >= 0.3)
                    {
                        pSign.opacity = 0.3
                        rSign.opacity = 1
                        nSign.opacity = 0.3
                        dSign.opacity = 0.3
                        sSign.opacity = 0.3
                    }
                }
            }
        }

        Image {
            id: nSign
            x: 784
            y: 781
            width: 33
            height: 46
            source: "Asset/nSign.png"
            fillMode: Image.PreserveAspectFit
            opacity: 1
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(nSign.opacity >= 0.3)
                    {
                        pSign.opacity = 0.3
                        rSign.opacity = 0.3
                        nSign.opacity = 1
                        dSign.opacity = 0.3
                        sSign.opacity = 0.3
                    }
                }
            }
        }

        Image {
            id: dSign
            x: 873
            y: 781
            width: 33
            height: 46
            source: "Asset/dSign.png"
            fillMode: Image.PreserveAspectFit
            opacity: 0.3
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(dSign.opacity >= 0.3)
                    {
                        pSign.opacity = 0.3
                        rSign.opacity = 0.3
                        nSign.opacity = 0.3
                        dSign.opacity = 1
                        sSign.opacity = 0.3
                    }
                }
            }
        }

        Image {
            id: sSign
            x: 954
            y: 781
            width: 33
            height: 46
            source: "Asset/sSign.png"
            fillMode: Image.PreserveAspectFit
            opacity: 0.3
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if(sSign.opacity >= 0.3)
                    {
                        pSign.opacity = 0.3
                        rSign.opacity = 0.3
                        nSign.opacity = 0.3
                        dSign.opacity = 0.3
                        sSign.opacity = 1
                    }
                }
            }
        }

        Image {
            id: temperatureMesin
            x: 609
            y: 54
            width: 16
            height: 24
            source: "Asset/TempMesin.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: textTemperatureMesin
            x: 631
            y: 54
            width: 32
            height: 24
            color: "#ffffff"
            //text: qsTr("32")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "DS-Digital"
            text:temp.toString()
        }
        Timer {
            id: timerTemp
            interval: 1000
            repeat: true
            running: true
            onTriggered: {
            temp = tempmesin.getData()

                }
        }

        Text {
            id: fahrenheit
            x: 669
            y: 50
            width: 26
            height: 26
            color: "#ffffff"
            text: qsTr("°F")
            font.pixelSize: 25
            font.family: "DS-Digital"
        }
        Image {
            id: temperatureRuang
            x: 899
            y: 52
            width: 29
            height: 24
            source: "Asset/Cuaca.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: textTemperatureRuang
            x: 934
            y: 54
            width: 29
            height: 24
            color: "#ffffff"
            //text: qsTr("32")
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "DS-Digital"
            text: suhu_ruang.toString()

            Timer {
                id: timerTempRuang
                interval: 1000
                repeat: true
                running: true
                onTriggered: {
                suhu_ruang = suhu.getData()

                    }
            }
        }

        Text {
            id: celcius
            x: 969
            y: 49
            width: 23
            height: 26
            color: "#ffffff"
            text: qsTr("°C")
            font.pixelSize: 25
            font.family: "DS-Digital"
        }

        Text{
            id: autoTime
            x: 770
            y: 50
            width: 60
            height: 24
            color: "#ffffff"
            //text: qsTr("12.34")
            font.pixelSize: 30
            horizontalAlignment: Text.AlignHCenter
            font.family: "DS-Digital"

            text: Qt.formatTime(new Date(),"hh:mm")
          }
              Timer {
                      interval: 2000
                      running: true
                      repeat: true

                      onTriggered: {
                          var date = new Date()
                          autoTime.text = date.toLocaleTimeString(Qt.LocalTime, Locale.ShortFormat)
                      }
                  }


   }//batasrectangle





    Timer {
        id: timer_1
        interval:1
        repeat: true
        running: true
        onTriggered: {
            odometer=ododis.getData().toFixed(2)
            }

}

    Timer {
        id: blinkdarkright
        interval: 500
        running: false
        repeat: true
        onTriggered: {
            if (right.opacity === 0.3)
            {
                right.opacity = 1
            }
            else
            {
                right.opacity = 0.3
            }
        }
    }

    Timer {
        id: blinkleft
        interval: 500
        running: false
        repeat: true
        onTriggered: {
            if (left.opacity === 0.3)
            {
                left.opacity = 1
            }
            else if (left.opacity === 1)
            {
                left.opacity = 0.3
            }
        }
    }

    Timer {
        id: blinkleftright
        interval: 500
        running: true
        repeat: false
        onTriggered: {
            if (left.opacity && right.opacity === 0.3)
            {
                left.opacity = 1
                right.opacity =1
            }
            else
            {
                left.opacity = 0.3
                right.opacity = 0.3
            }
        }
    }
}
