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
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> nodePoolId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? zone,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      location = pulumi.Input.asInput<String>(location),
      nodePoolId = pulumi.Input.asInput<String>(nodePoolId),
      project = pulumi.Input.asOptionalInput<String>(project),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      zone = pulumi.Input.asOptionalInput<String>(zone);

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
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      nodePoolId: pulumi.Output.create<String>(map['nodePoolId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

