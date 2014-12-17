import QtQuick 2.0
import "../components"

Rectangle {
    id: root
    width: 640
    height: 480
    color: "#bbe5fb"
    signal message(string msg)

   Text {
        x: 159
        y: 46
        width: 640
        text: "I/O Example"
        anchors.horizontalCenterOffset: 0
        horizontalAlignment: Text.AlignHCenter
        font.family: "DejaVu Sans"
        font.pixelSize: 30
        anchors.horizontalCenter: parent.horizontalCenter
    }


    ImageButton {
        id: button1
        x: 139
        y: 132
        width: 113
        height: 70
        text: "Button 1"
        imageUp: "../images/internal_button_up.bmp"
        font.pixelSize: 20
        textColor: "#000000"
        imageDown: "../images/internal_button_dn.bmp"
        font.family: "DejaVu Sans"
        onButtonClick: {
            connection.sendMessage("button_click=1")
        }

    }

    ImageButton {
        id: button2
        x: 139
        y: 234
        width: 113
        height: 70
        text: "Button 2"
        imageUp: "../images/internal_button_up.bmp"
        font.pixelSize: 20
        textColor: "#000000"
        imageDown: "../images/internal_button_dn.bmp"
        font.family: "DejaVu Sans"
        onButtonClick: {
            connection.sendMessage("button_click=2")
        }
    }

	ImageButton {
        id: buttonQuit
        x: 139
        y: 338
        width: 113
        height: 70
        text: "Back"
        imageUp: "../images/internal_button_up.bmp"
        font.pixelSize: 20
        textColor: "#000000"
        imageDown: "../images/internal_button_dn.bmp"
        font.family: "DejaVu Sans"
        onButtonClick: {
            root.message("../src/mainmenu.qml");
        }
    }
	
    Text {
        id: text1
        x: 324
        y: 168
        width: 131
        height: 30
        text: qsTr("Temperature")
        font.family: "DejaVu Sans"
        font.pixelSize: 23
    }

    Text {
        id: text2
        x: 342
        y: 204
        width: 96
        height: 23
        text: qsTr("Celsius: ")
        font.family: "DejaVu Sans"
        font.pixelSize: 18
    }

    TextInput {
        objectName: "celsius_input"
        id: celsius_input
        x: 450
        y: 204
        width: 70
        height: 23
        text: qsTr("?")
        font.family: "DejaVu Sans"
        font.pixelSize: 18
    }

    Text {
        id: text3
        x: 342
        y: 233
        width: 96
        height: 27
        text: qsTr("Fahrenheit: ")
        font.family: "DejaVu Sans"
        font.pixelSize: 18
    }

    TextInput {
        objectName: "fahrenheit_input"
        id: fahrenheit_input
        x: 450
        y: 234
        width: 72
        height: 26
        text: qsTr("?")
        font.family: "DejaVu Sans"
        font.pixelSize: 18
    }


}

