import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtQuick.Shapes 1.12

ColumnLayout {
    //width: 100
    //height: parent.height
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    //Layout.alignment: Qt.AlignCenter
    property var selected_index: 0

    id: menu_item_area
    MenuItem
    {
        is_selected: true
        menu_name: "Home"
        image_source: "svg/home.svg";
//        onMouse_enter:
//        {
//            //test = menu_name;
//        }

    }

    MenuItem
    {
        menu_name: "Game Center"
        image_source: "svg/shoppingbag.svg"
    }

    MenuItem
    {
        menu_name: "Mine"
        image_source: "svg/like.svg"
    }

    MenuItem
    {
        menu_name: "Setting"
        image_source: "svg/preferences.svg"
    }

    MouseArea
    {
        onEntered:
        {
//            for(var item in menu_item_area.children)
//            {
//                console.log(item.objectName);
//                if(item.objectName === "side_menu_item")
//                {
//                    //item.
//                    //(MenuItem)item.item_name_text.visible
//                }
//            }
        }
    }

    Text {
        id: test
        text: qsTr("text")
    }




    //    Shape{
    //        anchors.fill: parent
    //        ShapePath
    //        {
    //            strokeColor: "white"
    //            strokeWidth: 1
    //            strokeStyle: ShapePath.SolidLine
    //            startX: 20
    //            startY: 0
    //            PathLine{
    //                x:100
    //                y:100
    //            }
    //            PathLine{
    //                x:100
    //                y:30
    //            }
    //        }
    //    }
}
