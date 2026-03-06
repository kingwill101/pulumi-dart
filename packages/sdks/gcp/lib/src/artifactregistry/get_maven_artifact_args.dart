// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_maven_artifact_get_maven_artifact_args_doc}
/// Arguments for getMavenArtifact.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_maven_artifact_get_maven_artifact_args_doc}
class GetMavenArtifactArgs {
  /// The name of the artifact to fetch. Can optionally include a specific version (e.g., `my_artifact:1.2.3`). If no version is provided, the latest version is used.
  final pulumi.Input<String> artifactId;
  /// Group ID for the artifact. Example: `com.google.guava`
  final pulumi.Input<String> groupId;
  /// The location of the Artifact Registry repository.
  final pulumi.Input<String> location;
  /// The ID of the project that owns the repository. If not provided, the provider-level project is used.
  final pulumi.Input<String>? project;
  /// The ID of the repository containing the Maven artifact.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetMavenArtifactArgs].
  /// [artifactId] The name of the artifact to fetch. Can optionally include a specific version (e.g., `my_artifact:1.2.3`). If no version is provided, the latest version is used.
  /// [groupId] Group ID for the artifact. Example: `com.google.guava`
  /// [location] The location of the Artifact Registry repository.
  /// [project] The ID of the project that owns the repository. If not provided, the provider-level project is used.
  /// [repositoryId] The ID of the repository containing the Maven artifact.
  const GetMavenArtifactArgs({
    required this.artifactId,
    required this.groupId,
    required this.location,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'groupId': groupId,
      'location': location,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetMavenArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetMavenArtifactArgs(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}

