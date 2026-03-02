// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodePoolAutoscaling config for the NodePool to allow for the kubernetes to scale NodePool.
class VmwareNodePoolAutoscalingConfig {
  /// Maximum number of replicas in the NodePool.
  final pulumi.Input<int>? maxReplicas;
  /// Minimum number of replicas in the NodePool.
  final pulumi.Input<int>? minReplicas;

  /// Creates a new [VmwareNodePoolAutoscalingConfig].
  /// [maxReplicas] Maximum number of replicas in the NodePool.
  /// [minReplicas] Minimum number of replicas in the NodePool.
  VmwareNodePoolAutoscalingConfig({
    this.maxReplicas,
    this.minReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': ?maxReplicas,
      'minReplicas': ?minReplicas,
    };
  }

  factory VmwareNodePoolAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return VmwareNodePoolAutoscalingConfig(
      maxReplicas: map['maxReplicas'] == null ? null : (map['maxReplicas'] as int).input(),
      minReplicas: map['minReplicas'] == null ? null : (map['minReplicas'] as int).input(),
    );
  }
}

