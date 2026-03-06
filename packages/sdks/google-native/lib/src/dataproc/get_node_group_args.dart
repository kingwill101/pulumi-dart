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
  const GetNodeGroupArgs({
    required this.clusterId,
    required this.nodeGroupId,
    this.project,
    required this.regionId,
  });

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
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      nodeGroupId: pulumi.Input.fromValue(map['nodeGroupId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}

