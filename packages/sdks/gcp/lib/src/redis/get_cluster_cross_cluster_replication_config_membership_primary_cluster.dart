// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster {
  /// The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  final pulumi.Input<String> cluster;

  /// The unique id of the primary cluster.
  final pulumi.Input<String> uid;

  /// Creates a new [GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster].
  /// [cluster] The full resource path of the primary cluster in the format: projects/{project}/locations/{region}/clusters/{cluster-id}
  /// [uid] The unique id of the primary cluster.
  GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster({
    required this.cluster,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cluster': cluster, 'uid': uid};
  }

  factory GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
