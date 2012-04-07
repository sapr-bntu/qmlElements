import QtQuick 1.0

Rectangle {
    id: button

    property alias text: textItem.text
    property alias font: textItem.font
    property buttonsize:"middle"
    property text type:" value"

    signal clicked

    width: textItem.width + 40; height: textItem.height + 10
    border.width: 1
    radius: height/6
    smooth: true

    Gradient { id :gradient1
                GradientStop {position: 0.0; color: "white" }
                GradientStop {position: 0.5; color: "black" }
                GradientStop {position: 1.0; color: "white" }
            }
            Gradient { id :gradient2
                        GradientStop {position: 0.0; color: "white" }
                        GradientStop { position: 0.5; color: "blue" }
                        GradientStop { position: 1.0; color: "white" }
                    }
            Gradient { id :gradient3
                GradientStop {position: 0.0; color: "white" }
                GradientStop { position: 0.5; color: "red" }
                GradientStop { position: 1.0; color: "white" }
            }
        gradient: gradient1

    Text {
        id: textItem
        x: parent.width/2 - width/2; y: parent.height/2 - height/2
        font.pixelSize: 18
        color: "white"
        style: Text.Raised
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true//без этого не работает наведение
        onEntered: button.state = "entered"
        onExited: button.state = "exited"
        onClicked: button.clicked()
    }



    states: [
        State {
        name: "pressed"; when: mouseArea.pressed && mouseArea.containsMouse
        PropertyChanges { target: button; gradient: gradient3 }
        PropertyChanges { target: textItem; x: textItem.x + 1; y: textItem.y + 1; explicit: true }
    },
        State {
        name: "entered";
        PropertyChanges { target: button; gradient: gradient2 }
//        PropertyChanges { target: textItem; x: textItem.x + 1; y: textItem.y + 1; explicit: true }
    },
        State {
        name: "exited";
        PropertyChanges { target: button; gradient: gradient1 }
//        PropertyChanges { target: textItem; x: textItem.x + 1; y: textItem.y + 1; explicit: true }
    }
    ]
}

