/// The Network protocol of a Rule.
enum FirewallPolicyRuleNetworkProtocol {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueAny("Any"),
  valueICMP("ICMP");

  const FirewallPolicyRuleNetworkProtocol(this.value);
  final String value;

  static FirewallPolicyRuleNetworkProtocol fromValue(String value) {
    for (final item in FirewallPolicyRuleNetworkProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleNetworkProtocol value: $value');
  }
}

