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
    this.fieldMask,
    required this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldMask': ?fieldMask,
      'instanceId': instanceId,
      'project': ?project,
    };
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      fieldMask: map['fieldMask'] == null ? null : (map['fieldMask'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

