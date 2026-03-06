// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lke_cluster_pool_autoscaler.dart';
import 'lke_cluster_pool_node.dart';
import 'lke_cluster_pool_taint.dart';

class LkeClusterPool {
  /// When specified, the number of nodes autoscales within the defined minimum and maximum values.
  final pulumi.Input<LkeClusterPoolAutoscaler>? autoscaler;
  /// The number of nodes in the Node Pool. If undefined with an autoscaler the initial node count will equal the autoscaler minimum.
  final pulumi.Input<int>? count;
  /// The disk encryption policy for nodes in this pool.
  final pulumi.Input<String>? diskEncryption;
  /// The ID of the firewall to associate with this node pool. If not provided, default firewall will be associated.
  final pulumi.Input<int>? firewallId;
  /// The ID of the node.
  final pulumi.Input<int>? id;
  /// The k8s version of the nodes in this Node Pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  final pulumi.Input<String>? k8sVersion;
  /// A label for the Node Pool. If not provided, it defaults to empty string.
  final pulumi.Input<String>? label;
  /// A map of key/value pairs to apply to all nodes in the pool. Labels are used to identify and organize Kubernetes resources within your cluster.
  final pulumi.Input<Map<String, String>>? labels;
  /// The nodes in the node pool.
  final pulumi.Input<List<LkeClusterPoolNode>>? nodes;
  /// A set of tags applied to this node pool. Tags can be used to flag node pools as externally managed. See Externally Managed Node Pools for more details.
  final pulumi.Input<List<String>>? tags;
  /// Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. See [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).
  final pulumi.Input<List<LkeClusterPoolTaint>>? taints;
  /// A Linode Type for all of the nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  final pulumi.Input<String> type;
  /// The strategy for updating the Node Pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  final pulumi.Input<String>? updateStrategy;

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
  const LkeClusterPool({
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
      'autoscaler': ?pulumi.Input.mapOptionalInputValue<LkeClusterPoolAutoscaler, Map<String, dynamic>>(autoscaler, (value) => value.toMap()),
      'count': ?count,
      'diskEncryption': ?diskEncryption,
      'firewallId': ?firewallId,
      'id': ?id,
      'k8sVersion': ?k8sVersion,
      'label': ?label,
      'labels': ?labels,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<LkeClusterPoolNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<LkeClusterPoolNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<LkeClusterPoolTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<LkeClusterPoolTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'updateStrategy': ?updateStrategy,
    };
  }

  factory LkeClusterPool.fromMap(Map<String, dynamic> map) {
    return LkeClusterPool(
      autoscaler: (() { final guardedValue = map['autoscaler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LkeClusterPoolAutoscaler.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskEncryption: (() { final guardedValue = map['diskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallId: (() { final guardedValue = map['firewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      k8sVersion: (() { final guardedValue = map['k8sVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LkeClusterPoolNode>(guardedValue, (value) => LkeClusterPoolNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LkeClusterPoolTaint>(guardedValue, (value) => LkeClusterPoolTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

