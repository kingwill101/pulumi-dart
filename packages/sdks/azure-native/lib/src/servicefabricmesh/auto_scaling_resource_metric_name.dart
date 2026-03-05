/// Name of the resource.
enum AutoScalingResourceMetricName {
  valueCpu("cpu"),
  valueMemoryInGB("memoryInGB");

  const AutoScalingResourceMetricName(this.wireValue);
  final String wireValue;

  static AutoScalingResourceMetricName fromValue(String value) {
    for (final item in AutoScalingResourceMetricName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoScalingResourceMetricName value: $value');
  }
}

