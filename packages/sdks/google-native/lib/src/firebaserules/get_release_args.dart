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
  GetReleaseArgs({
    pulumi.Output<String>? project,
    required pulumi.Output<String> releaseId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      releaseId = pulumi.Input.asInput<String>(releaseId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'releaseId': releaseId,
    };
  }

  factory GetReleaseArgs.fromMap(Map<String, dynamic> map) {
    return GetReleaseArgs(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      releaseId: pulumi.Output.create<String>(map['releaseId'] as String),
    );
  }
}

