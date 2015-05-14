import QtQuick 2.1
import QtQuick.Window 2.1
import VPlayPlugins.flurry 1.0

Window {
  visible: true
  width: 360
  height: 360

  Flurry {
    licenseKey: "1802219D9DB5B476BA12870EB3692921CF8F51009303CD091C54CAE8FB752667BB25303DB9D850EB8B6926F4BFE64424E2E8A5FF0CA7388E685BB0F1FD1D58EED1CF3F6DF719AD6F70A6CFDAF6C22DA63BB02C49B295833FA17F0F00CB3BCC45B8FE0238D32085BB551909F394293298F70EB055733F7569BC2F62B55409109CD7810409657343E7D59D3F4758B03DF9"

    id: flurry

    // From Flurry Dashboard
    apiKey: "4Q5J465BFNDJPNBMBPHP"
  }

  Text {
    text: qsTr("Log Event")
    anchors.centerIn: parent
  }

  MouseArea {
    anchors.fill: parent

    onClicked: {
      flurry.logEvent("Test Event")
      console.debug("Logged event <Test Event>")
    }
  }

}
