// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_repository_get_repository_args_doc}
/// Arguments for getRepository.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_repository_get_repository_args_doc}
class GetRepositoryArgs {
  /// The location of the artifact registry repository. eg us-central1
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The last part of the repository name.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetRepositoryArgs].
  /// [location] The location of the artifact registry repository. eg us-central1
  /// [project] The project in which the resource belongs. If it
  /// [repositoryId] The last part of the repository name.
  GetRepositoryArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
    );
  }
}

