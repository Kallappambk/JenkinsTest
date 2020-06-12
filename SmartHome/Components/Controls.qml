import QtQuick 2.14
import "../Components"
import QtQuick.Controls 2.12

Item {
    id : item_Controls
    width: main_Window.width  // 640
    height: main_Window.height  //480

    property int pr_s32ListModelNum : pr_s32ModelNumber

    onPr_s32ListModelNumChanged: {
        getModelName();
    }

    function getModelName()
    {
        switch(pr_s32ModelNumber){
        case 1 : listView.model = list_Light ; break;
        case 2 : listView.model = list_Fan ; break ;
        case 3 : listView.model = list_Sound; break;
        case 4 : listView.model = list_Light ; break;
        case 5 : listView.model = list_Fan ; break ;
        case 6 : listView.model = list_Sound; break;
        }
    }

    Rectangle {
        id : rect_BackGround
        anchors.fill: parent
        radius: 5
        color: "#2e2e38"
    }

    ListView {
        id: listView
        width: parent.width
        height: parent.height
        delegate: MyDevice {
                        id : kk
                        pr_s32Value : value
                        pr_varString_ : name
                        pr_varIconPath : icon
                    }
    }


    ListModel {
        id : list_Light
                ListElement {
                    name: "Ceiling Light"
                    value : 25
                    icon : "../ASSETS/Ceiling_Light.png"
                }

                ListElement {
                    name: "Wall Light"
                    value : 45
                    icon : "../ASSETS/Wall_Light.png"
                }

                ListElement {
                    name: "Floor Light"
                    value : 100
                    icon : "../ASSETS/Lights.png"
                }

                ListElement {
                    name: "Table Lamp"
                    value : 76
                    icon : "../ASSETS/Table_Lamp.png"
                }
                ListElement {
                    name: "Desk Lamp"
                    value : 50
                    icon : "../ASSETS/Reading_lamp.png"
                }
            }

    ListModel {
        id : list_Fan
               ListElement {
                   name: "Cooler"
                   value : 25
                   icon : "../ASSETS/Cooler.png"
               }

               ListElement {
                   name: "Ceiling Fan"
                   value : 45
                   icon : "../ASSETS/Ceiling_Fan.png"
               }

               ListElement {
                   name: "Table Fan"
                   value : 100
                   icon : "../ASSETS/Table_FAn.png"
               }

               ListElement {
                   name: "AC"
                   value : 76
                   icon : "../ASSETS/AC.png"
               }
               ListElement {
                   name: "Heat pump"
                   value : 50
                   icon : "../ASSETS/Heat_Pump.png"
               }
           }

    ListModel {
        id : list_Sound

               ListElement {
                   name: "Television"
                   value : 25
                   icon : "../ASSETS/TV.png"
               }

               ListElement {
                   name: "Music Player"
                   value : 45
                   icon : "../ASSETS/Music.png"
               }

               ListElement {
                   name: "Radio"
                   value : 100
                   icon : "../ASSETS/Radio.png"
               }
               ListElement {
                   name: "Speakers"
                   value : 65
                   icon : "../ASSETS/Speaker.png"
               }
           }
}


/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
