import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    signal buttonPressed(string button)

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
            model: ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
            delegate: Button {
                text: modelData
                Layout.fillWidth: true
                Layout.fillHeight: true
                font.pixelSize: 20
                onClicked: buttonPressed(text)
            }
        }

        // Clear button
        Button {
            text: "C"
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked: buttonPressed(text)
        }

        // Zero
        Button {
            text: "0"
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked: buttonPressed(text)
        }

        // Equal
        Button {
            text: "="
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked: buttonPressed(text)
        }

        // Operators
        Repeater {
            model: ["+", "-", "*", "/"]
            delegate: Button {
                text: modelData
                Layout.fillWidth: true
                Layout.fillHeight: true
                font.pixelSize: 20
                onClicked: buttonPressed(text)
            }
        }
    }
}
