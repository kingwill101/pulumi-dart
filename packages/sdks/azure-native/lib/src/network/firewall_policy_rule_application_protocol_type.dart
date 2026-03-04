/// Protocol type.
enum FirewallPolicyRuleApplicationProtocolType {
  valueHttp("Http"),
  valueHttps("Https");

  const FirewallPolicyRuleApplicationProtocolType(this.wireValue);
  final String wireValue;

  static FirewallPolicyRuleApplicationProtocolType fromValue(String value) {
    for (final item in FirewallPolicyRuleApplicationProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown FirewallPolicyRuleApplicationProtocolType value: $value',
    );
  }
}
