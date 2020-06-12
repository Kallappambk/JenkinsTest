import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id : item_Splash
    width: main_Window.width  // 640
    height: main_Window.height  //480

    Rectangle {
        id : rect_BackGround
        anchors.fill: parent
        radius: item_Splash.width * (0.0079) //5
        color: "#2e2e38"
    }

    Rectangle {
        id : rect_WelComeBox
        width: rect_BackGround.width * 0.8
        height: rect_BackGround.height * 0.2
        radius: item_Splash.width * (0.0125) //8
        border.color: "#9450e3"
        anchors.top: parent.top
        anchors.topMargin: item_Splash.height * (0.03125) //15
        anchors.horizontalCenter: parent.horizontalCenter
        color: "#26272c"
        border.width: 5
    }

    Text {
        id: txt_WelComeText
        text: qsTr("Welcome Home!")
        font.pointSize: item_Splash.width * (0.03125) //20
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.fill: rect_WelComeBox
        color: "#c9c9cc"
    }

    Image {
        id : img_HomeIcon
        source: "../ASSETS/home1.png"
        width: rect_BackGround.width * 0.3
        height: rect_BackGround.height * 0.4
        scale: 1
        anchors.verticalCenterOffset: item_Splash.height * (0.0209)  //10
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        smooth: true
    }
}


