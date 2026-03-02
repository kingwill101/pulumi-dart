// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v1_get_build_args_doc}
/// Arguments for getBuild.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v1_get_build_args_doc}
class GetBuildArgs {
  final pulumi.Input<String> buildId;
  final pulumi.Input<String> id;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> projectId;

  /// Creates a new [GetBuildArgs].
  /// [buildId] Required.
  /// [id] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [projectId] Required.
  GetBuildArgs({
    required this.buildId,
    required this.id,
    required this.location,
    this.project,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildId': buildId,
      'id': id,
      'location': location,
      'project': ?project,
      'projectId': projectId,
    };
  }

  factory GetBuildArgs.fromMap(Map<String, dynamic> map) {
    return GetBuildArgs(
      buildId: (map['buildId'] as String).input(),
      id: (map['id'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      projectId: (map['projectId'] as String).input(),
    );
  }
}

