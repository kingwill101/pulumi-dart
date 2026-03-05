/// The Network protocol of a Rule.
enum FirewallPolicyRuleNetworkProtocol {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueAny("Any"),
  valueICMP("ICMP");

  const FirewallPolicyRuleNetworkProtocol(this.wireValue);
  final String wireValue;

  static FirewallPolicyRuleNetworkProtocol fromValue(String value) {
    for (final item in FirewallPolicyRuleNetworkProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleNetworkProtocol value: $value');
  }
}

