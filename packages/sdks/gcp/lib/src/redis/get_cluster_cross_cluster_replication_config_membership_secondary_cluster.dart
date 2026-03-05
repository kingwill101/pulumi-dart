// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster {
  /// The full resource path of the secondary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final pulumi.Input<String> cluster;
  /// The unique id of the secondary cluster.
  final pulumi.Input<String> uid;

  /// Creates a new [GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster].
  /// [cluster] The full resource path of the secondary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  /// [uid] The unique id of the secondary cluster.
  GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster({
    required this.cluster,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'uid': uid,
    };
  }

  factory GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster.fromMap(Map<String, dynamic> map) {
    return GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}

