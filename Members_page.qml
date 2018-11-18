import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    id: page
    width: 800
    height: 480

    header: Label {
        text: qsTr("We..")
        font.italic: true
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10

        Text {
            id: text1
            x: 72
            y: 13
            width: 72
            height: 25
            text: qsTr("☺")
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 24
        }

    }
    Member_frame {
        id: kingini
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: rectangle
        x: 760
        y: -85
        width: 131
        height: 150
        color: "#cc3399"
        antialiasing: true
        opacity: 0.6
        rotation: -36
    }

    Rectangle {
        id: rectangle1
        x: 677
        y: -123
        width: 128
        height: 128
        color: "#ff6666"
        antialiasing: true
        scale: 1
        opacity: 0.6
        rotation: -36
    }
}
