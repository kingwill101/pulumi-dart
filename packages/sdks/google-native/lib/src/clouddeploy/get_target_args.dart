// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_clouddeploy_v1_get_target_args_doc}
/// Arguments for getTarget.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_v1_get_target_args_doc}
class GetTargetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetId;

  /// Creates a new [GetTargetArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [targetId] Required.
  const GetTargetArgs({
    required this.location,
    this.project,
    required this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'targetId': targetId,
    };
  }

  factory GetTargetArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetId: pulumi.Input.fromValue(map['targetId'] as String),
    );
  }
}
