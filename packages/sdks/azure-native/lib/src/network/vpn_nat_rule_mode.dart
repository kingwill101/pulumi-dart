/// The Source NAT direction of a VPN NAT.
enum VpnNatRuleMode {
  valueEgressSnat("EgressSnat"),
  valueIngressSnat("IngressSnat");

  const VpnNatRuleMode(this.value);
  final String value;

  static VpnNatRuleMode fromValue(String value) {
    for (final item in VpnNatRuleMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpnNatRuleMode value: $value');
  }
}

