import QtQuick 2.0
import QtQuick.Controls 2.0
import FluentUI 0.1

ApplicationWindow {
    title: qsTr("resixty")
    width: 640
    height: 480
    visible: true

    Loader {
        anchors.fill: parent
        id: pageLoader
        source: "welcome.qml"
    }

    Connections {
        target: pageLoader.item
        onLoadPage: {
            pageLoader.source = path
            console.log(path)
        }
    }

/*
    MouseArea {
        anchors.fill: parent
        onClicked: pageLoader.source = "welcome.qml"
        Connections {
            target: pageLoader.item
            onLoadPage: console.log(path)
        }
    }
*/
}
