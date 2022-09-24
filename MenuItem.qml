import QtQuick 2.0

Rectangle {

    id: menuitem
    height: 100
    //property text menu_name: ""
    property var menu_name: ""
    Text {
        id: name
        text: menu_name
        //MouseArea.onHoveredChanged:
    }


}
