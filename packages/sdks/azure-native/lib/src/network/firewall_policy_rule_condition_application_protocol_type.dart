/// Protocol type.
enum FirewallPolicyRuleConditionApplicationProtocolType {
  valueHttp("Http"),
  valueHttps("Https");

  const FirewallPolicyRuleConditionApplicationProtocolType(this.wireValue);
  final String wireValue;

  static FirewallPolicyRuleConditionApplicationProtocolType fromValue(String value) {
    for (final item in FirewallPolicyRuleConditionApplicationProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleConditionApplicationProtocolType value: $value');
  }
}
