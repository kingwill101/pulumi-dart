import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of rack configuration for the cluster.
enum ClusterType implements pulumi.PulumiEnum<String> {
  valueSingleRack("SingleRack"),
  valueMultiRack("MultiRack");

  const ClusterType(this.wireValue);
  @override
  final String wireValue;

  static ClusterType fromValue(String value) {
    for (final item in ClusterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterType value: $value');
  }
}
