import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
    property real maxPoints: 0
    property real points: 0
    width: 100
    height: 100
    TextInput {
        id: comments
        width: parent.width * 0.8
        height: parent.height
        text: qsTr("comments")

    }
    TextInput {
        width: parent.width - comments.width
        height: parent.height
        anchors.left: comments.right
        text: parent.points.toString()
        onAccepted: { parent.points = toPoints( text ) ; }
    }
    function toPoints(input) {
        var num = parseFloat(input);
        return isNaN(num) ? 0 : num ;
    }

}


