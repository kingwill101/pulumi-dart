/// Specifies the trigger associated with this scaling policy.
enum ServiceScalingTriggerKind {
  valueAveragePartitionLoadTrigger("AveragePartitionLoadTrigger"),
  valueAverageServiceLoadTrigger("AverageServiceLoadTrigger");

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
