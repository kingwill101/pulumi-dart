// ignore_for_file: unused_element, unnecessary_cast


class GetClusterCrossClusterReplicationConfigSecondaryCluster {
  /// The full resource path of the secondary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final String cluster;
  /// The unique id of the secondary cluster.
  final String uid;

  /// Creates a new [GetClusterCrossClusterReplicationConfigSecondaryCluster].
  /// [cluster] The full resource path of the secondary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  /// [uid] The unique id of the secondary cluster.
  GetClusterCrossClusterReplicationConfigSecondaryCluster({
    required this.cluster,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'uid': uid,
    };
  }

  factory GetClusterCrossClusterReplicationConfigSecondaryCluster.fromMap(Map<String, dynamic> map) {
    return GetClusterCrossClusterReplicationConfigSecondaryCluster(
      cluster: map['cluster'] as String,
      uid: map['uid'] as String,
    );
  }
}

