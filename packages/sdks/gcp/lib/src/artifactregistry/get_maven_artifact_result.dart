// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMavenArtifact.
class GetMavenArtifactResult {
  final String artifactId;
  /// The time the artifact was created.
  final String createTime;
  final String groupId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  /// The fully qualified name of the fetched artifact. Format:
  /// ```
  /// projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/mavenArtifacts/{{group_id}}:{{artifact_id}}:{{version}}
  /// ```
  final String name;
  /// URL to access the pom file of the artifact. Example: `us-west4-maven.pkg.dev/test-project/test-repo/com/google/guava/guava/31.0/guava-31.0.pom`
  final String pomUri;
  final String? project;
  final String repositoryId;
  /// The time the artifact was last updated.
  final String updateTime;
  /// The version of the Maven artifact.
  final String version;

  /// Creates a new [GetMavenArtifactResult].
  /// [artifactId] Required.
  /// [createTime] The time the artifact was created.
  /// [groupId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] The fully qualified name of the fetched artifact. Format:
  /// [pomUri] URL to access the pom file of the artifact. Example: `us-west4-maven.pkg.dev/test-project/test-repo/com/google/guava/guava/31.0/guava-31.0.pom`
  /// [project] Optional.
  /// [repositoryId] Required.
  /// [updateTime] The time the artifact was last updated.
  /// [version] The version of the Maven artifact.
  const GetMavenArtifactResult({
    required this.artifactId,
    required this.createTime,
    required this.groupId,
    required this.id,
    required this.location,
    required this.name,
    required this.pomUri,
    this.project,
    required this.repositoryId,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'createTime': createTime,
      'groupId': groupId,
      'id': id,
      'location': location,
      'name': name,
      'pomUri': pomUri,
      'project': ?project,
      'repositoryId': repositoryId,
      'updateTime': updateTime,
      'version': version,
    };
  }

  factory GetMavenArtifactResult.fromMap(Map<String, dynamic> map) {
    return GetMavenArtifactResult(
      artifactId: map['artifactId'] as String,
      createTime: map['createTime'] as String,
      groupId: map['groupId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      pomUri: map['pomUri'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: map['repositoryId'] as String,
      updateTime: map['updateTime'] as String,
      version: map['version'] as String,
    );
  }
}
