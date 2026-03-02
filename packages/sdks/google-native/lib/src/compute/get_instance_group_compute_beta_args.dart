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
  GetInstanceGroupComputeBetaArgs({
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
      instanceGroup: (map['instanceGroup'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

