import QtQuick 2.14
import QtQuick.Controls 2.12
import "../Components"

Item {
    id : item_Mydevice
    width: main_Window.width  // 640
    height: main_Window.height * (0.292)  //140

    property string pr_varString_
    property var pr_varIconPath
    property real pr_s32Value

    Rectangle {
        id : rect_Minus
        width: main_Window.width * (0.0625) //40
        height: main_Window.height * (0.084) //40
        color: "#26272c"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: main_Window.width * (0.0625) //45
        border.width: 2
        border.color: "#9450e3"
        radius: main_Window.width * (0.0078) //5
        Text {
            id: txt_Minus
            color: "#ffffff"
            text: qsTr("-")
            anchors.bottomMargin: main_Window.width * (0.0078) //5
            font.pointSize: main_Window.width * (0.039) //25
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
        }

        MouseArea {
            id : ma_Minus
            anchors.fill: parent
            onClicked: {
                scaleAnim_Controlrects.target = rect_Minus
                pr_s32Value = slider.value -=3
                scaleAnim_Controlrects.running = true
            }
        }
    }

    Slider {
        id : slider
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: rect_Minus.right
        anchors.leftMargin: main_Window.width * (0.039) //25
        from: 15
        value: pr_s32Value?pr_s32Value:10
        to:100

        background: Rectangle {
            x: slider.leftPadding
            y: slider.topPadding + slider.availableHeight / 2 - height / 2
            implicitWidth: main_Window.width * (0.39) //250
            implicitHeight: main_Window.width * (0.0078) //5
            width: slider.availableWidth
            height: implicitHeight
            radius: main_Window.width * (0.003125) //2
            color: "#bdbebf"

            Rectangle {
                width: slider.visualPosition * parent.width
                height: parent.height
                color: "#9450e3"
                radius: main_Window.width * (0.003125) //2
            }
        }
    }

    Rectangle {
        id : rect_Plus
        width: main_Window.width * (0.0625) //40
        height: main_Window.height * (0.084) //40
        color: "#26272c"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: slider.right
        anchors.leftMargin: main_Window.width * (0.039) //25
        border.width: 2
        border.color: "#9450e3"
        radius: main_Window.width * (0.0078) //5
        Text {
            id: txt_Plus
            color: "#ffffff"
            text: qsTr("+")
            anchors.bottomMargin: main_Window.height * (0.0084) //4
            font.pointSize: main_Window.width * (0.025) //25
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
        }
        MouseArea {
            id : ma_Plus
            anchors.fill: parent
            onClicked: {
                scaleAnim_Controlrects.target = rect_Plus
                pr_s32Value = slider.value +=3
                scaleAnim_Controlrects.running = true
            }
        }
    }

    Buttons {
        id : comp_Button
        width: main_Window.width * (0.195) //125
        height: main_Window.height * (0.2292) //110
        pr_varIcon: pr_varIconPath //"../ASSETS/Lights.png"
        pr_varString: pr_varString_
        pr_intOpacity : slider.value / 100
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: rect_Plus.right
        anchors.leftMargin: main_Window.width * (0.09375) //60
    }

    ScaleAnimator {
        id : scaleAnim_Controlrects
        from: 1
        to: 0.85
        duration: 100
        running: false
        onFinished: {
            scaleAnim_Controlrects_.target = scaleAnim_Controlrects.target
            scaleAnim_Controlrects_.running = true
        }
    }

    ScaleAnimator {
        id : scaleAnim_Controlrects_
        from: 0.85
        to: 1
        duration:100
        running: false
    }
}
