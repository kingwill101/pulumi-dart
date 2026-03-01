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
    required pulumi.Output<String> buildId,
    required pulumi.Output<String> id,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> projectId,
  }) :
      buildId = pulumi.Input.asInput<String>(buildId),
      id = pulumi.Input.asInput<String>(id),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      projectId = pulumi.Input.asInput<String>(projectId);

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
      buildId: pulumi.Output.create<String>(map['buildId'] as String),
      id: pulumi.Output.create<String>(map['id'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      projectId: pulumi.Output.create<String>(map['projectId'] as String),
    );
  }
}

