// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1
import "elements"

Rectangle {
    width: 360
    height: 360
    color:"#f1ecec"
    Column{
        anchors.baseline: parent.left
                spacing: 10
    Text {
        text: qsTr("Hello World")

    }
    Button{
        text:"default"
    }
    Button{
        text:"Large"
        buttonsize: "large"
    }
    Button{
        text:"small"
        buttonsize: "small"
    }
    Button{
        text:"mini"
        buttonsize: "mini"
    }
    }
    Column{
        x:100
                spacing: 10
    Button{
        text:"primary"
        type:"primary"
    }
    Button{
        text:"warning"
        type:"warning"
    }
    Button{
        text:"danger"
        type:"danger"
    }
    Button{
        text:"success"
        type:"success"
    }
    Button{
        text:"info"
        type:"info"
    }
    Button{
        text:"inverse"
        type:"inverse"
    }

    Button{
        text:"disabled"
        enabled: false
    }
    Button{
        text:"disabled"
        buttonsize: "large"
        enabled: false
        type:"inverse"
    }
    Button{
        id:mmm
        text:"выход"
        onClicked:Qt.quit()
    }

    }

}
