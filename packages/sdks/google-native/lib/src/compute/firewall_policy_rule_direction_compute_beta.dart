/// The direction in which this rule applies.
enum FirewallPolicyRuleDirectionComputeBeta {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallPolicyRuleDirectionComputeBeta(this.wireValue);
  final String wireValue;

  static FirewallPolicyRuleDirectionComputeBeta fromValue(String value) {
    for (final item in FirewallPolicyRuleDirectionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleDirectionComputeBeta value: $value');
  }
}

