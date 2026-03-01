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
    pulumi.Output<String>? cluster,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<NodePoolLocalDiskEncryption>? localDiskEncryption,
    pulumi.Output<String>? location,
    pulumi.Output<String>? machineFilter,
    pulumi.Output<String>? name,
    pulumi.Output<NodePoolNodeConfig>? nodeConfig,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<String>? nodeLocation,
    pulumi.Output<String>? nodeVersion,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
  }) :
      cluster = pulumi.Input.asOptionalInput<String>(cluster),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      localDiskEncryption = pulumi.Input.asOptionalInput<NodePoolLocalDiskEncryption>(localDiskEncryption),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineFilter = pulumi.Input.asOptionalInput<String>(machineFilter),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeConfig = pulumi.Input.asOptionalInput<NodePoolNodeConfig>(nodeConfig),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nodeLocation = pulumi.Input.asOptionalInput<String>(nodeLocation),
      nodeVersion = pulumi.Input.asOptionalInput<String>(nodeVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      cluster: map['cluster'] == null ? null : pulumi.Output.create<String>(map['cluster'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      localDiskEncryption: map['localDiskEncryption'] == null ? null : pulumi.Output.create<NodePoolLocalDiskEncryption>(NodePoolLocalDiskEncryption.fromMap((map['localDiskEncryption'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      machineFilter: map['machineFilter'] == null ? null : pulumi.Output.create<String>(map['machineFilter'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeConfig: map['nodeConfig'] == null ? null : pulumi.Output.create<NodePoolNodeConfig>(NodePoolNodeConfig.fromMap((map['nodeConfig'] as Map).cast<String, dynamic>())),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nodeLocation: map['nodeLocation'] == null ? null : pulumi.Output.create<String>(map['nodeLocation'] as String),
      nodeVersion: map['nodeVersion'] == null ? null : pulumi.Output.create<String>(map['nodeVersion'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

