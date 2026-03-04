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
      nodeGroup: pulumi.Input.fromValue(map['nodeGroup'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
