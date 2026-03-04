/// Cluster subnet type.
enum ClusterSubnetType {
  singleSubnet("SingleSubnet"),
  multiSubnet("MultiSubnet");

  const ClusterSubnetType(this.wireValue);
  final String wireValue;

  static ClusterSubnetType fromValue(String value) {
    for (final item in ClusterSubnetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterSubnetType value: $value');
  }
}
