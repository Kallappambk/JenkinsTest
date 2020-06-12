import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id : rect_Button
    color: "#26272c"
    border.color: "#9450e3"
    radius: main_Window.height * (0.01) //5
    border.width: main_Window.height * (0.0042) //2

    property string pr_varString
    property var pr_varIcon
    property real pr_intOpacity

    Image {
        id : img_ObjectIcon
        source: pr_varIcon
        width: parent.width * 0.5
        height: parent.height * 0.5
        anchors.verticalCenterOffset: -main_Window.height * (0.015) //-15
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        opacity: pr_intOpacity
    }

    Text {
        id: txt_ObjectText
        text: pr_varString
        anchors.bottom: parent.bottom
        anchors.bottomMargin: rect_Button.height * (0.12) //10
        font.pointSize: rect_Button.height * (0.065) //10
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignHCenter
        width: rect_Button.width
        height: rect_Button.height * (0.27) //130
        color: "#ffffff"
        anchors.horizontalCenter: parent.horizontalCenter
        opacity: pr_intOpacity
        clip: true
        wrapMode: Text.WordWrap
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_height:130}
}
##^##*/
