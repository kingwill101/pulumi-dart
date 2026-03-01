/// Name of the resource.
enum AutoScalingResourceMetricName {
  valueCpu("cpu"),
  valueMemoryInGB("memoryInGB");

  const AutoScalingResourceMetricName(this.value);
  final String value;

  static AutoScalingResourceMetricName fromValue(String value) {
    for (final item in AutoScalingResourceMetricName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingResourceMetricName value: $value');
  }
}

