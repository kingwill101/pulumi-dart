/// The direction in which this rule applies. This field may only be specified when versioned_expr is set to FIREWALL.
enum SecurityPolicyRuleDirection {
  egress("EGRESS"),
  ingress("INGRESS");

  const SecurityPolicyRuleDirection(this.wireValue);
  final String wireValue;

  static SecurityPolicyRuleDirection fromValue(String value) {
    for (final item in SecurityPolicyRuleDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRuleDirection value: $value');
  }
}
