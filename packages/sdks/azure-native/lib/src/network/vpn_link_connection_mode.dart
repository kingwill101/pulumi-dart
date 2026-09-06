import 'package:pulumi/pulumi.dart' as pulumi;

/// Vpn link connection mode.
enum VpnLinkConnectionMode implements pulumi.PulumiEnum<String> {
  valueDefault("Default"),
  valueResponderOnly("ResponderOnly"),
  valueInitiatorOnly("InitiatorOnly");

  const VpnLinkConnectionMode(this.wireValue);
  @override
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
