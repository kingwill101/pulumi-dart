import 'package:pulumi/pulumi.dart' as pulumi;

/// The direction in which this rule applies. This field may only be specified when versioned_expr is set to FIREWALL.
enum SecurityPolicyRuleDirectionComputeBeta implements pulumi.PulumiEnum<String> {
  egress("EGRESS"),
  ingress("INGRESS");

  const SecurityPolicyRuleDirectionComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static SecurityPolicyRuleDirectionComputeBeta fromValue(String value) {
    for (final item in SecurityPolicyRuleDirectionComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityPolicyRuleDirectionComputeBeta value: $value');
  }
}
