/// Vpn link connection mode.
enum VpnLinkConnectionMode {
  valueDefault("Default"),
  valueResponderOnly("ResponderOnly"),
  valueInitiatorOnly("InitiatorOnly");

  const VpnLinkConnectionMode(this.wireValue);
  final String wireValue;

  static VpnLinkConnectionMode fromValue(String value) {
    for (final item in VpnLinkConnectionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnLinkConnectionMode value: $value');
  }
}
