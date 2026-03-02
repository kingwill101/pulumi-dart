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
      clusterId: (map['clusterId'] as String).input(),
      nodeGroupId: (map['nodeGroupId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      regionId: (map['regionId'] as String).input(),
    );
  }
}

