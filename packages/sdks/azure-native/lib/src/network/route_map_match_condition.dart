/// Match condition to apply RouteMap rules.
enum RouteMapMatchCondition {
  valueUnknown("Unknown"),
  valueContains("Contains"),
  valueEquals("Equals"),
  valueNotContains("NotContains"),
  valueNotEquals("NotEquals");

  const RouteMapMatchCondition(this.wireValue);
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

