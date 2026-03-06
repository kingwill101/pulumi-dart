// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents information about an updating cluster.
class UpdateInfoResponse {
  /// Target number of replica nodes per shard.
  final pulumi.Input<int> targetReplicaCount;
  /// Target number of shards for redis cluster
  final pulumi.Input<int> targetShardCount;

  /// Creates a new [UpdateInfoResponse].
  /// [targetReplicaCount] Target number of replica nodes per shard.
  /// [targetShardCount] Target number of shards for redis cluster
  const UpdateInfoResponse({
    required this.targetReplicaCount,
    required this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetReplicaCount': targetReplicaCount,
      'targetShardCount': targetShardCount,
    };
  }

  factory UpdateInfoResponse.fromMap(Map<String, dynamic> map) {
    return UpdateInfoResponse(
      targetReplicaCount: pulumi.Input.fromValue(map['targetReplicaCount'] as int),
      targetShardCount: pulumi.Input.fromValue(map['targetShardCount'] as int),
    );
  }
}

