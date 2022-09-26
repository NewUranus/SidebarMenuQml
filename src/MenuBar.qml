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
        image_source: "svg/home.svg"
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

}
