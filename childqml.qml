import QtQuick 2.0
import QtQuick.Window 2.3

Window
{
    id : childWindow
    width : 300 ; height : 300
    title: qsTr("About")
    visible: true
    Text{
        anchors.left: parent.left
        font.pointSize: 15
        font.bold: true
        text: qsTr("©Copyright production

Clicker by blvckmarker")

    }
    Text{
        text: "По приказу Острых Козырьков!"
        anchors.bottom: parent.bottom
        font.pointSize: 8
        font.bold: true

    }
}
