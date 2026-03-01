/// Built-in node pools of EKS Auto Mode. For more details see: https://docs.aws.amazon.com/eks/latest/userguide/set-builtin-node-pools.html
enum ClusterNodePools {
  system("system"),
  generalPurpose("general-purpose");

  const ClusterNodePools(this.value);
  final String value;

  static ClusterNodePools fromValue(String value) {
    for (final item in ClusterNodePools.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusterNodePools value: $value');
  }
}

