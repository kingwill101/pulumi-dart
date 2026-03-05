/// The Source NAT direction of a VPN NAT.
enum VpnNatRuleMode {
  valueEgressSnat("EgressSnat"),
  valueIngressSnat("IngressSnat");

  const VpnNatRuleMode(this.wireValue);
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

