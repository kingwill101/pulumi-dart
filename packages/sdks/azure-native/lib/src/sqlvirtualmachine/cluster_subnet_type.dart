/// Cluster subnet type.
enum ClusterSubnetType {
  singleSubnet("SingleSubnet"),
  multiSubnet("MultiSubnet");

  const ClusterSubnetType(this.value);
  final String value;

  static ClusterSubnetType fromValue(String value) {
    for (final item in ClusterSubnetType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterSubnetType value: $value');
  }
}

