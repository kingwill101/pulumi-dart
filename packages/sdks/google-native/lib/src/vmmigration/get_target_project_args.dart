// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_get_target_project_args_doc}
/// Arguments for getTargetProject.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_get_target_project_args_doc}
class GetTargetProjectArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetProjectId;

  /// Creates a new [GetTargetProjectArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [targetProjectId] Required.
  GetTargetProjectArgs({
    required this.location,
    this.project,
    required this.targetProjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'targetProjectId': targetProjectId,
    };
  }

  factory GetTargetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetProjectArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetProjectId: pulumi.Input.fromValue(map['targetProjectId'] as String),
    );
  }
}
