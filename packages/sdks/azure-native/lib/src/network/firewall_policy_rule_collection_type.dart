import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the rule collection.
enum FirewallPolicyRuleCollectionType implements pulumi.PulumiEnum<String> {
  valueFirewallPolicyNatRuleCollection("FirewallPolicyNatRuleCollection"),
  valueFirewallPolicyFilterRuleCollection("FirewallPolicyFilterRuleCollection");

  const FirewallPolicyRuleCollectionType(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyRuleCollectionType fromValue(String value) {
    for (final item in FirewallPolicyRuleCollectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleCollectionType value: $value');
  }
}
