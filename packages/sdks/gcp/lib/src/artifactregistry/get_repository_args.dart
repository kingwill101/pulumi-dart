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
  final pulumi.Input<String?>? project;
  /// The last part of the repository name.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetRepositoryArgs].
  /// [location] The location of the artifact registry repository. eg us-central1
  /// [project] The project in which the resource belongs. If it
  /// [repositoryId] The last part of the repository name.
  const GetRepositoryArgs({
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}
