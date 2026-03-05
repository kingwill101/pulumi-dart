/// The direction in which this rule applies.
enum FirewallPolicyRuleDirection {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallPolicyRuleDirection(this.wireValue);
  final String wireValue;

  static FirewallPolicyRuleDirection fromValue(String value) {
    for (final item in FirewallPolicyRuleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleDirection value: $value');
  }
}

