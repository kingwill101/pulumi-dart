/// The type of auto scaling metric
enum AutoScalingMetricKind {
  valueResource("Resource");

  const AutoScalingMetricKind(this.value);
  final String value;

  static AutoScalingMetricKind fromValue(String value) {
    for (final item in AutoScalingMetricKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingMetricKind value: $value');
  }
}

