// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMavenArtifact.
class GetMavenArtifactResult {
  final String? artifactId;
  /// The time the artifact was created.
  final String? createTime;
  final String? groupId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// The fully qualified name of the fetched artifact. Format:
  /// ```
  /// projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/mavenArtifacts/{{group_id}}:{{artifact_id}}:{{version}}
  /// ```
  final String? name;
  /// URL to access the pom file of the artifact. Example: `us-west4-maven.pkg.dev/test-project/test-repo/com/google/guava/guava/31.0/guava-31.0.pom`
  final String? pomUri;
  final String? project;
  final String? repositoryId;
  /// The time the artifact was last updated.
  final String? updateTime;
  /// The version of the Maven artifact.
  final String? version;

  /// Creates a new [GetMavenArtifactResult].
  /// [artifactId] Optional.
  /// [createTime] The time the artifact was created.
  /// [groupId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] The fully qualified name of the fetched artifact. Format:
  /// [pomUri] URL to access the pom file of the artifact. Example: `us-west4-maven.pkg.dev/test-project/test-repo/com/google/guava/guava/31.0/guava-31.0.pom`
  /// [project] Optional.
  /// [repositoryId] Optional.
  /// [updateTime] The time the artifact was last updated.
  /// [version] The version of the Maven artifact.
  const GetMavenArtifactResult({
    this.artifactId,
    this.createTime,
    this.groupId,
    this.id,
    this.location,
    this.name,
    this.pomUri,
    this.project,
    this.repositoryId,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': ?artifactId,
      'createTime': ?createTime,
      'groupId': ?groupId,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'pomUri': ?pomUri,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory GetMavenArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetMavenArtifactResult(
      artifactId: (() { final guardedValue = map['artifactId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pomUri: (() { final guardedValue = map['pomUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
