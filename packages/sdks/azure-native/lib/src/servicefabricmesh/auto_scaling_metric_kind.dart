/// The type of auto scaling metric
enum AutoScalingMetricKind {
  valueResource("Resource");

  const AutoScalingMetricKind(this.wireValue);
  final String wireValue;

  static AutoScalingMetricKind fromValue(String value) {
    for (final item in AutoScalingMetricKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingMetricKind value: $value');
  }
}
