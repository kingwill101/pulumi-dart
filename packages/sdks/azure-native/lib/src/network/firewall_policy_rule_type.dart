import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the rule.
enum FirewallPolicyRuleType implements pulumi.PulumiEnum<String> {
  valueFirewallPolicyNatRule("FirewallPolicyNatRule"),
  valueFirewallPolicyFilterRule("FirewallPolicyFilterRule");

  const FirewallPolicyRuleType(this.wireValue);
  @override
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
