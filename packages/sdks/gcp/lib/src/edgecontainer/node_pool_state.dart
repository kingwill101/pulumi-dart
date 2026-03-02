// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_local_disk_encryption.dart';
import 'node_pool_node_config.dart';

/// Input properties used for looking up and filtering NodePool resources.
class NodePoolState {
  /// The name of the target Distributed Cloud Edge Cluster.
  final pulumi.Input<String>? cluster;
  /// The time when the node pool was created.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Local disk encryption options. This field is only used when enabling CMEK support.
  /// Structure is documented below.
  final pulumi.Input<NodePoolLocalDiskEncryption>? localDiskEncryption;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// Only machines matching this filter will be allowed to join the node pool.
  /// The filtering language accepts strings like "name=<name>", and is
  /// documented in more detail in [AIP-160](https://google.aip.dev/160).
  final pulumi.Input<String>? machineFilter;
  /// The resource name of the node pool.
  final pulumi.Input<String>? name;
  /// Configuration for each node in the NodePool
  /// Structure is documented below.
  final pulumi.Input<NodePoolNodeConfig>? nodeConfig;
  /// The number of nodes in the pool.
  final pulumi.Input<int>? nodeCount;
  /// Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  final pulumi.Input<String>? nodeLocation;
  /// The lowest release version among all worker nodes.
  final pulumi.Input<String>? nodeVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The time when the node pool was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [NodePoolState].
  /// [cluster] The name of the target Distributed Cloud Edge Cluster.
  /// [createTime] The time when the node pool was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels associated with this resource.
  /// [localDiskEncryption] Local disk encryption options. This field is only used when enabling CMEK support.
  /// [location] The location of the resource.
  /// [machineFilter] Only machines matching this filter will be allowed to join the node pool.
  /// [name] The resource name of the node pool.
  /// [nodeConfig] Configuration for each node in the NodePool
  /// [nodeCount] The number of nodes in the pool.
  /// [nodeLocation] Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  /// [nodeVersion] The lowest release version among all worker nodes.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time when the node pool was last updated.
  NodePoolState({
    this.cluster,
    this.createTime,
    this.effectiveLabels,
    this.labels,
    this.localDiskEncryption,
    this.location,
    this.machineFilter,
    this.name,
    this.nodeConfig,
    this.nodeCount,
    this.nodeLocation,
    this.nodeVersion,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': ?cluster,
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'localDiskEncryption': ?pulumi.Input.mapOptionalInputValue<NodePoolLocalDiskEncryption, Map<String, dynamic>>(localDiskEncryption, (value) => value.toMap()),
      'location': ?location,
      'machineFilter': ?machineFilter,
      'name': ?name,
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCount': ?nodeCount,
      'nodeLocation': ?nodeLocation,
      'nodeVersion': ?nodeVersion,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory NodePoolState.fromMap(Map<String, dynamic> map) {
    return NodePoolState(
      cluster: map['cluster'] == null ? null : (map['cluster'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      localDiskEncryption: map['localDiskEncryption'] == null ? null : (NodePoolLocalDiskEncryption.fromMap((map['localDiskEncryption'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      machineFilter: map['machineFilter'] == null ? null : (map['machineFilter'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nodeConfig: map['nodeConfig'] == null ? null : (NodePoolNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount'] as int).input(),
      nodeLocation: map['nodeLocation'] == null ? null : (map['nodeLocation'] as String).input(),
      nodeVersion: map['nodeVersion'] == null ? null : (map['nodeVersion'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

