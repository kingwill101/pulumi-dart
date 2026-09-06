import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule Condition Type.
enum FirewallPolicyRuleConditionType implements pulumi.PulumiEnum<String> {
  valueApplicationRuleCondition("ApplicationRuleCondition"),
  valueNetworkRuleCondition("NetworkRuleCondition"),
  valueNatRuleCondition("NatRuleCondition");

  const FirewallPolicyRuleConditionType(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyRuleConditionType fromValue(String value) {
    for (final item in FirewallPolicyRuleConditionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleConditionType value: $value');
  }
}
