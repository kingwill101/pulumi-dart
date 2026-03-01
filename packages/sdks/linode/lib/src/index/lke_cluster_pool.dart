// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lke_cluster_pool_autoscaler.dart';
import 'lke_cluster_pool_node.dart';
import 'lke_cluster_pool_taint.dart';

class LkeClusterPool {
  /// When specified, the number of nodes autoscales within the defined minimum and maximum values.
  final LkeClusterPoolAutoscaler? autoscaler;
  /// The number of nodes in the Node Pool. If undefined with an autoscaler the initial node count will equal the autoscaler minimum.
  final int? count;
  /// The disk encryption policy for nodes in this pool.
  final String? diskEncryption;
  /// The ID of the firewall to associate with this node pool. If not provided, default firewall will be associated.
  final int? firewallId;
  /// The ID of the node.
  final int? id;
  /// The k8s version of the nodes in this Node Pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  final String? k8sVersion;
  /// A label for the Node Pool. If not provided, it defaults to empty string.
  final String? label;
  /// A map of key/value pairs to apply to all nodes in the pool. Labels are used to identify and organize Kubernetes resources within your cluster.
  final Map<String, String>? labels;
  /// The nodes in the node pool.
  final List<LkeClusterPoolNode>? nodes;
  /// A set of tags applied to this node pool. Tags can be used to flag node pools as externally managed. See Externally Managed Node Pools for more details.
  final List<String>? tags;
  /// Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. See [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).
  final List<LkeClusterPoolTaint>? taints;
  /// A Linode Type for all of the nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  final String type;
  /// The strategy for updating the Node Pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  final String? updateStrategy;

  /// Creates a new [LkeClusterPool].
  /// [autoscaler] When specified, the number of nodes autoscales within the defined minimum and maximum values.
  /// [count] The number of nodes in the Node Pool. If undefined with an autoscaler the initial node count will equal the autoscaler minimum.
  /// [diskEncryption] The disk encryption policy for nodes in this pool.
  /// [firewallId] The ID of the firewall to associate with this node pool. If not provided, default firewall will be associated.
  /// [id] The ID of the node.
  /// [k8sVersion] The k8s version of the nodes in this Node Pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  /// [label] A label for the Node Pool. If not provided, it defaults to empty string.
  /// [labels] A map of key/value pairs to apply to all nodes in the pool. Labels are used to identify and organize Kubernetes resources within your cluster.
  /// [nodes] The nodes in the node pool.
  /// [tags] A set of tags applied to this node pool. Tags can be used to flag node pools as externally managed. See Externally Managed Node Pools for more details.
  /// [taints] Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. See [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).
  /// [type] A Linode Type for all of the nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  /// [updateStrategy] The strategy for updating the Node Pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  LkeClusterPool({
    this.autoscaler,
    this.count,
    this.diskEncryption,
    this.firewallId,
    this.id,
    this.k8sVersion,
    this.label,
    this.labels,
    this.nodes,
    this.tags,
    this.taints,
    required this.type,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaler': ?autoscaler == null ? null : autoscaler!.toMap(),
      'count': ?count,
      'diskEncryption': ?diskEncryption,
      'firewallId': ?firewallId,
      'id': ?id,
      'k8sVersion': ?k8sVersion,
      'label': ?label,
      'labels': ?labels,
      'nodes': ?nodes == null ? null : pulumi.Input.encodeList<LkeClusterPoolNode, Map<String, dynamic>>(nodes!, (value) => value.toMap()),
      'tags': ?tags,
      'taints': ?taints == null ? null : pulumi.Input.encodeList<LkeClusterPoolTaint, Map<String, dynamic>>(taints!, (value) => value.toMap()),
      'type': type,
      'updateStrategy': ?updateStrategy,
    };
  }

  factory LkeClusterPool.fromMap(Map<String, dynamic> map) {
    return LkeClusterPool(
      autoscaler: map['autoscaler'] == null ? null : LkeClusterPoolAutoscaler.fromMap((map['autoscaler'] as Map).cast<String, dynamic>()),
      count: map['count'] == null ? null : map['count'] as int,
      diskEncryption: map['diskEncryption'] == null ? null : map['diskEncryption'] as String,
      firewallId: map['firewallId'] == null ? null : map['firewallId'] as int,
      id: map['id'] == null ? null : map['id'] as int,
      k8sVersion: map['k8sVersion'] == null ? null : map['k8sVersion'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      nodes: map['nodes'] == null ? null : pulumi.Input.decodeList<LkeClusterPoolNode>(map['nodes'], (value) => LkeClusterPoolNode.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      taints: map['taints'] == null ? null : pulumi.Input.decodeList<LkeClusterPoolTaint>(map['taints'], (value) => LkeClusterPoolTaint.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      updateStrategy: map['updateStrategy'] == null ? null : map['updateStrategy'] as String,
    );
  }
}

