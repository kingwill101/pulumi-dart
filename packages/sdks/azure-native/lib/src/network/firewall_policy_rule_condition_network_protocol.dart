/// The Network protocol of a Rule condition.
enum FirewallPolicyRuleConditionNetworkProtocol {
  valueTCP("TCP"),
  valueUDP("UDP"),
  valueAny("Any"),
  valueICMP("ICMP");

  const FirewallPolicyRuleConditionNetworkProtocol(this.wireValue);
  final String wireValue;

  static FirewallPolicyRuleConditionNetworkProtocol fromValue(String value) {
    for (final item in FirewallPolicyRuleConditionNetworkProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleConditionNetworkProtocol value: $value');
  }
}

