// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Constraints applied to pods.
class MaxPodsConstraint {
  /// Constraint enforced on the max num of pods per node.
  final pulumi.Input<String>? maxPodsPerNode;

  /// Creates a new [MaxPodsConstraint].
  /// [maxPodsPerNode] Constraint enforced on the max num of pods per node.
  const MaxPodsConstraint({
    this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': ?maxPodsPerNode,
    };
  }

  factory MaxPodsConstraint.fromMap(Map<String, dynamic> map) {
    return MaxPodsConstraint(
      maxPodsPerNode: (() { final guardedValue = map['maxPodsPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
