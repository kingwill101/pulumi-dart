// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_autoscaling_location_policy.dart';

/// NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
class NodePoolAutoscaling {
  /// Can this node pool be deleted automatically.
  final pulumi.Input<bool>? autoprovisioned;

  /// Is autoscaling enabled for this node pool.
  final pulumi.Input<bool>? enabled;

  /// Location policy used when scaling up a nodepool.
  final pulumi.Input<NodePoolAutoscalingLocationPolicy>? locationPolicy;

  /// Maximum number of nodes for one location in the NodePool. Must be &gt;= min_node_count. There has to be enough quota to scale up the cluster.
  final pulumi.Input<int>? maxNodeCount;

  /// Minimum number of nodes for one location in the NodePool. Must be &gt;= 1 and &lt;= max_node_count.
  final pulumi.Input<int>? minNodeCount;

  /// Maximum number of nodes in the node pool. Must be greater than total_min_node_count. There has to be enough quota to scale up the cluster. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final pulumi.Input<int>? totalMaxNodeCount;

  /// Minimum number of nodes in the node pool. Must be greater than 1 less than total_max_node_count. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final pulumi.Input<int>? totalMinNodeCount;

  /// Creates a new [NodePoolAutoscaling].
  /// [autoprovisioned] Can this node pool be deleted automatically.
  /// [enabled] Is autoscaling enabled for this node pool.
  /// [locationPolicy] Location policy used when scaling up a nodepool.
  /// [maxNodeCount] Maximum number of nodes for one location in the NodePool. Must be &gt;= min_node_count. There has to be enough quota to scale up the cluster.
  /// [minNodeCount] Minimum number of nodes for one location in the NodePool. Must be &gt;= 1 and &lt;= max_node_count.
  /// [totalMaxNodeCount] Maximum number of nodes in the node pool. Must be greater than total_min_node_count. There has to be enough quota to scale up the cluster. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  /// [totalMinNodeCount] Minimum number of nodes in the node pool. Must be greater than 1 less than total_max_node_count. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  NodePoolAutoscaling({
    this.autoprovisioned,
    this.enabled,
    this.locationPolicy,
    this.maxNodeCount,
    this.minNodeCount,
    this.totalMaxNodeCount,
    this.totalMinNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoprovisioned': ?autoprovisioned,
      'enabled': ?enabled,
      'locationPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            NodePoolAutoscalingLocationPolicy,
            String
          >(locationPolicy, (value) => value.wireValue),
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
      'totalMaxNodeCount': ?totalMaxNodeCount,
      'totalMinNodeCount': ?totalMinNodeCount,
    };
  }

  factory NodePoolAutoscaling.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoscaling(
      autoprovisioned: (() {
        final guardedValue = map['autoprovisioned'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      locationPolicy: (() {
        final guardedValue = map['locationPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          NodePoolAutoscalingLocationPolicy.fromValue(guardedValue as String),
        );
      })(),
      maxNodeCount: (() {
        final guardedValue = map['maxNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minNodeCount: (() {
        final guardedValue = map['minNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      totalMaxNodeCount: (() {
        final guardedValue = map['totalMaxNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      totalMinNodeCount: (() {
        final guardedValue = map['totalMinNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
