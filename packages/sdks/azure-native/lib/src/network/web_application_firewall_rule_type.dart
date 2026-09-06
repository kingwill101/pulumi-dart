import 'package:pulumi/pulumi.dart' as pulumi;

/// The rule type.
enum WebApplicationFirewallRuleType implements pulumi.PulumiEnum<String> {
  valueMatchRule("MatchRule"),
  valueRateLimitRule("RateLimitRule"),
  valueInvalid("Invalid");

  const WebApplicationFirewallRuleType(this.wireValue);
  @override
  final String wireValue;

  static WebApplicationFirewallRuleType fromValue(String value) {
    for (final item in WebApplicationFirewallRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallRuleType value: $value');
  }
}
