// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolAutoscaling {
  /// Location policy specifies the algorithm used when
  /// scaling-up the node pool. Location policy is supported only in 1.24.1+ clusters.
  /// * "BALANCED" - Is a best effort policy that aims to balance the sizes of available zones.
  /// * "ANY" - Instructs the cluster autoscaler to prioritize utilization of unused reservations,
  /// and reduce preemption risk for Spot VMs.
  final pulumi.Input<String?>? locationPolicy;
  /// Maximum number of nodes per zone in the NodePool.
  /// Must be &gt;= min_node_count. Cannot be used with total limits.
  final pulumi.Input<int?>? maxNodeCount;
  /// Minimum number of nodes per zone in the NodePool.
  /// Must be &gt;=0 and &lt;= `maxNodeCount`. Cannot be used with total limits.
  final pulumi.Input<int?>? minNodeCount;
  /// Total maximum number of nodes in the NodePool.
  /// Must be &gt;= total_min_node_count. Cannot be used with per zone limits.
  /// Total size limits are supported only in 1.24.1+ clusters.
  final pulumi.Input<int?>? totalMaxNodeCount;
  /// Total minimum number of nodes in the NodePool.
  /// Must be &gt;=0 and &lt;= `totalMaxNodeCount`. Cannot be used with per zone limits.
  /// Total size limits are supported only in 1.24.1+ clusters.
  final pulumi.Input<int?>? totalMinNodeCount;

  /// Creates a new [NodePoolAutoscaling].
  /// [locationPolicy] Location policy specifies the algorithm used when
  /// [maxNodeCount] Maximum number of nodes per zone in the NodePool.
  /// [minNodeCount] Minimum number of nodes per zone in the NodePool.
  /// [totalMaxNodeCount] Total maximum number of nodes in the NodePool.
  /// [totalMinNodeCount] Total minimum number of nodes in the NodePool.
  const NodePoolAutoscaling({
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

  factory NodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoscaling(
      locationPolicy: (() { final guardedValue = map['locationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxNodeCount: (() { final guardedValue = map['maxNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      totalMaxNodeCount: (() { final guardedValue = map['totalMaxNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      totalMinNodeCount: (() { final guardedValue = map['totalMinNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
