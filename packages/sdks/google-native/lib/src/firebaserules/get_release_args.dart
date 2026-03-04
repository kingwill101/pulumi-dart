// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebaserules_v1_get_release_args_doc}
/// Arguments for getRelease.
/// {@endtemplate}
/// {@macro pulumi_firebaserules_v1_get_release_args_doc}
class GetReleaseArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> releaseId;

  /// Creates a new [GetReleaseArgs].
  /// [project] Optional.
  /// [releaseId] Required.
  GetReleaseArgs({this.project, required this.releaseId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'releaseId': releaseId};
  }

  factory GetReleaseArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseId: pulumi.Input.fromValue(map['releaseId'] as String),
    );
  }
}
