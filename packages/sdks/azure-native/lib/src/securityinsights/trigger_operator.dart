/// The operation against the threshold that triggers alert rule.
enum TriggerOperator {
  valueGreaterThan("GreaterThan"),
  valueLessThan("LessThan"),
  valueEqual("Equal"),
  valueNotEqual("NotEqual");

  const TriggerOperator(this.wireValue);
  final String wireValue;

  static TriggerOperator fromValue(String value) {
    for (final item in TriggerOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TriggerOperator value: $value');
  }
}

