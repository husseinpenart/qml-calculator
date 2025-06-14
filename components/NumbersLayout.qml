import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    signal buttonPressed(string button)
    property var buttons: [
        "7", "8", "9", "/",
        "4", "5", "6", "*",
        "1", "2", "3", "-",
        "0", ".", "=", "+",
        "C", "(", ")", "%",
        "sin(", "cos(", "tan(", "sqrt("
    ]
    width: 240
    height: 320

    GridLayout {
        id: grid
        columns: 4
        anchors.fill: parent
        rowSpacing: 10
        columnSpacing: 10
        anchors.margins: 10

        // Digits 1–9
        Repeater {
            model: buttons
            delegate: Button {
                text: modelData
                Layout.fillWidth: true
                Layout.fillHeight: true

                font.pixelSize: 22
                font.bold: true
                onClicked: buttonPressed(text)
            }
        }



    }
}
