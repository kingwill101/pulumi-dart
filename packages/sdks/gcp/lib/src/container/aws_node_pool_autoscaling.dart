// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolAutoscaling {
  /// Maximum number of nodes in the NodePool. Must be >= min_node_count.
  final pulumi.Input<int> maxNodeCount;
  /// Minimum number of nodes in the NodePool. Must be >= 1 and <= max_node_count.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [AwsNodePoolAutoscaling].
  /// [maxNodeCount] Maximum number of nodes in the NodePool. Must be >= min_node_count.
  /// [minNodeCount] Minimum number of nodes in the NodePool. Must be >= 1 and <= max_node_count.
  AwsNodePoolAutoscaling({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory AwsNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolAutoscaling(
      maxNodeCount: (map['maxNodeCount'] as int).input(),
      minNodeCount: (map['minNodeCount'] as int).input(),
    );
  }
}

