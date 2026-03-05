/// Clustering policy - default is OSSCluster. This property can be updated only if the current value is NoCluster. If the value is OSSCluster or EnterpriseCluster, it cannot be updated without deleting the database.
enum ClusteringPolicy {
  enterpriseCluster("EnterpriseCluster"),
  oSSCluster("OSSCluster"),
  noCluster("NoCluster");

  const ClusteringPolicy(this.wireValue);
  final String wireValue;

  static ClusteringPolicy fromValue(String value) {
    for (final item in ClusteringPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ClusteringPolicy value: $value');
  }
}

