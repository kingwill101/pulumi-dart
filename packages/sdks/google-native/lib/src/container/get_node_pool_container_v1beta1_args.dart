// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1beta1_get_node_pool_container_v1beta1_args_doc}
/// Arguments for getNodePool.
/// {@endtemplate}
/// {@macro pulumi_container_v1beta1_get_node_pool_container_v1beta1_args_doc}
class GetNodePoolContainerV1beta1Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> nodePoolId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;
  final pulumi.Input<String> zone;

  /// Creates a new [GetNodePoolContainerV1beta1Args].
  /// [clusterId] Required.
  /// [location] Required.
  /// [nodePoolId] Required.
  /// [project] Optional.
  /// [projectId] Required.
  /// [zone] Required.
  GetNodePoolContainerV1beta1Args({
    required this.clusterId,
    required this.location,
    required this.nodePoolId,
    this.project,
    required this.projectId,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'nodePoolId': nodePoolId,
      'project': ?project,
      'projectId': projectId,
      'zone': zone,
    };
  }

  factory GetNodePoolContainerV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetNodePoolContainerV1beta1Args(
      clusterId: (map['clusterId'] as String).input(),
      location: (map['location'] as String).input(),
      nodePoolId: (map['nodePoolId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

