import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.VirtualKeyboard 2.3

ApplicationWindow {
    id: window
    visible: true
    width: 800
    height: 480
    title: qsTr("Tabs")

    Drawer {
        id: drawer
        width: 0.30*window.width
        height: window.height
        bottomPadding: 0
        bottomMargin: 0

        Rectangle {
            id: rectangle_drawer
            color: "white"
            anchors.fill: parent
            Label{
                id:creator_label
                width: 186
                height: 16
                text: "Designed and Developed"
                font.italic: true
                font.bold: true
                font.family: "Times New Roman"
                horizontalAlignment: Text.AlignHCenter
                anchors.top: parent.top
                anchors.topMargin: 0.22 * rectangle_drawer.height
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Image {
                id: image_dev
                source: "vtk.png"
                anchors.top: parent.top
                anchors.topMargin: 0.30 * rectangle_drawer.height
                anchors.horizontalCenter: parent.horizontalCenter
                width: 145
                height: 145
                visible: true
                antialiasing: false
            }
            Label{
                id: creator_name
                width: 186
                height: 33
                text: " Vtk ☺"
                font.bold: true
                font.pointSize: 21
                font.family: "Verdana"
                horizontalAlignment: Text.AlignHCenter
                anchors.top: parent.top
                anchors.topMargin: 0.65 * rectangle_drawer.height
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    SwipeView {
        id: swipeView
        font.italic: false
        font.bold: false
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Loader
        {
            id: loader
            active: SwipeView.isCurrentItem||SwipeView.isPreviousItem||SwipeView.isNextItem
            sourceComponent: Welcome_page {
                anchors.fill:window
            }
        }
        Loader
        {
            active: SwipeView.isCurrentItem||SwipeView.isPreviousItem||SwipeView.isNextItem
            sourceComponent: Members_page {
                anchors.fill:window
            }
        }

        Loader
        {
            active: SwipeView.isCurrentItem||SwipeView.isPreviousItem||SwipeView.isNextItem
            sourceComponent:PhotoGallery_page {
                anchors.fill:window
            }
        }
        Loader
        {
            active: SwipeView.isCurrentItem||SwipeView.isPreviousItem||SwipeView.isNextItem
            sourceComponent:Controls_page {
                anchors.fill:window
            }
        }
        Loader
        {
            active: SwipeView.isCurrentItem||SwipeView.isPreviousItem||SwipeView.isNextItem
            sourceComponent:Events_page {
                anchors.fill:window
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        background: Rectangle {
            color: "transparent"
        }
        TabButton {
            text: qsTr("Welcome")
            background: Rectangle
            {
                color: tabBar.currentIndex == 0 ? "transparent" : "#00b33c"
            }
        }
        TabButton {
            text: qsTr("Members")
            background: Rectangle
            {
                color: tabBar.currentIndex == 1 ? "transparent" : "#00b33c"
            }
        }
        TabButton {
            text: qsTr("Photos")
            background: Rectangle
            {
                color: tabBar.currentIndex == 2 ? "transparent" : "#00b33c"
            }
        }
        TabButton {
            text: qsTr("Controls")
            background: Rectangle
            {
                color: tabBar.currentIndex == 3 ? "transparent" : "#00b33c"
            }
        }
        TabButton {
            text: qsTr("Events")
            background: Rectangle
            {
                color: tabBar.currentIndex == 4 ? "transparent" : "#00b33c"
            }
        }
    }

    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: window.height
        width: window.width
        height: 1
        visible: false

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }
}
