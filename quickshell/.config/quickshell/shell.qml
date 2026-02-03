import Quickshell
import Quickshell.Hyprland
import Quickshell.Io
import QtQuick

PanelWindow {
    anchors{
        left: true
        top: true
        right: true
    }
    implicitHeight: 25
    Text{
        id: clock
        anchors.centerIn: parent

        Process{
            id: dateProc

            command: ["date"]
            running: true

            stdout: StdioCollector{
                onStreamFinished: clock.text = this.text
            }
        }

        Timer{
            interval: 1000

            running: True

            repeat: True
            
            onTriggered: dateProc.running = true
        }
    }
}

// Hyprland{
//     workspaces
// }
