// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataproc_v1_get_node_group_args_doc}
/// Arguments for getNodeGroup.
/// {@endtemplate}
/// {@macro pulumi_dataproc_v1_get_node_group_args_doc}
class GetNodeGroupArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> nodeGroupId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  /// Creates a new [GetNodeGroupArgs].
  /// [clusterId] Required.
  /// [nodeGroupId] Required.
  /// [project] Optional.
  /// [regionId] Required.
  GetNodeGroupArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> nodeGroupId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> regionId,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      nodeGroupId = pulumi.Input.asInput<String>(nodeGroupId),
      project = pulumi.Input.asOptionalInput<String>(project),
      regionId = pulumi.Input.asInput<String>(regionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'nodeGroupId': nodeGroupId,
      'project': ?project,
      'regionId': regionId,
    };
  }

  factory GetNodeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      nodeGroupId: pulumi.Output.create<String>(map['nodeGroupId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      regionId: pulumi.Output.create<String>(map['regionId'] as String),
    );
  }
}

