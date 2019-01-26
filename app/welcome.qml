import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.0
import FluentUI 0.1


ColumnLayout{
    anchors.fill: parent
    spacing: 2
    signal loadPage(string path)

    Rectangle {
        Layout.alignment: Qt.AlignCenter
        color: "#138DD3"
        Layout.fillWidth: true
        Layout.preferredHeight: parent.height * (1 - 0.618)
    }

    Rectangle {
        Layout.alignment: Qt.AlignCenter
        color: "transparent"
        Layout.fillWidth: true
        Layout.fillHeight: true

        Text {
            anchors.top: parent.top
            anchors.topMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 28
            text: "welcome to use resixty"
        }

        Button {
            anchors.centerIn: parent
            width: 180
            height: 72
            font.pixelSize: 28
            text: "start"
            onClicked: loadPage("signin.qml")
        }
    }
}