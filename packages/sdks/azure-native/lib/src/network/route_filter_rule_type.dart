import 'package:pulumi/pulumi.dart' as pulumi;

/// The rule type of the rule.
enum RouteFilterRuleType implements pulumi.PulumiEnum<String> {
  valueCommunity("Community");

  const RouteFilterRuleType(this.wireValue);
  @override
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
