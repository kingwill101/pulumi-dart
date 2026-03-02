// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_maven_artifacts_maven_artifact.dart';

/// Result data returned by getMavenArtifacts.
class GetMavenArtifactsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  /// A list of all retrieved Artifact Registry Maven artifacts. Structure is defined below.
  final List<GetMavenArtifactsMavenArtifact> mavenArtifacts;
  final String? project;
  final String repositoryId;

  /// Creates a new [GetMavenArtifactsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [mavenArtifacts] A list of all retrieved Artifact Registry Maven artifacts. Structure is defined below.
  /// [project] Optional.
  /// [repositoryId] Required.
  GetMavenArtifactsResult({
    required this.id,
    required this.location,
    required this.mavenArtifacts,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'mavenArtifacts': pulumi.Input.encodeList<GetMavenArtifactsMavenArtifact, Map<String, dynamic>>(mavenArtifacts, (value) => value.toMap()),
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetMavenArtifactsResult.fromMap(Map<String, dynamic> map) {
    return GetMavenArtifactsResult(
      id: map['id'] as String,
      location: map['location'] as String,
      mavenArtifacts: pulumi.Input.decodeList<GetMavenArtifactsMavenArtifact>(map['mavenArtifacts'], (value) => GetMavenArtifactsMavenArtifact.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project']! as String,
      repositoryId: map['repositoryId'] as String,
    );
  }
}

