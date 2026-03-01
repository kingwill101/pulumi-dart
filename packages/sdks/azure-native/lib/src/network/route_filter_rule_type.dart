/// The rule type of the rule.
enum RouteFilterRuleType {
  valueCommunity("Community");

  const RouteFilterRuleType(this.value);
  final String value;

  static RouteFilterRuleType fromValue(String value) {
    for (final item in RouteFilterRuleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouteFilterRuleType value: $value');
  }
}

