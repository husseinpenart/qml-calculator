import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "CalculatorLogic.js" as Logic

ApplicationWindow {
    visible: true
    width: 300
    height: 450
    title: "Calculator"

    property string expression: ""
    property string result: "0"

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        ResultArea {
            id: resultArea
            Layout.fillWidth: true
            resultText: result
        }

        NumbersLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true

            onButtonPressed: (button) => {
                if (button === "=") {
                    result = Logic.evaluate(expression).toString()
                    if (result !== "Error") {
                        expression = result
                    } else {
                        expression = ""
                    }
                } else if (button === "C") {
                    expression = ""
                    result = "0"
                } else {
                    expression += button
                    result = expression
                }
            }
        }
    }
}
