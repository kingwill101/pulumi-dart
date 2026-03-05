// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lke_node_pool_autoscaler.dart';
import 'lke_node_pool_node.dart';
import 'lke_node_pool_taint.dart';

/// Input properties used for looking up and filtering LkeNodePool resources.
class LkeNodePoolState {
  final pulumi.Input<LkeNodePoolAutoscaler>? autoscaler;
  /// ID of the LKE Cluster where to create the current Node Pool.
  final pulumi.Input<int>? clusterId;
  /// The disk encryption policy for nodes in this pool.
  final pulumi.Input<String>? diskEncryption;
  /// The ID of the firewall to associate with this node pool. If not provided, default firewall will be associated.
  final pulumi.Input<int>? firewallId;
  /// The k8s version of the nodes in this node pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  final pulumi.Input<String>? k8sVersion;
  /// A label for the Node Pool. If not provided, it defaults to empty string.
  final pulumi.Input<String>? label;
  /// A map attribute containing key-value pairs to be added as labels to nodes in the node pool. Labels help classify your nodes and to easily select subsets of objects. To learn more, review [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).
  final pulumi.Input<Map<String, String>>? labels;
  /// The number of nodes in the Node Pool. If undefined with an autoscaler the initial node count will equal the autoscaler minimum.
  final pulumi.Input<int>? nodeCount;
  /// A list of nodes in the node pool.
  final pulumi.Input<List<LkeNodePoolNode>>? nodes;
  /// An array of tags applied to the Node Pool. Tags can be used to flag node pools as externally managed, see Externally Managed Node Pools for more details.
  final pulumi.Input<List<String>>? tags;
  /// Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods.
  final pulumi.Input<List<LkeNodePoolTaint>>? taints;
  /// A Linode Type for all nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  final pulumi.Input<String>? type;
  /// The strategy for updating the node pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  ///
  /// * `autoscaler` - (Optional) If defined, an autoscaler will be enabled with the given configuration.
  ///
  /// * `taint` - (Optional) Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. To learn more, review [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).
  final pulumi.Input<String>? updateStrategy;

  /// Creates a new [LkeNodePoolState].
  /// [autoscaler] Optional.
  /// [clusterId] ID of the LKE Cluster where to create the current Node Pool.
  /// [diskEncryption] The disk encryption policy for nodes in this pool.
  /// [firewallId] The ID of the firewall to associate with this node pool. If not provided, default firewall will be associated.
  /// [k8sVersion] The k8s version of the nodes in this node pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  /// [label] A label for the Node Pool. If not provided, it defaults to empty string.
  /// [labels] A map attribute containing key-value pairs to be added as labels to nodes in the node pool. Labels help classify your nodes and to easily select subsets of objects. To learn more, review [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).
  /// [nodeCount] The number of nodes in the Node Pool. If undefined with an autoscaler the initial node count will equal the autoscaler minimum.
  /// [nodes] A list of nodes in the node pool.
  /// [tags] An array of tags applied to the Node Pool. Tags can be used to flag node pools as externally managed, see Externally Managed Node Pools for more details.
  /// [taints] Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods.
  /// [type] A Linode Type for all nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  /// [updateStrategy] The strategy for updating the node pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  LkeNodePoolState({
    this.autoscaler,
    this.clusterId,
    this.diskEncryption,
    this.firewallId,
    this.k8sVersion,
    this.label,
    this.labels,
    this.nodeCount,
    this.nodes,
    this.tags,
    this.taints,
    this.type,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaler': ?pulumi.Input.mapOptionalInputValue<LkeNodePoolAutoscaler, Map<String, dynamic>>(autoscaler, (value) => value.toMap()),
      'clusterId': ?clusterId,
      'diskEncryption': ?diskEncryption,
      'firewallId': ?firewallId,
      'k8sVersion': ?k8sVersion,
      'label': ?label,
      'labels': ?labels,
      'nodeCount': ?nodeCount,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<LkeNodePoolNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<LkeNodePoolNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'taints': ?pulumi.Input.mapOptionalInputValue<List<LkeNodePoolTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<LkeNodePoolTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'updateStrategy': ?updateStrategy,
    };
  }

  factory LkeNodePoolState.fromMap(Map<String, dynamic> map) {
    return LkeNodePoolState(
      autoscaler: (() { final guardedValue = map['autoscaler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LkeNodePoolAutoscaler.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskEncryption: (() { final guardedValue = map['diskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallId: (() { final guardedValue = map['firewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      k8sVersion: (() { final guardedValue = map['k8sVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LkeNodePoolNode>(guardedValue, (value) => LkeNodePoolNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      taints: (() { final guardedValue = map['taints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LkeNodePoolTaint>(guardedValue, (value) => LkeNodePoolTaint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

