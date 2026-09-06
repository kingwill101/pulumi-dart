import 'package:pulumi/pulumi.dart' as pulumi;

/// Match condition to apply RouteMap rules.
enum RouteMapMatchCondition implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueContains("Contains"),
  valueEquals("Equals"),
  valueNotContains("NotContains"),
  valueNotEquals("NotEquals");

  const RouteMapMatchCondition(this.wireValue);
  @override
  final String wireValue;

  static RouteMapMatchCondition fromValue(String value) {
    for (final item in RouteMapMatchCondition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RouteMapMatchCondition value: $value');
  }
}
