import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.12
import "Components"

ApplicationWindow {
    id : main_Window
    width: 640
    height: 480
    visible: true
    color: "black"
    title: qsTr("Smart home")
//    visibility: "FullScreen"

    property int pr_s32Count: 0
    property var pr_varHeaderText : "My Rooms"
    property int pr_s32ModelNumber : 0
    property var pr_varHeaderTextBackup

    header: Rectangle {
        id : rect_Header
        width: main_Window.width
        height: 0.1 * main_Window.width
        color: "#2e2e38"
        anchors.top: main_Window.top
        anchors.horizontalCenter: main_Window.horizontalCenter

        Image {
            id: img_LeftIcon
            source: "ASSETS/left-solid.png"
            width: main_Window.width * (0.0625) //40
            height: main_Window.height * (0.084) //40
            anchors.verticalCenter: rect_HomeHeader.verticalCenter
            anchors.right: rect_HomeHeader.left
            anchors.rightMargin: main_Window.width * (0.14) //90
            rotation: 180
            visible: (mainStackView.currentItem == splash_screen) ? false : true
        }

        Rectangle {
            id : rect_HomeHeader
            width: main_Window.width * (0.39) //250
            height: main_Window.height * (0.1) //50
            color: "#26272c"
            anchors.verticalCenter: rect_Header.verticalCenter
            anchors.horizontalCenter: rect_Header.horizontalCenter
            visible: (mainStackView.currentItem == splash_screen) ? false : true
        }

        Text {
            id: name
            text: pr_varHeaderText
            anchors.fill: rect_HomeHeader
            font.pointSize: main_Window.height * (0.025) //12
            font.bold: true
            anchors.verticalCenter: rect_Header.verticalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            color: "#c9c9cc"
            visible: (mainStackView.currentItem == splash_screen) ? false : true

        }

        MouseArea {
            id : ma_rectHeader
            anchors.fill: name
            onClicked: {
                if(mainStackView.currentItem !== home_screen){
                    mainStackView.pop();
                }

                switch(mainStackView.currentItem){
                case home_screen:
                    pr_varHeaderText = "My Rooms"
                    break;
                default :
                    pr_varHeaderText = pr_varHeaderTextBackup
                    break;
                }
            }
            visible: (mainStackView.currentItem == splash_screen) ? false : true
        }

        Image {
            id: img_RightIcon
            source: "ASSETS/left-solid.png"
            width: main_Window.width * (0.0625) //40
            height: main_Window.height * (0.084) //40
            anchors.verticalCenter: rect_HomeHeader.verticalCenter
            anchors.left: rect_HomeHeader.right
            anchors.leftMargin: main_Window.width * (0.14) //90
            visible: (mainStackView.currentItem == splash_screen) ? false : true
        }

        Rectangle {
            id : rect_Seperator
            width: main_Window.width
            height: 2
            color: "#26272c"
            anchors.bottom: parent.bottom
            visible: (mainStackView.currentItem == splash_screen) ? false : true
        }
    }

    StackView{
        id : mainStackView
        width: main_Window.width
        height: main_Window.height * 0.9
        anchors.top: rect_Header.bottom
        anchors.bottom: main_Window.bottom
        anchors.left: main_Window.left
        anchors.right: main_Window.right
        initialItem: Rectangle {
            color: "#2e2e38"
        }
        Component.onCompleted: mainStackView.push(splash_screen)
        clip: true
    }

    Splash{
        id : splash_screen
        visible: false
    }

    HomePage {
        id : home_screen
        visible: false
    }

    MyRoom {
        id : my_room
        visible: false
    }

    Controls {
        id : controls
        visible: false
    }

    Timer {
        id : timer_Splash
        interval: 13000
        repeat: true
        running: true
        onTriggered: {
            mainStackView.push(home_screen)
        }
    }
}
