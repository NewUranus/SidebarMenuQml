import QtQuick 2.12
import QtQuick.Window 2.12

/*
 *有用的快捷化方式：ctrl+a,ctrl+i
 */

Window {
    visible: true
    width: 1400
    height: 800
    title: qsTr("Sidebar Menu")
    //默认背景颜色
    color: "#262940"
    flags: Qt.Window | Qt.FramelessWindowHint
    //sidebar
    /*
     *自定义的组件，需要大写开头，否则无法引用
     */
    MenuBar
    {
        //anchors.centerIn: parent
    }


}
