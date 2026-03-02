// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolMaxPodsConstraint {
  /// The maximum number of pods to schedule on a single node.
  ///
  /// - - -
  final pulumi.Input<int> maxPodsPerNode;

  /// Creates a new [AwsNodePoolMaxPodsConstraint].
  /// [maxPodsPerNode] The maximum number of pods to schedule on a single node.
  AwsNodePoolMaxPodsConstraint({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': maxPodsPerNode,
    };
  }

  factory AwsNodePoolMaxPodsConstraint.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolMaxPodsConstraint(
      maxPodsPerNode: (map['maxPodsPerNode'] as int).input(),
    );
  }
}

