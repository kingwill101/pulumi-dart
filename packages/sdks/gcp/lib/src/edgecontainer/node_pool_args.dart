// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_local_disk_encryption.dart';
import 'node_pool_node_config.dart';

/// {@template pulumi_edgecontainer_node_pool_node_pool_args_doc}
/// The set of arguments for NodePool.
/// {@endtemplate}
/// {@macro pulumi_edgecontainer_node_pool_node_pool_args_doc}
class NodePoolArgs {
  /// The name of the target Distributed Cloud Edge Cluster.
  final pulumi.Input<String> cluster;
  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Local disk encryption options. This field is only used when enabling CMEK support.
  /// Structure is documented below.
  final pulumi.Input<NodePoolLocalDiskEncryption>? localDiskEncryption;
  /// The location of the resource.
  final pulumi.Input<String> location;
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
  final pulumi.Input<int> nodeCount;
  /// Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  final pulumi.Input<String> nodeLocation;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [NodePoolArgs].
  /// [cluster] The name of the target Distributed Cloud Edge Cluster.
  /// [labels] Labels associated with this resource.
  /// [localDiskEncryption] Local disk encryption options. This field is only used when enabling CMEK support.
  /// [location] The location of the resource.
  /// [machineFilter] Only machines matching this filter will be allowed to join the node pool.
  /// [name] The resource name of the node pool.
  /// [nodeConfig] Configuration for each node in the NodePool
  /// [nodeCount] The number of nodes in the pool.
  /// [nodeLocation] Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  /// [project] The ID of the project in which the resource belongs.
  NodePoolArgs({
    required this.cluster,
    this.labels,
    this.localDiskEncryption,
    required this.location,
    this.machineFilter,
    this.name,
    this.nodeConfig,
    required this.nodeCount,
    required this.nodeLocation,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cluster': cluster,
      'labels': ?labels,
      'localDiskEncryption': ?pulumi.Input.mapOptionalInputValue<NodePoolLocalDiskEncryption, Map<String, dynamic>>(localDiskEncryption, (value) => value.toMap()),
      'location': location,
      'machineFilter': ?machineFilter,
      'name': ?name,
      'nodeConfig': ?pulumi.Input.mapOptionalInputValue<NodePoolNodeConfig, Map<String, dynamic>>(nodeConfig, (value) => value.toMap()),
      'nodeCount': nodeCount,
      'nodeLocation': nodeLocation,
      'project': ?project,
    };
  }

  factory NodePoolArgs.fromMap(Map<String, dynamic> map) {
    return NodePoolArgs(
      cluster: pulumi.Input.fromValue(map['cluster'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      localDiskEncryption: (() { final guardedValue = map['localDiskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolLocalDiskEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      machineFilter: (() { final guardedValue = map['machineFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeConfig: (() { final guardedValue = map['nodeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeCount: pulumi.Input.fromValue(map['nodeCount'] as int),
      nodeLocation: pulumi.Input.fromValue(map['nodeLocation'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

