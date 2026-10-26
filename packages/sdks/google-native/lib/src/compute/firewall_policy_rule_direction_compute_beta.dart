import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction in which this rule applies.
enum FirewallPolicyRuleDirectionComputeBeta implements pulumi.PulumiEnum<String> {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallPolicyRuleDirectionComputeBeta(this.wireValue);
  @override
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
