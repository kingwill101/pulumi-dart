// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudbuild_v2_get_repository_args_doc}
/// Arguments for getRepository.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_v2_get_repository_args_doc}
class GetRepositoryArgs {
  final pulumi.Input<String> connectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetRepositoryArgs].
  /// [connectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  GetRepositoryArgs({
    required pulumi.Output<String> connectionId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
  }) :
      connectionId = pulumi.Input.asInput<String>(connectionId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs(
      connectionId: pulumi.Output.create<String>(map['connectionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
    );
  }
}

