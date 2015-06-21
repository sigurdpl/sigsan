import QtQuick 2.0
import QtQuick.Controls 1.2

Rectangle {
    property real maxPoints: 0
    property real points: 0
    onPointsChanged: { winePoints.newPoint = true; pointsBox.text = points.toString(); }
    width: 100
    height: 100
    TextInput {
        id: comments
        width: parent.width * 0.8
        height: parent.height
        text: qsTr("comments")

    }
    TextInput {
        id: pointsBox
        width: parent.width - comments.width
        height: parent.height
        anchors.left: comments.right
        text: "0"
        onAccepted: { parent.points = toPoints( text, parent.maxPoints ) ; }
    }
    function toPoints(input, maxPoints) {
        var num = parseFloat(input);
        if ( isNaN(num) )
            return 0;
        if ( num > maxPoints || num < 0)
            return 0;
        return num ;
    }

}


