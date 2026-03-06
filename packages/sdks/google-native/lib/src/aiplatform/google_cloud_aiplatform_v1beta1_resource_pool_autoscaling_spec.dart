// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The min/max number of replicas allowed if enabling autoscaling
class GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec {
  /// Optional. max replicas in the node pool, must be ≥ replica_count and &gt; min_replica_count or will throw error
  final pulumi.Input<String>? maxReplicaCount;
  /// Optional. min replicas in the node pool, must be ≤ replica_count and &lt; max_replica_count or will throw error
  final pulumi.Input<String>? minReplicaCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec].
  /// [maxReplicaCount] Optional. max replicas in the node pool, must be ≥ replica_count and &gt; min_replica_count or will throw error
  /// [minReplicaCount] Optional. min replicas in the node pool, must be ≤ replica_count and &lt; max_replica_count or will throw error
  const GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec({
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicaCount': ?maxReplicaCount,
      'minReplicaCount': ?minReplicaCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpec(
      maxReplicaCount: (() { final guardedValue = map['maxReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minReplicaCount: (() { final guardedValue = map['minReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

