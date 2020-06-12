import QtQuick 2.14
import "../Components"

Item {
    id : item_Rooms
    width: main_Window.width //640
    height: main_Window.height //480

    property var pr_s32ListModel

    function onClickSignal(){
        pr_varHeaderTextBackup = pr_varHeaderText
    }

    Rectangle {
        id : rect_BackGround
        anchors.fill: parent
        radius: 5
        color: "#2e2e38"
    }

    Grid {
        id : grd
        anchors.fill: parent
        rows: 2
        columns: 3
        topPadding: item_Rooms.height * (0.1) //50
        leftPadding: item_Rooms.width * (0.1) //65
        rowSpacing: item_Rooms.height * (0.1) //50
        columnSpacing: item_Rooms.width * (0.09375) //60

        Buttons {
            id : _1
            width: item_Rooms.width * (0.2) //130
            height: item_Rooms.height * (0.27) //130
            pr_varString : "Lights"
            pr_varIcon: "../ASSETS/Lights.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_1
                anchors.fill: parent
                onClicked: {
                    onClickSignal();
                    pr_s32ModelNumber = 1
                    pr_varHeaderText = "Lights"
                    scaleAnim_Buttons.target = _1
                    scaleAnim_Buttons.running = true
                }
            }
        }
        Buttons {
            id : _2
            width: item_Rooms.width * (0.2) //130
            height: item_Rooms.height * (0.27) //130
            pr_varString : "Conditioning"
            pr_varIcon: "../ASSETS/Conditioning.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_2
                anchors.fill: parent
                onClicked: {
                    onClickSignal();
                    pr_s32ModelNumber = 2
                    pr_varHeaderText = "Conditioning"
                    scaleAnim_Buttons.target = _2
                    scaleAnim_Buttons.running = true
                }
            }
        }
        Buttons {
            id : _3
            width: item_Rooms.width * (0.2) //130
            height: item_Rooms.height * (0.27) //130
            pr_varString : "Entertainment"
            pr_varIcon: "../ASSETS/Speaker.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_3
                anchors.fill: parent
                onClicked: {
                    onClickSignal();
                    pr_s32ModelNumber = 3
                    pr_varHeaderText = "Entertainment"
                    scaleAnim_Buttons.target = _3
                    scaleAnim_Buttons.running = true
                }
            }
        }

        Buttons {
            id : _4
            width: item_Rooms.width * (0.2) //130
            height: item_Rooms.height * (0.27) //130
            pr_varString : "Windows"
            pr_varIcon: "../ASSETS/Window.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_4
                anchors.fill: parent
                onClicked: {
                    pr_s32ModelNumber = 4
                    pr_varHeaderText = "Windows"
                    scaleAnim_Buttons.target = _4
                    scaleAnim_Buttons.running = true
                }
            }
        }
        Buttons {
            id : _5
            width: item_Rooms.width * (0.2) //130
            height: item_Rooms.height * (0.27) //130
            pr_varString : "Alarms"
            pr_varIcon: "../ASSETS/Alarm.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_5
                anchors.fill: parent
                onClicked: {
                    onClickSignal();
                    pr_s32ModelNumber = 5
                    pr_varHeaderText = "Alarms"
                    scaleAnim_Buttons.target = _5
                    scaleAnim_Buttons.running = true
                }
            }
        }
        Buttons {
            id : _6
            width: item_Rooms.width * (0.2) //130
            height: item_Rooms.height * (0.27) //130
            pr_varString : "Safety"
            pr_varIcon: "../ASSETS/Safety.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_6
                anchors.fill: parent
                onClicked: {
                    onClickSignal();
                    pr_s32ModelNumber = 6
                    pr_varHeaderText = "Safety"
                    scaleAnim_Buttons.target = _6
                    scaleAnim_Buttons.running = true
                }
            }
        }
    }

    ScaleAnimator {
        id : scaleAnim_Buttons
        from: 1
        to: 0.85
        duration: 100
        running: false
        onFinished: {
            scaleAnim_Buttons_.target = scaleAnim_Buttons.target
            scaleAnim_Buttons_.running = true
        }
    }

    ScaleAnimator {
        id : scaleAnim_Buttons_
        from: 0.85
        to: 1
        duration:100
        running: false
        onFinished: {
            mainStackView.push(controls)
        }
    }
}


