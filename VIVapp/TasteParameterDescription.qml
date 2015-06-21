import QtQuick 2.0
import QtQuick.Layouts 1.1

ColumnLayout {
    property int wineNameHeight: 50
    property int wineColorHeight: 50
    property int wineSmellHeight: 50
    property int wineTasteHeight: 50
    property int wineOverallHeight: 50

    Rectangle {
        width: 80
        height: parent.wineNameHeight
        Text {
            text: "Wines"
        }
    }
    Rectangle {
        width: 80
        height: parent.wineColorHeight
        Text {
            text: "Color (0-4)"
        }
    }
    Rectangle {
        width: 80
        height: parent.wineSmellHeight
        Text {
            text: "Smell (0-6)"
        }
    }
    Rectangle {
        width: 80
        height: parent.wineTasteHeight
        Text {
            text: "Taste (0-8)"
        }
    }
    Rectangle {
        width: 80
        height: parent.wineOverallHeight
        Text {
            text: "Overall (0-4)"
        }
    }

}
