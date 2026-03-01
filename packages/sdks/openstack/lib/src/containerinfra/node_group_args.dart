// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerinfra_node_group_node_group_args_doc}
/// The set of arguments for NodeGroup.
/// {@endtemplate}
/// {@macro pulumi_containerinfra_node_group_node_group_args_doc}
class NodeGroupArgs {
  /// The UUID of the V1 Container Infra cluster.
  /// Changing this creates a new node group.
  final pulumi.Input<String> clusterId;
  /// The size (in GB) of the Docker volume.
  /// Changing this creates a new node group.
  final pulumi.Input<int>? dockerVolumeSize;
  /// The flavor for the nodes of the node group. Can be set
  /// via the `OS_MAGNUM_FLAVOR` environment variable. Changing this creates a new
  /// node group.
  final pulumi.Input<String>? flavorId;
  /// The reference to an image that is used for nodes of the
  /// node group. Can be set via the `OS_MAGNUM_IMAGE` environment variable.
  /// Changing this updates the image attribute of the existing node group.
  final pulumi.Input<String>? imageId;
  /// The list of key value pairs representing additional
  /// properties of the node group. Changing this creates a new node group.
  final pulumi.Input<Map<String, String>>? labels;
  /// The maximum number of nodes for the node group.
  /// Changing this update the maximum number of nodes of the node group.
  final pulumi.Input<int>? maxNodeCount;
  /// Indicates whether the provided labels should be
  /// merged with cluster labels. Changing this creates a new nodegroup.
  final pulumi.Input<bool>? mergeLabels;
  /// The minimum number of nodes for the node group.
  /// Changing this update the minimum number of nodes of the node group.
  final pulumi.Input<int>? minNodeCount;
  /// The name of the node group. Changing this creates a new
  /// node group.
  final pulumi.Input<String>? name;
  /// The number of nodes for the node group. Changing
  /// this update the number of nodes of the node group.
  final pulumi.Input<int>? nodeCount;
  /// The region in which to obtain the V1 Container Infra
  /// client. A Container Infra client is needed to create a cluster. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// node group.
  final pulumi.Input<String>? region;
  /// The role of nodes in the node group. Changing this
  /// creates a new node group.
  final pulumi.Input<String>? role;

  /// Creates a new [NodeGroupArgs].
  /// [clusterId] The UUID of the V1 Container Infra cluster.
  /// [dockerVolumeSize] The size (in GB) of the Docker volume.
  /// [flavorId] The flavor for the nodes of the node group. Can be set
  /// [imageId] The reference to an image that is used for nodes of the
  /// [labels] The list of key value pairs representing additional
  /// [maxNodeCount] The maximum number of nodes for the node group.
  /// [mergeLabels] Indicates whether the provided labels should be
  /// [minNodeCount] The minimum number of nodes for the node group.
  /// [name] The name of the node group. Changing this creates a new
  /// [nodeCount] The number of nodes for the node group. Changing
  /// [region] The region in which to obtain the V1 Container Infra
  /// [role] The role of nodes in the node group. Changing this
  NodeGroupArgs({
    required pulumi.Output<String> clusterId,
    pulumi.Output<int>? dockerVolumeSize,
    pulumi.Output<String>? flavorId,
    pulumi.Output<String>? imageId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<int>? maxNodeCount,
    pulumi.Output<bool>? mergeLabels,
    pulumi.Output<int>? minNodeCount,
    pulumi.Output<String>? name,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      dockerVolumeSize = pulumi.Input.asOptionalInput<int>(dockerVolumeSize),
      flavorId = pulumi.Input.asOptionalInput<String>(flavorId),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      maxNodeCount = pulumi.Input.asOptionalInput<int>(maxNodeCount),
      mergeLabels = pulumi.Input.asOptionalInput<bool>(mergeLabels),
      minNodeCount = pulumi.Input.asOptionalInput<int>(minNodeCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'dockerVolumeSize': ?dockerVolumeSize,
      'flavorId': ?flavorId,
      'imageId': ?imageId,
      'labels': ?labels,
      'maxNodeCount': ?maxNodeCount,
      'mergeLabels': ?mergeLabels,
      'minNodeCount': ?minNodeCount,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'region': ?region,
      'role': ?role,
    };
  }

  factory NodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      dockerVolumeSize: map['dockerVolumeSize'] == null ? null : pulumi.Output.create<int>(map['dockerVolumeSize'] as int),
      flavorId: map['flavorId'] == null ? null : pulumi.Output.create<String>(map['flavorId'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      maxNodeCount: map['maxNodeCount'] == null ? null : pulumi.Output.create<int>(map['maxNodeCount'] as int),
      mergeLabels: map['mergeLabels'] == null ? null : pulumi.Output.create<bool>(map['mergeLabels'] as bool),
      minNodeCount: map['minNodeCount'] == null ? null : pulumi.Output.create<int>(map['minNodeCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
    );
  }
}

