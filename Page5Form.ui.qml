import QtQuick 2.10
import QtQuick.Controls 2.3

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("Page 5")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 5.")
        anchors.centerIn: parent
    }
}
