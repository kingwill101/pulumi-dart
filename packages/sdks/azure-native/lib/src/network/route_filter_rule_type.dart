/// The rule type of the rule.
enum RouteFilterRuleType {
  valueCommunity("Community");

  const RouteFilterRuleType(this.wireValue);
  final String wireValue;

  static RouteFilterRuleType fromValue(String value) {
    for (final item in RouteFilterRuleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouteFilterRuleType value: $value');
  }
}
