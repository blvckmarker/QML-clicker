import QtQuick 2.14
import QtQuick.Controls 2.14


ApplicationWindow
{
    property int count: 0

    id: mainWin
    title: qsTr("Clicker")

    width: 300; height: 300
    visible: true

    Image //background
    {
        x: 0; y : 0
        width: parent.width; height: parent.height
        source: "https://media.istockphoto.com/vectors/abstract-green-geometric-background-vector-illustration-eps-10-vector-id1130072587?k=20&m=1130072587&s=612x612&w=0&h=7vN7Aw2Cddvju5y4Aw5NEhEWCYOxJME_oz4z7bsnyNU="
    }

    menuBar: MenuBar
    {
        Menu{
            title: qsTr("&More")
            Action
            {
                text: qsTr("About...")
                onTriggered:
                {
                    var component = Qt.createComponent("childqml.qml")
                    var win = component.createObject(mainWin)
                    win.show()
                }
            }

            MenuSeparator{}
            Action
            {
                text: qsTr("Quit")
                onTriggered: Qt.quit()
            }
        }
    }

    Button
    {
        id: control
        text: qsTr("Click")
        font.bold: true

        contentItem: Text {
            text: control.text
            font: control.font
            opacity: enabled ? 1.0 : 1.0
            color: control.down ? "#00B25C" : "#696969"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideMiddle

        }
        background: Rectangle {
            implicitWidth: 90
            implicitHeight: 30
            opacity: enabled ? 0.7 : 0.2
            radius: 7
            border.color: control.down ? "#36D88A" : "#FFFFFF"
            border.width: 1
        }

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        onClicked: count++
    }

    Label
    {

        id: labCounter
        anchors.horizontalCenter: parent.horizontalCenter
        y : parent.y + 10
        Text
        {
            text: count
            font.pixelSize: 20
        }
    }
}
