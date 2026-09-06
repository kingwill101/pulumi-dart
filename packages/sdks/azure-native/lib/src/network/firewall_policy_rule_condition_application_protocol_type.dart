import 'package:pulumi/pulumi.dart' as pulumi;

/// Protocol type.
enum FirewallPolicyRuleConditionApplicationProtocolType implements pulumi.PulumiEnum<String> {
  valueHttp("Http"),
  valueHttps("Https");

  const FirewallPolicyRuleConditionApplicationProtocolType(this.wireValue);
  @override
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
