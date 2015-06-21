import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.1


ApplicationWindow {
    title: qsTr("VIVapp")
    width: 640
    height: 480
    visible: true

    toolBar: ToolBar {
        RowLayout {
            id: toolbar
            anchors.fill: parent
            ToolButton {
                id: firstbutton
                iconSource: "/home/sigurd/Documents/VIVapp.jpg"
            }
        }
    }

    RowLayout {
        anchors.fill: parent
        property var heightList: [50, 75, 75, 75, 75, 50]
        TasteParameterDescription
        {
            id: tasteDescription
            anchors.top: parent.top
            width: 100
        }

        RowLayout {
            id: winesToEvaluate
            anchors.left: tasteDescription.right
            anchors.leftMargin: 5
            anchors.top: parent.top
            WineScoreItem { wineName: "rioja" ;/*scoreHeigthList: parent.heightList */}
            WineScoreItem { wineName: "barolo" ; /*scoreHeigthList: parent.heightList */}
            WineScoreItem { wineName: "barbera" ;/* scoreHeigthList: parent.heightList */}
            WineScoreItem { wineName: "brunello" ; /*scoreHeigthList: parent.heightList */}
            WineScoreItem { wineName: "chardonnay"; /*scoreHeigthList: parent.heightList */}
            WineScoreItem { wineName: "bourgogne" ; /*scoreHeigthList: parent.heightList */}

        }

    }
}
