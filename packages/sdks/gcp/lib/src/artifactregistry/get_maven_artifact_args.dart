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
  GetMavenArtifactArgs({
    required pulumi.Output<String> artifactId,
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> repositoryId,
  }) :
      artifactId = pulumi.Input.asInput<String>(artifactId),
      groupId = pulumi.Input.asInput<String>(groupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      repositoryId = pulumi.Input.asInput<String>(repositoryId);

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
      artifactId: pulumi.Output.create<String>(map['artifactId'] as String),
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      repositoryId: pulumi.Output.create<String>(map['repositoryId'] as String),
    );
  }
}

