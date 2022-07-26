import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15
import QtQuick.Layouts 1.15
import QtQml.Models 2.15
Item {
    ListView {
        id: listView
        width: 800
        height: 400
        snapMode: ListView.SnapPosition
        orientation: ListView.Horizontal
        highlightRangeMode: ListView.StrictlyEnforceRange
        model: ListModel {

            ListElement { name : "Types of heating"
                          sub: " Manual preparation"
                          prog: "qrc:/Program/TypesofHeating.qml"
                          src: "qrc:/Image/anh7.png"}
            ListElement { name : "Microwave"
                          sub: " Quick preparation"
                          prog: "qrc:/Program/Microwave.qml"
                          src: "qrc:/Image/anh6.png"}
            ListElement { name : "Steam"
                          sub: " Gentle preparation"
                          prog: "qrc:/Program/Meals.qml"
                          src: "qrc:/Image/anh4.png"}
            ListElement { name : "Meals"
                          sub: " Assist programmes"
                          prog: "qrc:/Program/Favourites.qml"
                          src: "qrc:/Image/anh3.png"}
            ListElement { name : "Favourite"
                          sub: ""
                          prog: "qrc:/Programscreen.qml"
                          src: "qrc:/Image/anh2.png"}
            ListElement { name : "Cleaning"
                          prog: "qrc:/Program/TypesofHeating.qml"
                          sub: ""
                          src: "qrc:/Image/anh1.png"}
            ListElement { name : "Basic settings"
                          sub: ""
                          src: "qrc:/Image/setting.png"}
        }
        delegate: Rectangle {
            width: listView.width
            height: listView.height
            color: "black"
            Text {
                color: "white"
                font.pixelSize: 50
                y: 180
                x: 300
                text: model.name
            }
            Text {
                color: "white"
                font.pixelSize: 20
                y: 250
                x: 300
                text: model.sub
            }
            Image {
                width: 200
                height: 200
                y: 100
                x: 50
                source: model.src
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    screenController.setTitle(model.name)
                    stackView.push(model.prog)
                    if(model.prog === "qrc:/Programscreen.qml"){
                        headerline.visible = false
                    }
                }
            }
        }
        PageIndicator {
            id: control
            currentIndex: listView.currentIndex
            count: listView.count
            interactive: true
            delegate: Rectangle {
                implicitWidth: 8
                implicitHeight: 8
                radius: width / 2
                color: index === control.currentIndex? "red" : "gray"
                required property int index
            }
            y: 350
            x: 350
        }
    }
}
