// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStateInfoUpdateInfo {
  /// Target number of replica nodes per shard.
  final pulumi.Input<int>? targetReplicaCount;
  /// Target number of shards for redis cluster.
  final pulumi.Input<int>? targetShardCount;

  /// Creates a new [ClusterStateInfoUpdateInfo].
  /// [targetReplicaCount] Target number of replica nodes per shard.
  /// [targetShardCount] Target number of shards for redis cluster.
  ClusterStateInfoUpdateInfo({
    this.targetReplicaCount,
    this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReplicaCount': ?targetReplicaCount,
      'targetShardCount': ?targetShardCount,
    };
  }

  factory ClusterStateInfoUpdateInfo.fromMap(Map<String, dynamic> map) {
    return ClusterStateInfoUpdateInfo(
      targetReplicaCount: map['targetReplicaCount'] == null ? null : (map['targetReplicaCount'] as int).input(),
      targetShardCount: map['targetShardCount'] == null ? null : (map['targetShardCount'] as int).input(),
    );
  }
}

