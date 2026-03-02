// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
class NodePoolAutoscalingResponse {
  /// Can this node pool be deleted automatically.
  final pulumi.Input<bool> autoprovisioned;
  /// Is autoscaling enabled for this node pool.
  final pulumi.Input<bool> enabled;
  /// Location policy used when scaling up a nodepool.
  final pulumi.Input<String> locationPolicy;
  /// Maximum number of nodes for one location in the NodePool. Must be >= min_node_count. There has to be enough quota to scale up the cluster.
  final pulumi.Input<int> maxNodeCount;
  /// Minimum number of nodes for one location in the NodePool. Must be >= 1 and <= max_node_count.
  final pulumi.Input<int> minNodeCount;
  /// Maximum number of nodes in the node pool. Must be greater than total_min_node_count. There has to be enough quota to scale up the cluster. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final pulumi.Input<int> totalMaxNodeCount;
  /// Minimum number of nodes in the node pool. Must be greater than 1 less than total_max_node_count. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final pulumi.Input<int> totalMinNodeCount;

  /// Creates a new [NodePoolAutoscalingResponse].
  /// [autoprovisioned] Can this node pool be deleted automatically.
  /// [enabled] Is autoscaling enabled for this node pool.
  /// [locationPolicy] Location policy used when scaling up a nodepool.
  /// [maxNodeCount] Maximum number of nodes for one location in the NodePool. Must be >= min_node_count. There has to be enough quota to scale up the cluster.
  /// [minNodeCount] Minimum number of nodes for one location in the NodePool. Must be >= 1 and <= max_node_count.
  /// [totalMaxNodeCount] Maximum number of nodes in the node pool. Must be greater than total_min_node_count. There has to be enough quota to scale up the cluster. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  /// [totalMinNodeCount] Minimum number of nodes in the node pool. Must be greater than 1 less than total_max_node_count. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  NodePoolAutoscalingResponse({
    required this.autoprovisioned,
    required this.enabled,
    required this.locationPolicy,
    required this.maxNodeCount,
    required this.minNodeCount,
    required this.totalMaxNodeCount,
    required this.totalMinNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoprovisioned': autoprovisioned,
      'enabled': enabled,
      'locationPolicy': locationPolicy,
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
      'totalMaxNodeCount': totalMaxNodeCount,
      'totalMinNodeCount': totalMinNodeCount,
    };
  }

  factory NodePoolAutoscalingResponse.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoscalingResponse(
      autoprovisioned: (map['autoprovisioned'] as bool).input(),
      enabled: (map['enabled'] as bool).input(),
      locationPolicy: (map['locationPolicy'] as String).input(),
      maxNodeCount: (map['maxNodeCount'] as int).input(),
      minNodeCount: (map['minNodeCount'] as int).input(),
      totalMaxNodeCount: (map['totalMaxNodeCount'] as int).input(),
      totalMinNodeCount: (map['totalMinNodeCount'] as int).input(),
    );
  }
}

