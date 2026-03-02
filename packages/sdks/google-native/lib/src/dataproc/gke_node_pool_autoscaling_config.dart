// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GkeNodePoolAutoscaling contains information the cluster autoscaler needs to adjust the size of the node pool to the current cluster usage.
class GkeNodePoolAutoscalingConfig {
  /// The maximum number of nodes in the node pool. Must be >= min_node_count, and must be > 0. Note: Quota must be sufficient to scale up the cluster.
  final pulumi.Input<int>? maxNodeCount;
  /// The minimum number of nodes in the node pool. Must be >= 0 and <= max_node_count.
  final pulumi.Input<int>? minNodeCount;

  /// Creates a new [GkeNodePoolAutoscalingConfig].
  /// [maxNodeCount] The maximum number of nodes in the node pool. Must be >= min_node_count, and must be > 0. Note: Quota must be sufficient to scale up the cluster.
  /// [minNodeCount] The minimum number of nodes in the node pool. Must be >= 0 and <= max_node_count.
  GkeNodePoolAutoscalingConfig({
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
      maxNodeCount: map['maxNodeCount'] == null ? null : (map['maxNodeCount'] as int).input(),
      minNodeCount: map['minNodeCount'] == null ? null : (map['minNodeCount'] as int).input(),
    );
  }
}

