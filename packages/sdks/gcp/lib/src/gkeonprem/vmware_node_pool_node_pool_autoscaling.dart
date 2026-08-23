// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VMwareNodePoolNodePoolAutoscaling {
  /// Maximum number of replicas in the NodePool.
  final pulumi.Input<int> maxReplicas;
  /// Minimum number of replicas in the NodePool.
  final pulumi.Input<int> minReplicas;

  /// Creates a new [VMwareNodePoolNodePoolAutoscaling].
  /// [maxReplicas] Maximum number of replicas in the NodePool.
  /// [minReplicas] Minimum number of replicas in the NodePool.
  const VMwareNodePoolNodePoolAutoscaling({
    required this.maxReplicas,
    required this.minReplicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReplicas': maxReplicas,
      'minReplicas': minReplicas,
    };
  }

  factory VMwareNodePoolNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return VMwareNodePoolNodePoolAutoscaling(
      maxReplicas: pulumi.Input.fromValue(map['maxReplicas'] as int),
      minReplicas: pulumi.Input.fromValue(map['minReplicas'] as int),
    );
  }
}
