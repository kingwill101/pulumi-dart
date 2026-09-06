import 'package:pulumi/pulumi.dart' as pulumi;

/// The Source NAT direction of a VPN NAT.
enum VpnNatRuleMode implements pulumi.PulumiEnum<String> {
  valueEgressSnat("EgressSnat"),
  valueIngressSnat("IngressSnat");

  const VpnNatRuleMode(this.wireValue);
  @override
  final String wireValue;

  static VpnNatRuleMode fromValue(String value) {
    for (final item in VpnNatRuleMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnNatRuleMode value: $value');
  }
}
