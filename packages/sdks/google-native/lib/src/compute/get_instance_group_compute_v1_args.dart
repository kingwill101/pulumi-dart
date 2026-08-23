// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_instance_group_compute_v1_args_doc}
/// Arguments for getInstanceGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_instance_group_compute_v1_args_doc}
class GetInstanceGroupComputeV1Args {
  final pulumi.Input<String> instanceGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupComputeV1Args].
  /// [instanceGroup] Required.
  /// [project] Optional.
  /// [zone] Required.
  const GetInstanceGroupComputeV1Args({
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

  factory GetInstanceGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupComputeV1Args(
      instanceGroup: pulumi.Input.fromValue(map['instanceGroup'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}
