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
    Image {
        id: bg
        anchors.fill: parent
        source: "image/bg_home.png"
    }
    //sidebar
    /*
     *自定义的组件，需要大写开头，否则无法引用
     */
    MenuBar
    {
        id: side_menubar
        //anchors.centerIn: parent
    }

    Rectangle
    {
        border.color: "red"
        border.width: 1
        //anchors.fill: parent
        width: parent.width - side_menubar.width
        height: parent.height
        anchors.left: side_menubar.right
        opacity: 0

        Rectangle
        {

        }
    }

//    Canvas {
//        anchors.fill: parent
//        onPaint: {
//            var ctx = getContext("2d");
//            ctx.reset();

//            var centreX = 0;
//            var centreY = height;
//            var radius= 50;

//            var gradient=ctx.createRadialGradient(centreX,centreY,0,centreX,centreY,radius);
//            gradient.addColorStop(0, '#0066cc');
//            gradient.addColorStop(1, '#e5f2ff');
//            ctx.fillStyle=gradient;
//            ctx.arc(centreX, centreY, width / 4, 0, Math.PI * 2, false);
//            ctx.fill();
//        }
//    }
}
