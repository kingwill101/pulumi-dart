// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterStateInfoUpdateInfo {
  /// Target number of replica nodes per shard.
  final pulumi.Input<int> targetReplicaCount;
  /// Target number of shards for redis cluster.
  final pulumi.Input<int> targetShardCount;

  /// Creates a new [GetClusterStateInfoUpdateInfo].
  /// [targetReplicaCount] Target number of replica nodes per shard.
  /// [targetShardCount] Target number of shards for redis cluster.
  const GetClusterStateInfoUpdateInfo({
    required this.targetReplicaCount,
    required this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReplicaCount': targetReplicaCount,
      'targetShardCount': targetShardCount,
    };
  }

  factory GetClusterStateInfoUpdateInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterStateInfoUpdateInfo(
      targetReplicaCount: pulumi.Input.fromValue((map['targetReplicaCount'] as num).toInt()),
      targetShardCount: pulumi.Input.fromValue((map['targetShardCount'] as num).toInt()),
    );
  }
}
