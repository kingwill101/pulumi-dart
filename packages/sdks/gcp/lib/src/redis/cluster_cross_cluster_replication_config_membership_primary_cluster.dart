// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCrossClusterReplicationConfigMembershipPrimaryCluster {
  /// The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final pulumi.Input<String>? cluster;
  /// (Output)
  /// The unique id of the primary cluster.
  final pulumi.Input<String>? uid;

  /// Creates a new [ClusterCrossClusterReplicationConfigMembershipPrimaryCluster].
  /// [cluster] The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  /// [uid] (Output)
  ClusterCrossClusterReplicationConfigMembershipPrimaryCluster({
    this.cluster,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'uid': ?uid,
    };
  }

  factory ClusterCrossClusterReplicationConfigMembershipPrimaryCluster.fromMap(Map<String, dynamic> map) {
    return ClusterCrossClusterReplicationConfigMembershipPrimaryCluster(
      cluster: map['cluster'] == null ? null : (map['cluster']! as String).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
    );
  }
}

