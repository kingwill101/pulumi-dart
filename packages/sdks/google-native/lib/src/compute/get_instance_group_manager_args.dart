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
  GetInstanceGroupManagerArgs({
    required pulumi.Output<String> instanceGroupManager,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      instanceGroupManager = pulumi.Input.asInput<String>(instanceGroupManager),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': instanceGroupManager,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetInstanceGroupManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerArgs(
      instanceGroupManager: pulumi.Output.create<String>(map['instanceGroupManager'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

