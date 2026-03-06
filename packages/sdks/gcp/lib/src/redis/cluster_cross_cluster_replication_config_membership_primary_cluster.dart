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
  const ClusterCrossClusterReplicationConfigMembershipPrimaryCluster({
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
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

