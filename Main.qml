import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

Window {
    width: 480
    height: 480
    visible: true
    title: qsTr("Hello World")

    Theme {
        anchors.fill: parent
    }

    ResultArea {
        anchors.horizontalCenter: parent.horizontalCenter

    }
}
