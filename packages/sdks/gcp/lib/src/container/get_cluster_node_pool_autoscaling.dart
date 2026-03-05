// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterNodePoolAutoscaling {
  /// Location policy specifies the algorithm used when scaling-up the node pool. "BALANCED" - Is a best effort policy that aims to balance the sizes of available zones. "ANY" - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs.
  final pulumi.Input<String> locationPolicy;
  /// Maximum number of nodes per zone in the node pool. Must be &gt;= min_node_count. Cannot be used with total limits.
  final pulumi.Input<int> maxNodeCount;
  /// Minimum number of nodes per zone in the node pool. Must be &gt;=0 and &lt;= max_node_count. Cannot be used with total limits.
  final pulumi.Input<int> minNodeCount;
  /// Maximum number of all nodes in the node pool. Must be &gt;= total_min_node_count. Cannot be used with per zone limits.
  final pulumi.Input<int> totalMaxNodeCount;
  /// Minimum number of all nodes in the node pool. Must be &gt;=0 and &lt;= total_max_node_count. Cannot be used with per zone limits.
  final pulumi.Input<int> totalMinNodeCount;

  /// Creates a new [GetClusterNodePoolAutoscaling].
  /// [locationPolicy] Location policy specifies the algorithm used when scaling-up the node pool. "BALANCED" - Is a best effort policy that aims to balance the sizes of available zones. "ANY" - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs.
  /// [maxNodeCount] Maximum number of nodes per zone in the node pool. Must be &gt;= min_node_count. Cannot be used with total limits.
  /// [minNodeCount] Minimum number of nodes per zone in the node pool. Must be &gt;=0 and &lt;= max_node_count. Cannot be used with total limits.
  /// [totalMaxNodeCount] Maximum number of all nodes in the node pool. Must be &gt;= total_min_node_count. Cannot be used with per zone limits.
  /// [totalMinNodeCount] Minimum number of all nodes in the node pool. Must be &gt;=0 and &lt;= total_max_node_count. Cannot be used with per zone limits.
  GetClusterNodePoolAutoscaling({
    required this.locationPolicy,
    required this.maxNodeCount,
    required this.minNodeCount,
    required this.totalMaxNodeCount,
    required this.totalMinNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationPolicy': locationPolicy,
      'maxNodeCount': maxNodeCount,
      'minNodeCount': minNodeCount,
      'totalMaxNodeCount': totalMaxNodeCount,
      'totalMinNodeCount': totalMinNodeCount,
    };
  }

  factory GetClusterNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolAutoscaling(
      locationPolicy: pulumi.Input.fromValue(map['locationPolicy'] as String),
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      minNodeCount: pulumi.Input.fromValue(map['minNodeCount'] as int),
      totalMaxNodeCount: pulumi.Input.fromValue(map['totalMaxNodeCount'] as int),
      totalMinNodeCount: pulumi.Input.fromValue(map['totalMinNodeCount'] as int),
    );
  }
}

