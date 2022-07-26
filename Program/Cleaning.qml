import QtQuick 2.0
import QtQuick.Controls 2.15
Item {

 BackButton{
        id: backButton
        anchors.left: parent.left
    }

    Image {
        width: 356
        height: 256
        anchors.centerIn: parent
        source: "qrc:/Image/anh1.png"
    }


}
