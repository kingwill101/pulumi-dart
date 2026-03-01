/// The type of rack configuration for the cluster.
enum ClusterType {
  valueSingleRack("SingleRack"),
  valueMultiRack("MultiRack");

  const ClusterType(this.value);
  final String value;

  static ClusterType fromValue(String value) {
    for (final item in ClusterType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterType value: $value');
  }
}

