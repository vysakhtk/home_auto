import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.2

Page {
    id: page
    width: 800
    height: 480
    font.family: "Courier"
    font.pointSize: 26

    RoundButton {
        id: roundButton
        x: 48
        y: 25
        width: 33
        height: 34
        font.pixelSize: 20
        text: ">"
        onClicked: drawer.open();
    }

    Rectangle {
        id: rectangle
        x: 184
        y: 103
        width: 508
        height: 283
        color: "transparent"
        anchors.verticalCenterOffset: 34
        anchors.verticalCenter: parent.verticalCenter

        Column {
            id: column
            anchors.fill: parent

            Text {
                id: text1
                width: 508
                height: 160
                text: qsTr("Hi Dude!!")
                font.italic: false
                padding: 0
                font.bold: false
                font.family: "Ubuntu"
                fontSizeMode: Text.Fit
                font.pointSize: 11
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 60
                font.pixelSize: 103
            }

            Text {
                id: text2
                text: qsTr("        Welcome to Vanika")
                font.family: "Ubuntu"
                font.italic: false
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                anchors.top: text1.bottom
                anchors.topMargin: -60
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 67
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 90
                font.pixelSize: 39
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 467
        y: 25
        width: 177
        height: 34
        color: "#ffffff"
        anchors.right: rectangle.right
        anchors.rightMargin: 0

        SwitchDelegate {
            id: switchDelegate
            text: checked ? " Auto" : "Manual"
            anchors.leftMargin: 91
            anchors.topMargin: 0
            anchors.rightMargin: -77
            anchors.bottomMargin: 0
            font.pixelSize: 18
            anchors.fill: parent
            focusPolicy: Qt.StrongFocus
            wheelEnabled: false
            topPadding: 12
            opacity: 1
            autoExclusive: false
        }
    }
}
