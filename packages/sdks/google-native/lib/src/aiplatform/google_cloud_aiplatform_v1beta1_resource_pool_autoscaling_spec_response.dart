// ignore_for_file: unused_element, unnecessary_cast


/// The min/max number of replicas allowed if enabling autoscaling
class GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpecResponse {
  /// Optional. max replicas in the node pool, must be ≥ replica_count and > min_replica_count or will throw error
  final String maxReplicaCount;
  /// Optional. min replicas in the node pool, must be ≤ replica_count and < max_replica_count or will throw error
  final String minReplicaCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpecResponse].
  /// [maxReplicaCount] Optional. max replicas in the node pool, must be ≥ replica_count and > min_replica_count or will throw error
  /// [minReplicaCount] Optional. min replicas in the node pool, must be ≤ replica_count and < max_replica_count or will throw error
  GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpecResponse({
    required this.maxReplicaCount,
    required this.minReplicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicaCount': maxReplicaCount,
      'minReplicaCount': minReplicaCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ResourcePoolAutoscalingSpecResponse(
      maxReplicaCount: map['maxReplicaCount'] as String,
      minReplicaCount: map['minReplicaCount'] as String,
    );
  }
}

