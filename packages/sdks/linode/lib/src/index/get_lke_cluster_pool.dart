// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lke_cluster_pool_autoscaler.dart';
import 'get_lke_cluster_pool_disk.dart';
import 'get_lke_cluster_pool_node.dart';
import 'get_lke_cluster_pool_taint.dart';

class GetLkeClusterPool {
  /// The configuration options for the autoscaler. This field only contains an autoscaler configuration if autoscaling is enabled on this cluster.
  final pulumi.Input<List<GetLkeClusterPoolAutoscaler>> autoscalers;
  /// The number of nodes in the Node Pool.
  final pulumi.Input<int> count;
  /// The disk encryption policy for nodes in this pool.
  final pulumi.Input<String> diskEncryption;
  /// This Node Pool’s custom disk layout.
  final pulumi.Input<List<GetLkeClusterPoolDisk>> disks;
  /// The ID of the firewall associated with the Node Pool.
  final pulumi.Input<int> firewallId;
  /// The LKE Cluster's ID.
  final pulumi.Input<int> id;
  /// The k8s version of the nodes in this Node Pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  final pulumi.Input<String> k8sVersion;
  /// The label of the Node Pool.
  final pulumi.Input<String>? label;
  /// Key-value pairs added as labels to nodes in the node pool. Labels help classify your nodes and to easily select subsets of objects.
  final pulumi.Input<Map<String, String>> labels;
  /// The nodes in the Node Pool.
  final pulumi.Input<List<GetLkeClusterPoolNode>> nodes;
  /// An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>> tags;
  /// Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods.
  final pulumi.Input<List<GetLkeClusterPoolTaint>> taints;
  /// The linode type for all of the nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  final pulumi.Input<String> type;
  /// The strategy for updating the Node Pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  final pulumi.Input<String> updateStrategy;

  /// Creates a new [GetLkeClusterPool].
  /// [autoscalers] The configuration options for the autoscaler. This field only contains an autoscaler configuration if autoscaling is enabled on this cluster.
  /// [count] The number of nodes in the Node Pool.
  /// [diskEncryption] The disk encryption policy for nodes in this pool.
  /// [disks] This Node Pool’s custom disk layout.
  /// [firewallId] The ID of the firewall associated with the Node Pool.
  /// [id] The LKE Cluster's ID.
  /// [k8sVersion] The k8s version of the nodes in this Node Pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  /// [label] The label of the Node Pool.
  /// [labels] Key-value pairs added as labels to nodes in the node pool. Labels help classify your nodes and to easily select subsets of objects.
  /// [nodes] The nodes in the Node Pool.
  /// [tags] An array of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [taints] Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods.
  /// [type] The linode type for all of the nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  /// [updateStrategy] The strategy for updating the Node Pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  GetLkeClusterPool({
    required this.autoscalers,
    required this.count,
    required this.diskEncryption,
    required this.disks,
    required this.firewallId,
    required this.id,
    required this.k8sVersion,
    this.label,
    required this.labels,
    required this.nodes,
    required this.tags,
    required this.taints,
    required this.type,
    required this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalers': pulumi.Input.mapInputValue<List<GetLkeClusterPoolAutoscaler>, List<Map<String, dynamic>>>(autoscalers, (value) => pulumi.Input.encodeList<GetLkeClusterPoolAutoscaler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'count': count,
      'diskEncryption': diskEncryption,
      'disks': pulumi.Input.mapInputValue<List<GetLkeClusterPoolDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<GetLkeClusterPoolDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallId': firewallId,
      'id': id,
      'k8sVersion': k8sVersion,
      'label': ?label,
      'labels': labels,
      'nodes': pulumi.Input.mapInputValue<List<GetLkeClusterPoolNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<GetLkeClusterPoolNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': tags,
      'taints': pulumi.Input.mapInputValue<List<GetLkeClusterPoolTaint>, List<Map<String, dynamic>>>(taints, (value) => pulumi.Input.encodeList<GetLkeClusterPoolTaint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'updateStrategy': updateStrategy,
    };
  }

  factory GetLkeClusterPool.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterPool(
      autoscalers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLkeClusterPoolAutoscaler>(map['autoscalers']!, (value) => GetLkeClusterPoolAutoscaler.fromMap((value as Map).cast<String, dynamic>()))),
      count: pulumi.Input.fromValue(map['count'] as int),
      diskEncryption: pulumi.Input.fromValue(map['diskEncryption'] as String),
      disks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLkeClusterPoolDisk>(map['disks']!, (value) => GetLkeClusterPoolDisk.fromMap((value as Map).cast<String, dynamic>()))),
      firewallId: pulumi.Input.fromValue(map['firewallId'] as int),
      id: pulumi.Input.fromValue(map['id'] as int),
      k8sVersion: pulumi.Input.fromValue(map['k8sVersion'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      nodes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLkeClusterPoolNode>(map['nodes']!, (value) => GetLkeClusterPoolNode.fromMap((value as Map).cast<String, dynamic>()))),
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
      taints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetLkeClusterPoolTaint>(map['taints']!, (value) => GetLkeClusterPoolTaint.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
      updateStrategy: pulumi.Input.fromValue(map['updateStrategy'] as String),
    );
  }
}

