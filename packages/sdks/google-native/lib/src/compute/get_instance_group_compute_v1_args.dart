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
  GetInstanceGroupComputeV1Args({
    required pulumi.Output<String> instanceGroup,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      instanceGroup = pulumi.Input.asInput<String>(instanceGroup),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroup': instanceGroup,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetInstanceGroupComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupComputeV1Args(
      instanceGroup: pulumi.Output.create<String>(map['instanceGroup'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

