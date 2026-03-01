// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_node_pool_taint.dart';

/// {@template pulumi_index_kubernetes_node_pool_kubernetes_node_pool_args_doc}
/// The set of arguments for KubernetesNodePool.
/// {@endtemplate}
/// {@macro pulumi_index_kubernetes_node_pool_kubernetes_node_pool_args_doc}
class KubernetesNodePoolArgs {
  /// Enable auto-scaling of the number of nodes in the node pool within the given min/max range.
  final pulumi.Input<bool>? autoScale;
  /// The ID of the Kubernetes cluster to which the node pool is associated.
  final pulumi.Input<String> clusterId;
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
  /// The slug identifier for the type of Droplet to be used as workers in the node pool.
  final pulumi.Input<String> size;
  /// A list of tag names to be applied to the Kubernetes cluster.
  final pulumi.Input<List<String>>? tags;
  /// A list of taints applied to all nodes in the pool.
  ///
  /// This resource supports customized create timeouts. The default timeout is 30 minutes.
  final pulumi.Input<List<KubernetesNodePoolTaint>>? taints;

  /// Creates a new [KubernetesNodePoolArgs].
  /// [autoScale] Enable auto-scaling of the number of nodes in the node pool within the given min/max range.
  /// [clusterId] The ID of the Kubernetes cluster to which the node pool is associated.
  /// [labels] A map of key/value pairs to apply to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  /// [maxNodes] If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  /// [minNodes] If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  /// [name] A name for the node pool.
  /// [nodeCount] The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value.
  /// [size] The slug identifier for the type of Droplet to be used as workers in the node pool.
  /// [tags] A list of tag names to be applied to the Kubernetes cluster.
  /// [taints] A list of taints applied to all nodes in the pool.
  KubernetesNodePoolArgs({
    pulumi.Output<bool>? autoScale,
    required pulumi.Output<String> clusterId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<int>? maxNodes,
    pulumi.Output<int>? minNodes,
    pulumi.Output<String>? name,
    pulumi.Output<int>? nodeCount,
    required pulumi.Output<String> size,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<List<KubernetesNodePoolTaint>>? taints,
  }) :
      autoScale = pulumi.Input.asOptionalInput<bool>(autoScale),
      clusterId = pulumi.Input.asInput<String>(clusterId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      maxNodes = pulumi.Input.asOptionalInput<int>(maxNodes),
      minNodes = pulumi.Input.asOptionalInput<int>(minNodes),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      size = pulumi.Input.asInput<String>(size),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      taints = pulumi.Input.asOptionalInput<List<KubernetesNodePoolTaint>>(taints);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScale': ?autoScale,
      'clusterId': clusterId,
      'labels': ?labels,
      'maxNodes': ?maxNodes,
      'minNodes': ?minNodes,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'size': size,
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<KubernetesNodePoolTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<KubernetesNodePoolTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KubernetesNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesNodePoolArgs(
      autoScale: map['autoScale'] == null ? null : pulumi.Output.create<bool>(map['autoScale'] as bool),
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      maxNodes: map['maxNodes'] == null ? null : pulumi.Output.create<int>(map['maxNodes'] as int),
      minNodes: map['minNodes'] == null ? null : pulumi.Output.create<int>(map['minNodes'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      size: pulumi.Output.create<String>(map['size'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      taints: map['taints'] == null ? null : pulumi.Output.create<List<KubernetesNodePoolTaint>>(pulumi.Input.decodeList<KubernetesNodePoolTaint>(map['taints'], (value) => KubernetesNodePoolTaint.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

