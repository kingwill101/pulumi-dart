/// The direction in which this rule applies.
enum FirewallPolicyRuleDirection {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallPolicyRuleDirection(this.value);
  final String value;

  static FirewallPolicyRuleDirection fromValue(String value) {
    for (final item in FirewallPolicyRuleDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleDirection value: $value');
  }
}

