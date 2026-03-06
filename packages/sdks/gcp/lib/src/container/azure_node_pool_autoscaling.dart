// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureNodePoolAutoscaling {
  /// Maximum number of nodes in the node pool. Must be &gt;= min_node_count.
  final pulumi.Input<int> maxNodeCount;
  /// Minimum number of nodes in the node pool. Must be &gt;= 1 and &lt;= max_node_count.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [AzureNodePoolAutoscaling].
  /// [maxNodeCount] Maximum number of nodes in the node pool. Must be &gt;= min_node_count.
  /// [minNodeCount] Minimum number of nodes in the node pool. Must be &gt;= 1 and &lt;= max_node_count.
  const AzureNodePoolAutoscaling({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory AzureNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return AzureNodePoolAutoscaling(
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
    );
  }
}

