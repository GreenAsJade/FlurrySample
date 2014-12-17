import QtQuick 2.1
import QtQuick.Window 2.1
import VPlayPlugins.flurry 1.0

Window {
  visible: true
  width: 360
  height: 360

  Flurry {
    licenseKey: "1802219D9DB5B476BA12870EB3692921CF8F51009303CD091C54CAE8FB752667BB25303DB9D850EB8B6926F4BFE64424E2E8A5FF0CA7388E685BB0F1FD1D58EED1CF3F6DF719AD6F70A6CFDAF6C22DA66A21EF8CFE00E5052C86FA2F878301B3677F1F991FDC34FCD65C80B8D0EA07708EC952A83AF53F0691F01927D673D9B31C2498687B15D4414D93F132AD3DF31E6080FBBBF5C1FAC7BA918548017A0288"
    id: flurry

    // From Flurry Dashboard
    apiKey: "VDGW5ZC89MNC7VJ23XYV"
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
