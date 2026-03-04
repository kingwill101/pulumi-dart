/// Enumerates the ways that a service can be partitioned.
enum ServiceScalingMechanismKind {
  scalePartitionInstanceCount("ScalePartitionInstanceCount"),
  addRemoveIncrementalNamedPartition("AddRemoveIncrementalNamedPartition");

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
