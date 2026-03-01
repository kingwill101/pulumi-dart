// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_v1_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_get_instance_args_doc}
class GetInstanceArgs {
  final pulumi.Input<String>? fieldMask;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetInstanceArgs].
  /// [fieldMask] Optional.
  /// [instanceId] Required.
  /// [project] Optional.
  GetInstanceArgs({
    pulumi.Output<String>? fieldMask,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? project,
  }) :
      fieldMask = pulumi.Input.asOptionalInput<String>(fieldMask),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldMask': ?fieldMask,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      fieldMask: map['fieldMask'] == null ? null : pulumi.Output.create<String>(map['fieldMask'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

