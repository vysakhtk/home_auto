import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    width: 700
    height: 450
    title: "welcome_page"

    header: Label {
        text: qsTr("Page 1")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 1.")
        anchors.centerIn: parent
    }
}
