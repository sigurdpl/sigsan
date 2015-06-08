import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Hello World")
    width: 580
    height: 400
    visible: true

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MainForm {
        anchors.topMargin: 0
        anchors.fill: parent
 //       button1.onClicked: messageDialog.show(qsTr("U lost"))
        button1.onClicked: color = "green"
        button2.onClicked: messageDialog.show(qsTr("Right answer"))
        button3.onClicked: color = "blue"
        button4.onClicked: messageDialog.show(qsTr("Explosion"))
        button5.onClicked: messageDialog.show(qsTr("Selma er super pen"))
        button6.onClicked: color = "purple"       }

    MessageDialog {
        id: messageDialog
        title: qsTr("u pressed this button")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
