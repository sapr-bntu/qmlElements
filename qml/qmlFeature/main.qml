// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "elements"

Rectangle {
    width: 360
    height: 360
    Column{
        anchors.horizontalCenter: parent.horizontalCenter
                spacing: 10
    Text {
        text: qsTr("Hello World")

    }
    Button{
        text:"выход"
        onClicked:Qt.quit()
    }
    }

}
