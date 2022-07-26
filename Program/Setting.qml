import QtQuick 2.0

Item {

    BackButton{
           id: backButton
           anchors.left: parent.left

       }

    Rectangle
    {
        anchors.centerIn: parent

        Image {
            width: 356
            height: 256
            anchors.centerIn: parent
            source: "qrc:/Image/setting.png"
        }


    }






}
