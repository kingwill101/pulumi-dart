// ignore_for_file: unused_element, unnecessary_cast


/// NodePoolAutoscaling config for the NodePool to allow for the kubernetes to scale NodePool.
class VmwareNodePoolAutoscalingConfigResponse {
  /// Maximum number of replicas in the NodePool.
  final int maxReplicas;
  /// Minimum number of replicas in the NodePool.
  final int minReplicas;

  /// Creates a new [VmwareNodePoolAutoscalingConfigResponse].
  /// [maxReplicas] Maximum number of replicas in the NodePool.
  /// [minReplicas] Minimum number of replicas in the NodePool.
  VmwareNodePoolAutoscalingConfigResponse({
    required this.maxReplicas,
    required this.minReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': maxReplicas,
      'minReplicas': minReplicas,
    };
  }

  factory VmwareNodePoolAutoscalingConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareNodePoolAutoscalingConfigResponse(
      maxReplicas: map['maxReplicas'] as int,
      minReplicas: map['minReplicas'] as int,
    );
  }
}

