import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.VirtualKeyboard 2.3

ApplicationWindow {
    id: window
    visible: true
    width: 700
    height: 450
    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Loader
        {
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
            color: "white"
        }

        TabButton {
            text: qsTr("Welcome_page")
            spacing: 5
            background: Rectangle {
                color: "#00b33c"
            }
        }
        TabButton {
            text: qsTr("Members_page")
            background: Rectangle {
                color: "#00b33c"
            }
        }
        TabButton {
            text: qsTr("PhotoGallery_page")
            background: Rectangle {
                color: "#00b33c"
            }
        }
        TabButton {
            text: qsTr("Controls_page")
            background: Rectangle {
                color: "#00b33c"
            }
        }
        TabButton {
            text: qsTr("Events_page")
            background: Rectangle {
                color: "#00b33c"
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
