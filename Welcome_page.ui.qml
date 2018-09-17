import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    width: 701
    height: 450
    font.pointSize: 11

    header: Label {
        text: qsTr("Welcome_page")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Welcome_page.")
        anchors.centerIn: parent
    }
}
