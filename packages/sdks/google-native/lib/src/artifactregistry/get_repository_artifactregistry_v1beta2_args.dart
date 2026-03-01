// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_v1beta2_get_repository_artifactregistry_v1beta2_args_doc}
/// Arguments for getRepository.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_v1beta2_get_repository_artifactregistry_v1beta2_args_doc}
class GetRepositoryArtifactregistryV1beta2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetRepositoryArtifactregistryV1beta2Args].
  /// [location] Required.
  /// [project] Optional.
  /// [repositoryId] Required.
  GetRepositoryArtifactregistryV1beta2Args({
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

  factory GetRepositoryArtifactregistryV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArtifactregistryV1beta2Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
    );
  }
}

