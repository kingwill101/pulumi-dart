// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GkeNodePoolAutoscaling contains information the cluster autoscaler needs to adjust the size of the node pool to the current cluster usage.
class GkeNodePoolAutoscalingConfigResponse {
  /// The maximum number of nodes in the node pool. Must be &gt;= min_node_count, and must be &gt; 0. Note: Quota must be sufficient to scale up the cluster.
  final pulumi.Input<int> maxNodeCount;
  /// The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= max_node_count.
  final pulumi.Input<int> minNodeCount;

  /// Creates a new [GkeNodePoolAutoscalingConfigResponse].
  /// [maxNodeCount] The maximum number of nodes in the node pool. Must be &gt;= min_node_count, and must be &gt; 0. Note: Quota must be sufficient to scale up the cluster.
  /// [minNodeCount] The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= max_node_count.
  const GkeNodePoolAutoscalingConfigResponse({
    required this.maxNodeCount,
    required this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
    };
  }

  factory GkeNodePoolAutoscalingConfigResponse.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolAutoscalingConfigResponse(
      maxNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxNodeCount'])),
      minNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minNodeCount'])),
    );
  }
}
