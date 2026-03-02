// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instance_group_manager_compute_beta_args_doc}
/// Arguments for getInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instance_group_manager_compute_beta_args_doc}
class GetInstanceGroupManagerComputeBetaArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupManagerComputeBetaArgs].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstanceGroupManagerComputeBetaArgs({
    required this.instanceGroupManager,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': instanceGroupManager,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetInstanceGroupManagerComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerComputeBetaArgs(
      instanceGroupManager: (map['instanceGroupManager'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}

