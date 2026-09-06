import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the trigger associated with this scaling policy.
enum ServiceScalingTriggerKind implements pulumi.PulumiEnum<String> {
  valueAveragePartitionLoadTrigger("AveragePartitionLoadTrigger"),
  valueAverageServiceLoadTrigger("AverageServiceLoadTrigger");

  const ServiceScalingTriggerKind(this.wireValue);
  @override
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
