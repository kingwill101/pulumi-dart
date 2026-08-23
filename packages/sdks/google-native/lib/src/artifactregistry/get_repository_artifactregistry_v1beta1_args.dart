// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_v1beta1_get_repository_artifactregistry_v1beta1_args_doc}
/// Arguments for getRepository.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1beta1_get_repository_artifactregistry_v1beta1_args_doc}
class GetRepositoryArtifactregistryV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetRepositoryArtifactregistryV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  const GetRepositoryArtifactregistryV1beta1Args({
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

  factory GetRepositoryArtifactregistryV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArtifactregistryV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}
