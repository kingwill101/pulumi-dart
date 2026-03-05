// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Constraints applied to pods.
class MaxPodsConstraintContainerV1beta1 {
  /// Constraint enforced on the max num of pods per node.
  final pulumi.Input<String>? maxPodsPerNode;

  /// Creates a new [MaxPodsConstraintContainerV1beta1].
  /// [maxPodsPerNode] Constraint enforced on the max num of pods per node.
  MaxPodsConstraintContainerV1beta1({
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': ?maxPodsPerNode,
    };
  }

  factory MaxPodsConstraintContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaxPodsConstraintContainerV1beta1(
      maxPodsPerNode: (() { final guardedValue = map['maxPodsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

