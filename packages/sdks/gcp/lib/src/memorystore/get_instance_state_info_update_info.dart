// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceStateInfoUpdateInfo {
  /// Output only. Target engine version for the instance.
  final pulumi.Input<String> targetEngineVersion;
  /// Output only. Target node type for the instance.
  final pulumi.Input<String> targetNodeType;
  /// Output only. Target number of replica nodes per shard for the instance.
  final pulumi.Input<int> targetReplicaCount;
  /// Output only. Target number of shards for the instance.
  final pulumi.Input<int> targetShardCount;

  /// Creates a new [GetInstanceStateInfoUpdateInfo].
  /// [targetEngineVersion] Output only. Target engine version for the instance.
  /// [targetNodeType] Output only. Target node type for the instance.
  /// [targetReplicaCount] Output only. Target number of replica nodes per shard for the instance.
  /// [targetShardCount] Output only. Target number of shards for the instance.
  GetInstanceStateInfoUpdateInfo({
    required this.targetEngineVersion,
    required this.targetNodeType,
    required this.targetReplicaCount,
    required this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetEngineVersion': targetEngineVersion,
      'targetNodeType': targetNodeType,
      'targetReplicaCount': targetReplicaCount,
      'targetShardCount': targetShardCount,
    };
  }

  factory GetInstanceStateInfoUpdateInfo.fromMap(Map<String, dynamic> map) {
    return GetInstanceStateInfoUpdateInfo(
      targetEngineVersion: (map['targetEngineVersion'] as String).input(),
      targetNodeType: (map['targetNodeType'] as String).input(),
      targetReplicaCount: (map['targetReplicaCount'] as int).input(),
      targetShardCount: (map['targetShardCount'] as int).input(),
    );
  }
}

