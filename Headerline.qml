import QtQuick 2.0
import BoschPremium 1.0
import QtQuick.Controls 2.0
Item  {
    Rectangle{
        color: "black"
        radius: 5
        x:-2
        width: 805
        height: 30
    }
    Image {
        id: wifi
        x:730
        source: "qrc:/Image/wifi.png"
        height: 30
        width: 30
    }
    Image {
        id: lock
        x:698
        source: "qrc:/Image/lock.png"
        height: 30
        width: 30
    }
    Image {
        id: more
        x:770
        source: "qrc:/Image/more.png"
        height: 30
        width: 30
    }
    Rectangle {
        x:770
        id: seperator
        width: 5
        height: 30
        color: "darkGray"
        smooth: true
        opacity: 0.2
    }
}
