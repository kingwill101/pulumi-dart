// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_autoscaling_location_policy_container_v1beta1.dart';

/// NodePoolAutoscaling contains information required by cluster autoscaler to adjust the size of the node pool to the current cluster usage.
class NodePoolAutoscalingContainerV1beta1 {
  /// Can this node pool be deleted automatically.
  final pulumi.Input<bool>? autoprovisioned;
  /// Is autoscaling enabled for this node pool.
  final pulumi.Input<bool>? enabled;
  /// Location policy used when scaling up a nodepool.
  final pulumi.Input<NodePoolAutoscalingLocationPolicyContainerV1beta1>? locationPolicy;
  /// Maximum number of nodes for one location in the NodePool. Must be >= min_node_count. There has to be enough quota to scale up the cluster.
  final pulumi.Input<int>? maxNodeCount;
  /// Minimum number of nodes for one location in the NodePool. Must be >= 1 and <= max_node_count.
  final pulumi.Input<int>? minNodeCount;
  /// Maximum number of nodes in the node pool. Must be greater than total_min_node_count. There has to be enough quota to scale up the cluster. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final pulumi.Input<int>? totalMaxNodeCount;
  /// Minimum number of nodes in the node pool. Must be greater than 1 less than total_max_node_count. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  final pulumi.Input<int>? totalMinNodeCount;

  /// Creates a new [NodePoolAutoscalingContainerV1beta1].
  /// [autoprovisioned] Can this node pool be deleted automatically.
  /// [enabled] Is autoscaling enabled for this node pool.
  /// [locationPolicy] Location policy used when scaling up a nodepool.
  /// [maxNodeCount] Maximum number of nodes for one location in the NodePool. Must be >= min_node_count. There has to be enough quota to scale up the cluster.
  /// [minNodeCount] Minimum number of nodes for one location in the NodePool. Must be >= 1 and <= max_node_count.
  /// [totalMaxNodeCount] Maximum number of nodes in the node pool. Must be greater than total_min_node_count. There has to be enough quota to scale up the cluster. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  /// [totalMinNodeCount] Minimum number of nodes in the node pool. Must be greater than 1 less than total_max_node_count. The total_*_node_count fields are mutually exclusive with the *_node_count fields.
  NodePoolAutoscalingContainerV1beta1({
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
      'locationPolicy': ?pulumi.Input.mapOptionalInputValue<NodePoolAutoscalingLocationPolicyContainerV1beta1, String>(locationPolicy, (value) => value.value),
      'maxNodeCount': ?maxNodeCount,
      'minNodeCount': ?minNodeCount,
      'totalMaxNodeCount': ?totalMaxNodeCount,
      'totalMinNodeCount': ?totalMinNodeCount,
    };
  }

  factory NodePoolAutoscalingContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoscalingContainerV1beta1(
      autoprovisioned: map['autoprovisioned'] == null ? null : (map['autoprovisioned'] as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      locationPolicy: map['locationPolicy'] == null ? null : (NodePoolAutoscalingLocationPolicyContainerV1beta1.fromValue(map['locationPolicy'] as String)).input(),
      maxNodeCount: map['maxNodeCount'] == null ? null : (map['maxNodeCount'] as int).input(),
      minNodeCount: map['minNodeCount'] == null ? null : (map['minNodeCount'] as int).input(),
      totalMaxNodeCount: map['totalMaxNodeCount'] == null ? null : (map['totalMaxNodeCount'] as int).input(),
      totalMinNodeCount: map['totalMinNodeCount'] == null ? null : (map['totalMinNodeCount'] as int).input(),
    );
  }
}

