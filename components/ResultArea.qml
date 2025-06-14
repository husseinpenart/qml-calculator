import QtQuick

Rectangle {
    id: resultArea
    width: parent.width
    height: 100
    color: "black"
    radius: 5
    border.color: "white"
    border.width: 1

    property string resultText: "0"

    Text {
        id: resultTextDisplay
        text: resultArea.resultText
        color: "white"
        font.pixelSize: 36
        font.bold: true
        font.family: "monospace"

        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 20
        anchors.bottomMargin: 10
    }
}
