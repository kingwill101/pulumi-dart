/// The type of NAT rule for VPN NAT.
enum VpnNatRuleType {
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const VpnNatRuleType(this.wireValue);
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
