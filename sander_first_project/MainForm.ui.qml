import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480

    property alias button6: button6
    property alias button5: button5
    property alias button4: button4
    property alias button3: button3
    property alias button2: button2
    property alias button1: button1

    RowLayout {
        id: id
        anchors.centerIn: parent

        Button {
            id: button1
            text: qsTr("Option 1")
        }

        Button {
            id: button2
            text: qsTr("Option 2")
        }

        Button {
            id: button3
            text: qsTr("Option 3")
        }
        Button {
            id: button4
            text: qsTr("Explosion !!")
        }
        Button {
            id: button5
            text: qsTr("Selma")
        }

        Button {
            id: button6
            text: qsTr("Mamma G!!")
        }

    }



}
