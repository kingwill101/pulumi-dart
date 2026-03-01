/// The rule type.
enum WebApplicationFirewallRuleType {
  valueMatchRule("MatchRule"),
  valueRateLimitRule("RateLimitRule"),
  valueInvalid("Invalid");

  const WebApplicationFirewallRuleType(this.value);
  final String value;

  static WebApplicationFirewallRuleType fromValue(String value) {
    for (final item in WebApplicationFirewallRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallRuleType value: $value');
  }
}

