// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterNodePoolAutoscaling {
  /// Location policy specifies the algorithm used when scaling-up the node pool. "BALANCED" - Is a best effort policy that aims to balance the sizes of available zones. "ANY" - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs.
  final pulumi.Input<String>? locationPolicy;
  /// Maximum number of nodes per zone in the node pool. Must be >= min_node_count. Cannot be used with total limits.
  final pulumi.Input<int>? maxNodeCount;
  /// Minimum number of nodes per zone in the node pool. Must be >=0 and <= max_node_count. Cannot be used with total limits.
  final pulumi.Input<int>? minNodeCount;
  /// Maximum number of all nodes in the node pool. Must be >= total_min_node_count. Cannot be used with per zone limits.
  final pulumi.Input<int>? totalMaxNodeCount;
  /// Minimum number of all nodes in the node pool. Must be >=0 and <= total_max_node_count. Cannot be used with per zone limits.
  final pulumi.Input<int>? totalMinNodeCount;

  /// Creates a new [ClusterNodePoolAutoscaling].
  /// [locationPolicy] Location policy specifies the algorithm used when scaling-up the node pool. "BALANCED" - Is a best effort policy that aims to balance the sizes of available zones. "ANY" - Instructs the cluster autoscaler to prioritize utilization of unused reservations, and reduces preemption risk for Spot VMs.
  /// [maxNodeCount] Maximum number of nodes per zone in the node pool. Must be >= min_node_count. Cannot be used with total limits.
  /// [minNodeCount] Minimum number of nodes per zone in the node pool. Must be >=0 and <= max_node_count. Cannot be used with total limits.
  /// [totalMaxNodeCount] Maximum number of all nodes in the node pool. Must be >= total_min_node_count. Cannot be used with per zone limits.
  /// [totalMinNodeCount] Minimum number of all nodes in the node pool. Must be >=0 and <= total_max_node_count. Cannot be used with per zone limits.
  ClusterNodePoolAutoscaling({
    this.locationPolicy,
    this.maxNodeCount,
    this.minNodeCount,
    this.totalMaxNodeCount,
    this.totalMinNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationPolicy': ?locationPolicy,
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
      'totalMaxNodeCount': ?totalMaxNodeCount,
      'totalMinNodeCount': ?totalMinNodeCount,
    };
  }

  factory ClusterNodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterNodePoolAutoscaling(
      locationPolicy: map['locationPolicy'] == null ? null : (map['locationPolicy']! as String).input(),
      maxNodeCount: map['maxNodeCount'] == null ? null : (map['maxNodeCount']! as int).input(),
      minNodeCount: map['minNodeCount'] == null ? null : (map['minNodeCount']! as int).input(),
      totalMaxNodeCount: map['totalMaxNodeCount'] == null ? null : (map['totalMaxNodeCount']! as int).input(),
      totalMinNodeCount: map['totalMinNodeCount'] == null ? null : (map['totalMinNodeCount']! as int).input(),
    );
  }
}

