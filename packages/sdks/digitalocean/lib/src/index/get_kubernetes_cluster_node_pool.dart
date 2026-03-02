// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_node_pool_node.dart';
import 'get_kubernetes_cluster_node_pool_taint.dart';

class GetKubernetesClusterNodePool {
  /// The actual number of nodes in the node pool, which is especially useful when auto-scaling is enabled.
  final pulumi.Input<int> actualNodeCount;
  /// A boolean indicating whether auto-scaling is enabled on the node pool.
  final pulumi.Input<bool> autoScale;
  /// A unique ID that can be used to identify and reference the node.
  final pulumi.Input<String> id;
  /// A map of key/value pairs applied to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  final pulumi.Input<Map<String, String>> labels;
  /// If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  final pulumi.Input<int> maxNodes;
  /// If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  final pulumi.Input<int> minNodes;
  /// The name of Kubernetes cluster.
  final pulumi.Input<String> name;
  /// The number of Droplet instances in the node pool.
  final pulumi.Input<int> nodeCount;
  /// A list of nodes in the pool. Each node exports the following attributes:
  final pulumi.Input<List<GetKubernetesClusterNodePoolNode>> nodes;
  /// The slug identifier for the type of Droplet used as workers in the node pool.
  final pulumi.Input<String> size;
  /// A list of tag names applied to the node pool.
  final pulumi.Input<List<String>> tags;
  /// A list of taints applied to all nodes in the pool. Each taint exports the following attributes:
  final pulumi.Input<List<GetKubernetesClusterNodePoolTaint>> taints;

  /// Creates a new [GetKubernetesClusterNodePool].
  /// [actualNodeCount] The actual number of nodes in the node pool, which is especially useful when auto-scaling is enabled.
  /// [autoScale] A boolean indicating whether auto-scaling is enabled on the node pool.
  /// [id] A unique ID that can be used to identify and reference the node.
  /// [labels] A map of key/value pairs applied to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  /// [maxNodes] If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  /// [minNodes] If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  /// [name] The name of Kubernetes cluster.
  /// [nodeCount] The number of Droplet instances in the node pool.
  /// [nodes] A list of nodes in the pool. Each node exports the following attributes:
  /// [size] The slug identifier for the type of Droplet used as workers in the node pool.
  /// [tags] A list of tag names applied to the node pool.
  /// [taints] A list of taints applied to all nodes in the pool. Each taint exports the following attributes:
  GetKubernetesClusterNodePool({
    required this.actualNodeCount,
    required this.autoScale,
    required this.id,
    required this.labels,
    required this.maxNodes,
    required this.minNodes,
    required this.name,
    required this.nodeCount,
    required this.nodes,
    required this.size,
    required this.tags,
    required this.taints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualNodeCount': actualNodeCount,
      'autoScale': autoScale,
      'id': id,
      'labels': labels,
      'maxNodes': maxNodes,
      'minNodes': minNodes,
      'name': name,
      'nodeCount': nodeCount,
      'nodes': pulumi.Input.mapInputValue<List<GetKubernetesClusterNodePoolNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<GetKubernetesClusterNodePoolNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'size': size,
      'tags': tags,
      'taints': pulumi.Input.mapInputValue<List<GetKubernetesClusterNodePoolTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<GetKubernetesClusterNodePoolTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetKubernetesClusterNodePool.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterNodePool(
      actualNodeCount: (map['actualNodeCount'] as int).input(),
      autoScale: (map['autoScale'] as bool).input(),
      id: (map['id'] as String).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      maxNodes: (map['maxNodes'] as int).input(),
      minNodes: (map['minNodes'] as int).input(),
      name: (map['name'] as String).input(),
      nodeCount: (map['nodeCount'] as int).input(),
      nodes: (pulumi.Input.decodeList<GetKubernetesClusterNodePoolNode>(map['nodes'], (value) => GetKubernetesClusterNodePoolNode.fromMap((value as Map).cast<String, dynamic>()))).input(),
      size: (map['size'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      taints: (pulumi.Input.decodeList<GetKubernetesClusterNodePoolTaint>(map['taints'], (value) => GetKubernetesClusterNodePoolTaint.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

