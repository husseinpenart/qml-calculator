import QtQuick

Rectangle {
    width: 640
    height: 300
    border.color: 'white'
    border.width: 2
    radius: 5
    color: 'black'

    Text {
        id: result
        text: qsTr("0")
        color: 'white'
        font.pixelSize: 25
        font.bold: true

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
    }
}
