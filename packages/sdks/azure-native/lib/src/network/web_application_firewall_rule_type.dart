/// The rule type.
enum WebApplicationFirewallRuleType {
  valueMatchRule("MatchRule"),
  valueRateLimitRule("RateLimitRule"),
  valueInvalid("Invalid");

  const WebApplicationFirewallRuleType(this.wireValue);
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
