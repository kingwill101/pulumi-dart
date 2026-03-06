// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterCrossClusterReplicationConfigSecondaryCluster {
  /// (Output)
  /// The full resource path of the secondary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final pulumi.Input<String>? cluster;
  /// (Output)
  /// The unique id of the secondary cluster.
  final pulumi.Input<String>? uid;

  /// Creates a new [ClusterCrossClusterReplicationConfigSecondaryCluster].
  /// [cluster] (Output)
  /// [uid] (Output)
  const ClusterCrossClusterReplicationConfigSecondaryCluster({
    this.cluster,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'uid': ?uid,
    };
  }

  factory ClusterCrossClusterReplicationConfigSecondaryCluster.fromMap(Map<String, dynamic> map) {
    return ClusterCrossClusterReplicationConfigSecondaryCluster(
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

