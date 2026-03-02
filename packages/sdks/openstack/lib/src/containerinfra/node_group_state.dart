// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NodeGroup resources.
class NodeGroupState {
  /// The UUID of the V1 Container Infra cluster.
  /// Changing this creates a new node group.
  final pulumi.Input<String>? clusterId;
  final pulumi.Input<String>? createdAt;
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
  /// The project of the node group. Required if admin
  /// wants to create a cluster in another project. Changing this creates a new
  /// node group.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V1 Container Infra
  /// client. A Container Infra client is needed to create a cluster. If omitted,
  /// the `region` argument of the provider is used. Changing this creates a new
  /// node group.
  final pulumi.Input<String>? region;
  /// The role of nodes in the node group. Changing this
  /// creates a new node group.
  final pulumi.Input<String>? role;
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [NodeGroupState].
  /// [clusterId] The UUID of the V1 Container Infra cluster.
  /// [createdAt] Optional.
  /// [dockerVolumeSize] The size (in GB) of the Docker volume.
  /// [flavorId] The flavor for the nodes of the node group. Can be set
  /// [imageId] The reference to an image that is used for nodes of the
  /// [labels] The list of key value pairs representing additional
  /// [maxNodeCount] The maximum number of nodes for the node group.
  /// [mergeLabels] Indicates whether the provided labels should be
  /// [minNodeCount] The minimum number of nodes for the node group.
  /// [name] The name of the node group. Changing this creates a new
  /// [nodeCount] The number of nodes for the node group. Changing
  /// [projectId] The project of the node group. Required if admin
  /// [region] The region in which to obtain the V1 Container Infra
  /// [role] The role of nodes in the node group. Changing this
  /// [updatedAt] Optional.
  NodeGroupState({
    this.clusterId,
    this.createdAt,
    this.dockerVolumeSize,
    this.flavorId,
    this.imageId,
    this.labels,
    this.maxNodeCount,
    this.mergeLabels,
    this.minNodeCount,
    this.name,
    this.nodeCount,
    this.projectId,
    this.region,
    this.role,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'createdAt': ?createdAt,
      'dockerVolumeSize': ?dockerVolumeSize,
      'flavorId': ?flavorId,
      'imageId': ?imageId,
      'labels': ?labels,
      'maxNodeCount': ?maxNodeCount,
      'mergeLabels': ?mergeLabels,
      'minNodeCount': ?minNodeCount,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'projectId': ?projectId,
      'region': ?region,
      'role': ?role,
      'updatedAt': ?updatedAt,
    };
  }

  factory NodeGroupState.fromMap(Map<String, dynamic> map) {
    return NodeGroupState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      dockerVolumeSize: map['dockerVolumeSize'] == null ? null : (map['dockerVolumeSize']! as int).input(),
      flavorId: map['flavorId'] == null ? null : (map['flavorId']! as String).input(),
      imageId: map['imageId'] == null ? null : (map['imageId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      maxNodeCount: map['maxNodeCount'] == null ? null : (map['maxNodeCount']! as int).input(),
      mergeLabels: map['mergeLabels'] == null ? null : (map['mergeLabels']! as bool).input(),
      minNodeCount: map['minNodeCount'] == null ? null : (map['minNodeCount']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt']! as String).input(),
    );
  }
}

