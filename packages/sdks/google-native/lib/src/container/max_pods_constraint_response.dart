// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Constraints applied to pods.
class MaxPodsConstraintResponse {
  /// Constraint enforced on the max num of pods per node.
  final pulumi.Input<String> maxPodsPerNode;

  /// Creates a new [MaxPodsConstraintResponse].
  /// [maxPodsPerNode] Constraint enforced on the max num of pods per node.
  MaxPodsConstraintResponse({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': maxPodsPerNode,
    };
  }

  factory MaxPodsConstraintResponse.fromMap(Map<String, dynamic> map) {
    return MaxPodsConstraintResponse(
      maxPodsPerNode: (map['maxPodsPerNode'] as String).input(),
    );
  }
}

