import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    Rectangle {
        id: dialog
        color: "black"
        width: 800
        height: 400
        Image {
            source: "qrc:/Image/exit.png"
            width: 30
            height: 30
            y: 0
            x: 750
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    stackView.pop()
                    stackView.push("qrc:/Program/Favourites.qml")
                    headerline.visible = true
                }
            }
        }
        Text {
            text: qsTr("You can save your preferred oven settings as favourites by
selecting the favourites symbol in the types of heating or
dishes. Alternatively, you can also create favourites in the
Home Connect app and save these on the appliance.")
            color: "white"
            anchors.centerIn: parent
            font.pixelSize: 20
        }
    }
}
