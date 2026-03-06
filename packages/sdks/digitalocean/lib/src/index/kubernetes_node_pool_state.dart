// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_node_pool_node.dart';
import 'kubernetes_node_pool_taint.dart';

/// Input properties used for looking up and filtering KubernetesNodePool resources.
class KubernetesNodePoolState {
  /// A computed field representing the actual number of nodes in the node pool, which is especially useful when auto-scaling is enabled.
  final pulumi.Input<int>? actualNodeCount;
  /// Enable auto-scaling of the number of nodes in the node pool within the given min/max range.
  final pulumi.Input<bool>? autoScale;
  /// The ID of the Kubernetes cluster to which the node pool is associated.
  final pulumi.Input<String>? clusterId;
  /// A map of key/value pairs to apply to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  final pulumi.Input<Map<String, String>>? labels;
  /// If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  final pulumi.Input<int>? maxNodes;
  /// If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  final pulumi.Input<int>? minNodes;
  /// A name for the node pool.
  final pulumi.Input<String>? name;
  /// The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value.
  final pulumi.Input<int>? nodeCount;
  /// A list of nodes in the pool. Each node exports the following attributes:
  final pulumi.Input<List<KubernetesNodePoolNode>>? nodes;
  /// The slug identifier for the type of Droplet to be used as workers in the node pool.
  final pulumi.Input<String>? size;
  /// A list of tag names to be applied to the Kubernetes cluster.
  final pulumi.Input<List<String>>? tags;
  /// A list of taints applied to all nodes in the pool.
  ///
  /// This resource supports customized create timeouts. The default timeout is 30 minutes.
  final pulumi.Input<List<KubernetesNodePoolTaint>>? taints;

  /// Creates a new [KubernetesNodePoolState].
  /// [actualNodeCount] A computed field representing the actual number of nodes in the node pool, which is especially useful when auto-scaling is enabled.
  /// [autoScale] Enable auto-scaling of the number of nodes in the node pool within the given min/max range.
  /// [clusterId] The ID of the Kubernetes cluster to which the node pool is associated.
  /// [labels] A map of key/value pairs to apply to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  /// [maxNodes] If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  /// [minNodes] If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  /// [name] A name for the node pool.
  /// [nodeCount] The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value.
  /// [nodes] A list of nodes in the pool. Each node exports the following attributes:
  /// [size] The slug identifier for the type of Droplet to be used as workers in the node pool.
  /// [tags] A list of tag names to be applied to the Kubernetes cluster.
  /// [taints] A list of taints applied to all nodes in the pool.
  const KubernetesNodePoolState({
    this.actualNodeCount,
    this.autoScale,
    this.clusterId,
    this.labels,
    this.maxNodes,
    this.minNodes,
    this.name,
    this.nodeCount,
    this.nodes,
    this.size,
    this.tags,
    this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualNodeCount': ?actualNodeCount,
      'autoScale': ?autoScale,
      'clusterId': ?clusterId,
      'labels': ?labels,
      'maxNodes': ?maxNodes,
      'minNodes': ?minNodes,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<KubernetesNodePoolNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<KubernetesNodePoolNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'size': ?size,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<KubernetesNodePoolTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<KubernetesNodePoolTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KubernetesNodePoolState.fromMap(Map<String, dynamic> map) {
    return KubernetesNodePoolState(
      actualNodeCount: (() { final guardedValue = map['actualNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoScale: (() { final guardedValue = map['autoScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      maxNodes: (() { final guardedValue = map['maxNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minNodes: (() { final guardedValue = map['minNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesNodePoolNode>(guardedValue, (value) => KubernetesNodePoolNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesNodePoolTaint>(guardedValue, (value) => KubernetesNodePoolTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

