import QtQuick 2.0
import QtQuick.Layouts 1.3

ColumnLayout {
    //width: 100
    //height: parent.height
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    //Layout.alignment: Qt.AlignCenter
    property var selected_index: 0

    MenuItem
    {
        is_selected: true
        menu_name: "Home"
        image_source: "image/home_normal_32x.png"
    }

    MenuItem
    {
        menu_name: "Game Center"
        image_source: "image/game_center_normal_32x.png"
    }

    MenuItem
    {
        menu_name: "Mine"
        image_source: "image/mine_normal_32x.png"
    }

    MenuItem
    {
        menu_name: "Setting"
        image_source: "image/setting_normal_32x.png"
    }

}
