import 'package:pulumi/pulumi.dart' as pulumi;

/// Cluster subnet type.
enum ClusterSubnetType implements pulumi.PulumiEnum<String> {
  singleSubnet("SingleSubnet"),
  multiSubnet("MultiSubnet");

  const ClusterSubnetType(this.wireValue);
  @override
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
