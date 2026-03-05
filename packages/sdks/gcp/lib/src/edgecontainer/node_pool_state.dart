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
  /// The filtering language accepts strings like "name=&lt;name&gt;", and is
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
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      localDiskEncryption: (() { final guardedValue = map['localDiskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolLocalDiskEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineFilter: (() { final guardedValue = map['machineFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeLocation: (() { final guardedValue = map['nodeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeVersion: (() { final guardedValue = map['nodeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

