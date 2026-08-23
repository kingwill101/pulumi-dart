// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instance_group_compute_beta_args_doc}
/// Arguments for getInstanceGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instance_group_compute_beta_args_doc}
class GetInstanceGroupComputeBetaArgs {
  final pulumi.Input<String> instanceGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupComputeBetaArgs].
  /// [instanceGroup] Required.
  /// [project] Optional.
  /// [zone] Required.
  const GetInstanceGroupComputeBetaArgs({
    required this.instanceGroup,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroup': instanceGroup,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetInstanceGroupComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupComputeBetaArgs(
      instanceGroup: pulumi.Input.fromValue(map['instanceGroup'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
