// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_instance_group_manager_args_doc}
/// Arguments for getInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_instance_group_manager_args_doc}
class GetInstanceGroupManagerArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupManagerArgs].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [zone] Required.
  const GetInstanceGroupManagerArgs({
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

  factory GetInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerArgs(
      instanceGroupManager: pulumi.Input.fromValue(map['instanceGroupManager'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
