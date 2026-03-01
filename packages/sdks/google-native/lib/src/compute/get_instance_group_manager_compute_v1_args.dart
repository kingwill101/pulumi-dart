// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_instance_group_manager_compute_v1_args_doc}
/// Arguments for getInstanceGroupManager.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_instance_group_manager_compute_v1_args_doc}
class GetInstanceGroupManagerComputeV1Args {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupManagerComputeV1Args].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstanceGroupManagerComputeV1Args({
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

  factory GetInstanceGroupManagerComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerComputeV1Args(
      instanceGroupManager: pulumi.Output.create<String>(map['instanceGroupManager'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

