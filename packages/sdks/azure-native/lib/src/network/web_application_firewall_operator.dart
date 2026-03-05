/// The operator to be matched.
enum WebApplicationFirewallOperator {
  valueIPMatch("IPMatch"),
  valueEqual("Equal"),
  valueContains("Contains"),
  valueLessThan("LessThan"),
  valueGreaterThan("GreaterThan"),
  valueLessThanOrEqual("LessThanOrEqual"),
  valueGreaterThanOrEqual("GreaterThanOrEqual"),
  valueBeginsWith("BeginsWith"),
  valueEndsWith("EndsWith"),
  valueRegex("Regex"),
  valueGeoMatch("GeoMatch"),
  valueAny("Any");

  const WebApplicationFirewallOperator(this.wireValue);
  final String wireValue;

  static WebApplicationFirewallOperator fromValue(String value) {
    for (final item in WebApplicationFirewallOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebApplicationFirewallOperator value: $value');
  }
}

