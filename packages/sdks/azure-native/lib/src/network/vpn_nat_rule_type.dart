import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of NAT rule for VPN NAT.
enum VpnNatRuleType implements pulumi.PulumiEnum<String> {
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const VpnNatRuleType(this.wireValue);
  @override
  final String wireValue;

  static VpnNatRuleType fromValue(String value) {
    for (final item in VpnNatRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnNatRuleType value: $value');
  }
}
