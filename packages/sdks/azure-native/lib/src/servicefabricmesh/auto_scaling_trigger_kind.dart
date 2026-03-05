/// The type of auto scaling trigger
enum AutoScalingTriggerKind {
  valueAverageLoad("AverageLoad");

  const AutoScalingTriggerKind(this.wireValue);
  final String wireValue;

  static AutoScalingTriggerKind fromValue(String value) {
    for (final item in AutoScalingTriggerKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingTriggerKind value: $value');
  }
}

