import 'package:pulumi/pulumi.dart' as pulumi;

/// Built-in node pools of EKS Auto Mode. For more details see: https://docs.aws.amazon.com/eks/latest/userguide/set-builtin-node-pools.html
enum ClusterNodePools implements pulumi.PulumiEnum<String> {
  system("system"),
  generalPurpose("general-purpose");

  const ClusterNodePools(this.wireValue);
  @override
  final String wireValue;

  static ClusterNodePools fromValue(String value) {
    for (final item in ClusterNodePools.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterNodePools value: $value');
  }
}
