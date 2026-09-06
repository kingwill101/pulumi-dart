import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the mechanism associated with this scaling policy.
enum ServiceScalingMechanismKind implements pulumi.PulumiEnum<String> {
  valueScalePartitionInstanceCount("ScalePartitionInstanceCount"),
  valueAddRemoveIncrementalNamedPartition("AddRemoveIncrementalNamedPartition");

  const ServiceScalingMechanismKind(this.wireValue);
  @override
  final String wireValue;

  static ServiceScalingMechanismKind fromValue(String value) {
    for (final item in ServiceScalingMechanismKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceScalingMechanismKind value: $value');
  }
}
