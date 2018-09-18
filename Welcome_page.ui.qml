import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    id: page
    width: 701
    height: 450
    font.family: "Courier"
    font.pointSize: 26

    Rectangle {
        id: rectangle
        x: 136
        y: 103
        width: 508
        height: 283
        color: "transparent"
        anchors.right: parent.right
        anchors.rightMargin: 57

        Column {
            id: column
            anchors.right: parent.right
            anchors.rightMargin: -5
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 8

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
                text: qsTr("         Welcome to Vanika")
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

    SwitchDelegate {
        id: switchDelegate
        x: 508
        y: 178
        width: 149
        height: 34
        font.pixelSize: 20
        text: qsTr("Auto")
        wheelEnabled: false
        topPadding: 12
        opacity: 1
        anchors.right: rectangle.right
        anchors.rightMargin: -14
        anchors.top: parent.top
        anchors.topMargin: 25
        autoExclusive: false
    }

    RoundButton {
        id: roundButton
        x: 49
        y: 25
        width: 33
        height: 34
        text: "+"
    }
}
