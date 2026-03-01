/// Protocol type.
enum FirewallPolicyRuleApplicationProtocolType {
  valueHttp("Http"),
  valueHttps("Https");

  const FirewallPolicyRuleApplicationProtocolType(this.value);
  final String value;

  static FirewallPolicyRuleApplicationProtocolType fromValue(String value) {
    for (final item in FirewallPolicyRuleApplicationProtocolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleApplicationProtocolType value: $value');
  }
}

