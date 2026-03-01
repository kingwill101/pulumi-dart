/// Enumerates the ways that a service can be partitioned.
enum ServiceScalingTriggerKind {
  averagePartitionLoadTrigger("AveragePartitionLoadTrigger"),
  averageServiceLoadTrigger("AverageServiceLoadTrigger");

  const ServiceScalingTriggerKind(this.value);
  final String value;

  static ServiceScalingTriggerKind fromValue(String value) {
    for (final item in ServiceScalingTriggerKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceScalingTriggerKind value: $value');
  }
}

