import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    title: qsTr("Hello World")
    width: 580
    height: 400
    visible: true
    property var add: 0
    property var toggle: 0

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

    RowLayout {
        id: adder
        anchors.left: parent.left
        anchors.margins: 10
        anchors.top: parent.top
        anchors.topMargin: 5
        Button {
            id: addButton
            text: qsTr("oppover")
            onClicked: { add = add + 1 ; textField.text = add.toString()  }
        }
        TextField {
            id: textField
            horizontalAlignment: TextInput.AlignHCenter
            anchors.left: addButton.right
            anchors.margins: 5
            text: qsTr( "0" )

        }
        Button {
            id: negButton
            anchors.left: textField.right
            anchors.margins: 5
            text: qsTr("nedover")
            onClicked: { add = add - 1; textField.text = add.toString() }
        }
    }

    RowLayout {
        id: selma
        anchors.left: adder.left
        anchors.top: adder.bottom
        anchors.topMargin: adder.anchors.topMargin
        Button {
            text: "Selma"
            onClicked: { toggle = !toggle; toggle===true ? selmaField.text = "er fin" :
                                                          selmaField.text = "Selmaaaaa"; }
        }
        TextField {
            id: selmaField
            text: "er  fin"
            horizontalAlignment: TextInput.AlignHCenter
        }
    }

    ListModel {
        id: family
        ListElement { name: "Sigurd" ;  age: 43 }
        ListElement { name: "Guro";     age: 38 }
        ListElement { name: "Sander";   age: 13 }
        ListElement { name: "Selma";    age: 6 }
        ListElement { name: "Sofus";   age: 1 }
        ListElement { name: "Emma";    age: 1 }

    }

    TableView {
        id: familyView2
        height: 80
        width: 200
        anchors.top: familyView.top
       // anchors.topMargin: 10
        anchors.left: familyView.right
        anchors.leftMargin: 10
        model: family
        TableViewColumn {
            role: "name"
            title: "Name"
            width: familyView2.width / 2
        }
        TableViewColumn {
            role: "age"
            title: "Age"
            width: familyView2.width / 2
        }

    }

    SplitView {
        id: familyView
        height: 80
        width: 200
        anchors.top: selma.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        TableView {
            id: nameView
            model: family
            width: familyView.width / 2
            TableViewColumn {
                role: "name"
                title: "Name"

            }

        }
        TableView {
            id: ageView
            model: family
           // anchors.left: nameView.right
            width: familyView.width / 2
            TableViewColumn {
                role: "age"
                title: "Age"
     //           width: familyView.width / 2
            }

        }
    }
 /*   MainForm {
        anchors.top: familyView.bottom
        width: parent.width
        height: 10
        anchors.topMargin: adder.anchors.topMargin
 //       button1.onClicked: messageDialog.show(qsTr("U lost"))
        button1.onClicked: color = "green"
        button2.onClicked: messageDialog.show(qsTr("Right answer"))
        button3.onClicked: color = "blue"
        button4.onClicked: messageDialog.show(qsTr("Explosion"))
        button5.onClicked: messageDialog.show(qsTr("Selma er super pen"))
        button6.onClicked: color = "purple"
    }
*/
    MessageDialog {
        id: messageDialog
        title: qsTr("u pressed this button")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
