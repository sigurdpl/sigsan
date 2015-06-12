import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Hello World")
    width: 580
    height: 400
    visible: true
    property var add: 0

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

    Row {
        id: adder
        anchors.left: parent.left
        anchors.margins: 10
        anchors.top: parent.top - 10
        Button {
            id: addButton
            text: qsTr("add")
            onClicked: { add = add + 1 ; textField.text = add.toFixed()  }
        }
        TextField {
            id: textField
            anchors.left: addButton.right
            anchors.margins: 5
            text: qsTr( "0" )

        }
    }

    Row {
        id: selma
        anchors.left: adder.left
        anchors.top: adder.bottom
        Button {
            text: "Selma"
            onClicked: { selmaField.text = "Selma er fin"; }
        }
        TextField {
            id: selmaField

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
        button6.onClicked: color = "purple"
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("u pressed this button")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
