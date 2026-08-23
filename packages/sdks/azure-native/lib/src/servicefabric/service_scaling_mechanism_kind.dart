/// Specifies the mechanism associated with this scaling policy.
enum ServiceScalingMechanismKind {
  valueScalePartitionInstanceCount("ScalePartitionInstanceCount"),
  valueAddRemoveIncrementalNamedPartition("AddRemoveIncrementalNamedPartition");

  const ServiceScalingMechanismKind(this.wireValue);
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
