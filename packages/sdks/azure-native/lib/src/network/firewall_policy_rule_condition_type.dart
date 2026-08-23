/// Rule Condition Type.
enum FirewallPolicyRuleConditionType {
  valueApplicationRuleCondition("ApplicationRuleCondition"),
  valueNetworkRuleCondition("NetworkRuleCondition"),
  valueNatRuleCondition("NatRuleCondition");

  const FirewallPolicyRuleConditionType(this.wireValue);
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
