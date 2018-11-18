import QtQuick 2.0

Item {
    id: mem_frame
    width: 480
    height: 480

    Image {
        id: image
        x: 141
        width: 180
        height: 180
        anchors.horizontalCenterOffset: -6
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 52
        source: "vtk.png"
    }

    Text {
        id: text1
        x: 228
        width: 75
        height: 25
        text: qsTr("Kins")
        font.bold: true
        font.italic: true
        anchors.top: image.bottom
        anchors.topMargin: 1
        font.family: "Arial"
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenterOffset: -5
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 21
    }

    Text {
        id: text2
        x: 125
        width: 279
        height: 77
        text: qsTr("Kins, In short refer to kingini. Is the ealdest member")
        horizontalAlignment: Text.AlignHCenter
        anchors.top: text1.bottom
        anchors.topMargin: 18
        anchors.horizontalCenterOffset: 7
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 12
    }

}
