import QtQuick 2.0

Rectangle {

    id: menuitem
    width: 100
    height: 100
    property var menu_name: ""
    property var image_source: ""
    property bool is_selected: false
    signal image_enter();

    /*
      defalt: false
    */
    color: "transparent"
    border.color: "green" //设置边框的颜色
    border.width: 1       //设置边框的大小

    function onMouseEnter()
    {
        item_name_text.color = "#f4cf00";
        item_name_text.visible = true
    }

    function onMouseExit()
    {
        item_name_text.color = "#white";
        item_name_text.visible = false
    }

    function onSelected()
    {
        item_selected_rect.visible = true
    }

    MouseArea
    {
        hoverEnabled: true
        anchors.fill: parent
        width: parent.width
        height: parent.height
        onEntered: {
            item_name_text.color = "#f4cf00";
            item_name_text.visible = true
        }
        onExited: {
            item_name_text.color = "#white";
            item_name_text.visible = false
        }
    }

    Rectangle
    {
        id: item_selected_rect
        width: 10
        height: parent.height
        color: "#f4cf00"
    }

    function image_enter_func()
    {
        console.log("image hover")
    }

    Image {
        id: item_image
        width: 32
        height: 32
        source: image_source
        anchors.horizontalCenter: parent.horizontalCenter
        MouseArea
        {
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            onEntered:
            {
                item_name_text.color = "white";
                //item_image.source = "image/home_hover_32x.png"
                color:"#f4cf00"
            }
        }
    }

    /*
     *hover:#f4cf00(244 207 0)
    */
    Text {
        id: item_name_text
        text: menu_name
        color: "white"
        anchors.top: item_image.bottom
        anchors.horizontalCenter: item_image.horizontalCenter
        MouseArea
        {
            id: text_mouse
            anchors.fill: parent
        }
    }

    Component.onCompleted: {
        item_name_text.color = "#white";
        item_name_text.visible = false
        image_enter.bind(image_enter_func)
        item_selected_rect.visible = is_selected?true:false;
    }

}
