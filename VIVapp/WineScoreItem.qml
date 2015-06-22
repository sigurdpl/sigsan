import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

ColumnLayout {
    id: wineItem
    width: 150
    property alias wineName: wineItemName.name
    property var scoreHeigthList: [50, 50, 50, 50 , 50, 50]
    Rectangle {
        id: wineItemName
        property string name: "wine"
        width: parent.width
        height: scoreHeigthList[0]
        color: "lightyellow"
        onNameChanged: textName.text = name
        Text {
            id: textName
            anchors.centerIn: parent
            text: "wine"
            font.pixelSize: 24

        }
    }
    WineTasteParameterItem  {
        id: wineColor
        maxPoints: 4;
        width: parent.width;
        height: parent.scoreHeigthList[1]
        anchors.top: wineItemName.bottom
        anchors.topMargin: 5
    }
    WineTasteParameterItem  {
        id: wineSmell
        maxPoints: 6;
        width: parent.width;
        height: parent.scoreHeigthList[2]
        anchors.top: wineColor.bottom
        anchors.topMargin: 5
    }
    WineTasteParameterItem  {
        id: wineTaste
        maxPoints: 8;
        width: parent.width;
        height: parent.scoreHeigthList[3]
        anchors.top: wineSmell.bottom
        anchors.topMargin: 5
    }
    WineTasteParameterItem  {
        id: wineOverall
        maxPoints: 4;
        width: parent.width;
        height: parent.scoreHeigthList[4]
        anchors.top: wineTaste.bottom
        anchors.topMargin: 5
    }
    Rectangle {
        id: winePoints
        width: parent.width
        height: parent.scoreHeigthList[5]
        anchors.top: wineOverall.bottom
        anchors.topMargin: 5
        color: "lightgrey"
        property real totalPoints: 0
        property bool newPoint: false
        onNewPointChanged:  {
            totalPoints = wineColor.points + wineTaste.points +
                    wineSmell.points + wineOverall.points ;
            newPoint = false;
        }
        Text {
            anchors.centerIn: parent
            text: parent.totalPoints.toString()
        }
    }
}
