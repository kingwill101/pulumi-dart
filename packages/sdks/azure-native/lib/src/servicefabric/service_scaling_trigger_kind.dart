/// Enumerates the ways that a service can be partitioned.
enum ServiceScalingTriggerKind {
  averagePartitionLoadTrigger("AveragePartitionLoadTrigger"),
  averageServiceLoadTrigger("AverageServiceLoadTrigger");

  const ServiceScalingTriggerKind(this.wireValue);
  final String wireValue;

  static ServiceScalingTriggerKind fromValue(String value) {
    for (final item in ServiceScalingTriggerKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceScalingTriggerKind value: $value');
  }
}

