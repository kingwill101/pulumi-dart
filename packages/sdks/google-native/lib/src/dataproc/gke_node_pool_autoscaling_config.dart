// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GkeNodePoolAutoscaling contains information the cluster autoscaler needs to adjust the size of the node pool to the current cluster usage.
class GkeNodePoolAutoscalingConfig {
  /// The maximum number of nodes in the node pool. Must be &gt;= min_node_count, and must be &gt; 0. Note: Quota must be sufficient to scale up the cluster.
  final pulumi.Input<int>? maxNodeCount;
  /// The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= max_node_count.
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [GkeNodePoolAutoscalingConfig].
  /// [maxNodeCount] The maximum number of nodes in the node pool. Must be &gt;= min_node_count, and must be &gt; 0. Note: Quota must be sufficient to scale up the cluster.
  /// [minNodeCount] The minimum number of nodes in the node pool. Must be &gt;= 0 and &lt;= max_node_count.
  const GkeNodePoolAutoscalingConfig({
    this.maxNodeCount,
    this.minNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
    };
  }

  factory GkeNodePoolAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return GkeNodePoolAutoscalingConfig(
      maxNodeCount: (() { final guardedValue = map['maxNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

