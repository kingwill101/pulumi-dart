/// The type of the rule.
enum FirewallPolicyRuleType {
  valueFirewallPolicyNatRule("FirewallPolicyNatRule"),
  valueFirewallPolicyFilterRule("FirewallPolicyFilterRule");

  const FirewallPolicyRuleType(this.wireValue);
  final String wireValue;

  static FirewallPolicyRuleType fromValue(String value) {
    for (final item in FirewallPolicyRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleType value: $value');
  }
}

