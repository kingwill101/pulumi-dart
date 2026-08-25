// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_maven_artifacts_maven_artifact.dart';

/// Result data returned by getMavenArtifacts.
class GetMavenArtifactsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// A list of all retrieved Artifact Registry Maven artifacts. Structure is defined below.
  final List<GetMavenArtifactsMavenArtifact>? mavenArtifacts;
  final String? project;
  final String? repositoryId;

  /// Creates a new [GetMavenArtifactsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [mavenArtifacts] A list of all retrieved Artifact Registry Maven artifacts. Structure is defined below.
  /// [project] Optional.
  /// [repositoryId] Optional.
  const GetMavenArtifactsResult({
    this.id,
    this.location,
    this.mavenArtifacts,
    this.project,
    this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'mavenArtifacts': ?(() { final guardedValue = mavenArtifacts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMavenArtifactsMavenArtifact, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'repositoryId': ?repositoryId,
    };
  }

  factory GetMavenArtifactsResult.fromMap(Map<String, dynamic> map) {
    return GetMavenArtifactsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mavenArtifacts: (() { final guardedValue = map['mavenArtifacts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMavenArtifactsMavenArtifact>(guardedValue, (value) => GetMavenArtifactsMavenArtifact.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
