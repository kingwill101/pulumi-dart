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
    required this.clusterId,
    this.dockerVolumeSize,
    this.flavorId,
    this.imageId,
    this.labels,
    this.maxNodeCount,
    this.mergeLabels,
    this.minNodeCount,
    this.name,
    this.nodeCount,
    this.region,
    this.role,
  });

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
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      dockerVolumeSize: (() {
        final guardedValue = map['dockerVolumeSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      flavorId: (() {
        final guardedValue = map['flavorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      maxNodeCount: (() {
        final guardedValue = map['maxNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mergeLabels: (() {
        final guardedValue = map['mergeLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      minNodeCount: (() {
        final guardedValue = map['minNodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeCount: (() {
        final guardedValue = map['nodeCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      role: (() {
        final guardedValue = map['role'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
