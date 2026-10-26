import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction in which this rule applies.
enum FirewallPolicyRuleDirection implements pulumi.PulumiEnum<String> {
  egress("EGRESS"),
  ingress("INGRESS");

  const FirewallPolicyRuleDirection(this.wireValue);
  @override
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
