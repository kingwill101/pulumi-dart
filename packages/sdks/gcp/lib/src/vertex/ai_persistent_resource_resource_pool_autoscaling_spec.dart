// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPersistentResourceResourcePoolAutoscalingSpec {
  /// max replicas in the node pool,
  /// must be ≥ replicaCount and &gt; minReplicaCount or will throw error
  final pulumi.Input<String?>? maxReplicaCount;
  /// min replicas in the node pool,
  /// must be ≤ replicaCount and &lt; maxReplicaCount or will throw error.
  /// For autoscaling enabled Ray-on-Vertex, we allow minReplicaCount of a
  /// resourcePool to be 0 to match the OSS Ray
  /// behavior(https://docs.ray.io/en/latest/cluster/vms/user-guides/configuring-autoscaling.html#cluster-config-parameters).
  /// As for Persistent Resource, the minReplicaCount must be &gt; 0, we added
  /// a corresponding validation inside
  /// CreatePersistentResourceRequestValidator.java.
  final pulumi.Input<String?>? minReplicaCount;

  /// Creates a new [AiPersistentResourceResourcePoolAutoscalingSpec].
  /// [maxReplicaCount] max replicas in the node pool,
  /// [minReplicaCount] min replicas in the node pool,
  const AiPersistentResourceResourcePoolAutoscalingSpec({
    this.maxReplicaCount,
    this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicaCount': ?maxReplicaCount,
      'minReplicaCount': ?minReplicaCount,
    };
  }

  factory AiPersistentResourceResourcePoolAutoscalingSpec.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceResourcePoolAutoscalingSpec(
      maxReplicaCount: (() { final guardedValue = map['maxReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minReplicaCount: (() { final guardedValue = map['minReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
