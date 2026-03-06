// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceStateInfoUpdateInfo {
  /// (Output)
  /// Output only. Target engine version for the instance.
  final pulumi.Input<String>? targetEngineVersion;
  /// (Output)
  /// Output only. Target node type for the instance.
  final pulumi.Input<String>? targetNodeType;
  /// (Output)
  /// Output only. Target number of replica nodes per shard for the instance.
  final pulumi.Input<int>? targetReplicaCount;
  /// (Output)
  /// Output only. Target number of shards for the instance.
  final pulumi.Input<int>? targetShardCount;

  /// Creates a new [InstanceStateInfoUpdateInfo].
  /// [targetEngineVersion] (Output)
  /// [targetNodeType] (Output)
  /// [targetReplicaCount] (Output)
  /// [targetShardCount] (Output)
  const InstanceStateInfoUpdateInfo({
    this.targetEngineVersion,
    this.targetNodeType,
    this.targetReplicaCount,
    this.targetShardCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetEngineVersion': ?targetEngineVersion,
      'targetNodeType': ?targetNodeType,
      'targetReplicaCount': ?targetReplicaCount,
      'targetShardCount': ?targetShardCount,
    };
  }

  factory InstanceStateInfoUpdateInfo.fromMap(Map<String, dynamic> map) {
    return InstanceStateInfoUpdateInfo(
      targetEngineVersion: (() { final guardedValue = map['targetEngineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNodeType: (() { final guardedValue = map['targetNodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetReplicaCount: (() { final guardedValue = map['targetReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetShardCount: (() { final guardedValue = map['targetShardCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

