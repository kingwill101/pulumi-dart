// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_container_v1_get_node_pool_args_doc}
/// Arguments for getNodePool.
/// {@endtemplate}
/// {@macro pulumi_container_v1_get_node_pool_args_doc}
class GetNodePoolArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> nodePoolId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? projectId;
  final pulumi.Input<String>? zone;

  /// Creates a new [GetNodePoolArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [nodePoolId] Required.
  /// [project] Optional.
  /// [projectId] Optional.
  /// [zone] Optional.
  GetNodePoolArgs({
    required this.clusterId,
    required this.location,
    required this.nodePoolId,
    this.project,
    this.projectId,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'location': location,
      'nodePoolId': nodePoolId,
      'project': ?project,
      'projectId': ?projectId,
      'zone': ?zone,
    };
  }

  factory GetNodePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetNodePoolArgs(
      clusterId: (map['clusterId'] as String).input(),
      location: (map['location'] as String).input(),
      nodePoolId: (map['nodePoolId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

