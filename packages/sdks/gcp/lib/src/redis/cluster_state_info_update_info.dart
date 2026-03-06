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
  const ClusterStateInfoUpdateInfo({
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
      targetReplicaCount: (() { final guardedValue = map['targetReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetShardCount: (() { final guardedValue = map['targetShardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

