import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol type.
enum FirewallPolicyRuleApplicationProtocolType implements pulumi.PulumiEnum<String> {
  valueHttp("Http"),
  valueHttps("Https");

  const FirewallPolicyRuleApplicationProtocolType(this.wireValue);
  @override
  final String wireValue;

  static FirewallPolicyRuleApplicationProtocolType fromValue(String value) {
    for (final item in FirewallPolicyRuleApplicationProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FirewallPolicyRuleApplicationProtocolType value: $value');
  }
}
