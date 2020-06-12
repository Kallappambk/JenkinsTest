import QtQuick 2.14
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0
import "../Components"

Item {
    id : item_HomePage
    width: main_Window.width  // 640
    height: main_Window.height  //480

    property string pr_varScalingTarget

    function onClickSignal(){
        pr_varHeaderTextBackup = pr_varHeaderText
    }

    Rectangle {
        id : rect_BackGround
        anchors.fill: parent
        radius: item_HomePage.width * (0.0078) //5
        color: "#2e2e38"
    }

    Grid {
        id : grd_Rooms
        anchors.fill: parent
        rows: 2
        columns: 3
        topPadding: item_HomePage.height * (0.1) //50
        leftPadding: item_HomePage.width * (0.1) //65
        rowSpacing: item_HomePage.height * (0.1) //50
        columnSpacing: item_HomePage.width * (0.09375) //60

        Buttons {
            id : _1
            width: item_HomePage.width * (0.2) //130
            height: item_HomePage.height * (0.27) //130
            pr_varString : "Living room"
            pr_varIcon: "../ASSETS/Living.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_1
                anchors.fill: parent
                onClicked: {
                    onClickSignal();
                    pr_varHeaderText = _1.pr_varString
                    scaleAnim_Buttons.target = _1
                    scaleAnim_Buttons.running = true
                }
            }
        }

        Buttons {
            id : _2
            width: item_HomePage.width * (0.2) //130
            height: item_HomePage.height * (0.27) //130
            pr_varString : "Bedroom"
            pr_varIcon: "../ASSETS/Bedroom.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_2
                anchors.fill: parent
                onClicked: {
                    onClickSignal();
                    pr_varHeaderText = _2.pr_varString
                    scaleAnim_Buttons.target = _2
                    scaleAnim_Buttons.running = true
                }
            }
        }

        Buttons {
            id : _3
            width: item_HomePage.width * (0.2) //130
            height: item_HomePage.height * (0.27) //130
            pr_varString : "Dining hall"
            pr_varIcon: "../ASSETS/Dining.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_3
                anchors.fill: parent
                onClicked: {
                    pr_varHeaderText = _3.pr_varString
                    scaleAnim_Buttons.target = _3
                    scaleAnim_Buttons.running = true
                }
            }
        }

        Buttons {
            id : _4
            width: item_HomePage.width * (0.2) //130
            height: item_HomePage.height * (0.27) //130
            pr_varString : "Kitchen"
            pr_varIcon: "../ASSETS/Kitchen.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_4
                anchors.fill: parent
                onClicked: {
                    pr_varHeaderText = _4.pr_varString
                    scaleAnim_Buttons.target = _4
                    scaleAnim_Buttons.running = true
                }
            }
        }

        Buttons {
            id : _5
            width: item_HomePage.width * (0.2) //130
            height: item_HomePage.height * (0.27) //130
            pr_varString : "Bath room"
            pr_varIcon: "../ASSETS/Bathroom.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_5
                anchors.fill: parent
                onClicked: {
                    onClickSignal();
                    pr_varHeaderText = _5.pr_varString
                    scaleAnim_Buttons.target = _5
                    scaleAnim_Buttons.running = true
                }
            }
        }

        Buttons {
            id : _6
            width: item_HomePage.width * (0.2) //130
            height: item_HomePage.height * (0.27) //130
            pr_varString : "Office"
            pr_varIcon: "../ASSETS/Working.png"
            pr_intOpacity: 1
            MouseArea {
                id : ma_6
                anchors.fill: parent
                onClicked: {
                    onClickSignal();
                    pr_varHeaderText = _6.pr_varString
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
        onFinished: mainStackView.push(my_room)
    }
}

