import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles 1.4

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("Events_page")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Events_page.")
        anchors.centerIn: parent
    }
}
