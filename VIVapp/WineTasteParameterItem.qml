import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
    property real maxPoints: 0
    property real points: 0
    width: 100
    height: 100
    TextField {
        id: comments
        width: parent.width * 0.8
        height: parent.height
        placeholderText: qsTr("comments")

    }
    TextField {
        width: parent.width - comments.width
        height: parent.height
        anchors.left: comments.right
        placeholderText: parent.points.toString()
       // onAccepted: parent.points = points(text)
    }
   // function points(input) { return parseInt(input) ; }

}


