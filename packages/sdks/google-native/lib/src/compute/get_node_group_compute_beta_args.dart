// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_node_group_compute_beta_args_doc}
/// Arguments for getNodeGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_node_group_compute_beta_args_doc}
class GetNodeGroupComputeBetaArgs {
  final pulumi.Input<String> nodeGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetNodeGroupComputeBetaArgs].
  /// [nodeGroup] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetNodeGroupComputeBetaArgs({
    required this.nodeGroup,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroup': nodeGroup,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetNodeGroupComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupComputeBetaArgs(
      nodeGroup: (map['nodeGroup'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

