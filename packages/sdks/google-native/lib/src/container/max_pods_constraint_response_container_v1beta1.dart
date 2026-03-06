// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Constraints applied to pods.
class MaxPodsConstraintResponseContainerV1beta1 {
  /// Constraint enforced on the max num of pods per node.
  final pulumi.Input<String> maxPodsPerNode;

  /// Creates a new [MaxPodsConstraintResponseContainerV1beta1].
  /// [maxPodsPerNode] Constraint enforced on the max num of pods per node.
  const MaxPodsConstraintResponseContainerV1beta1({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': maxPodsPerNode,
    };
  }

  factory MaxPodsConstraintResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MaxPodsConstraintResponseContainerV1beta1(
      maxPodsPerNode: pulumi.Input.fromValue(map['maxPodsPerNode'] as String),
    );
  }
}

