// ignore_for_file: unused_element, unnecessary_cast


class GetMavenArtifactsMavenArtifact {
  /// The name of the artifact to fetch.
  final String artifactId;
  /// The time the artifact was created.
  final String createTime;
  /// Group ID for the artifact.
  final String groupId;
  /// The fully qualified name of the fetched artifact. Format:
  /// ```
  /// projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/mavenArtifacts/{{group_id}}:{{artifact_id}}:{{version}}
  /// ```
  final String name;
  /// URL to access the pom file of the artifact.
  final String pomUri;
  /// The time the artifact was last updated.
  final String updateTime;
  /// The version of the Maven artifact.
  final String version;

  /// Creates a new [GetMavenArtifactsMavenArtifact].
  /// [artifactId] The name of the artifact to fetch.
  /// [createTime] The time the artifact was created.
  /// [groupId] Group ID for the artifact.
  /// [name] The fully qualified name of the fetched artifact. Format:
  /// [pomUri] URL to access the pom file of the artifact.
  /// [updateTime] The time the artifact was last updated.
  /// [version] The version of the Maven artifact.
  GetMavenArtifactsMavenArtifact({
    required this.artifactId,
    required this.createTime,
    required this.groupId,
    required this.name,
    required this.pomUri,
    required this.updateTime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'createTime': createTime,
      'groupId': groupId,
      'name': name,
      'pomUri': pomUri,
      'updateTime': updateTime,
      'version': version,
    };
  }

  factory GetMavenArtifactsMavenArtifact.fromMap(Map<String, dynamic> map) {
    return GetMavenArtifactsMavenArtifact(
      artifactId: map['artifactId'] as String,
      createTime: map['createTime'] as String,
      groupId: map['groupId'] as String,
      name: map['name'] as String,
      pomUri: map['pomUri'] as String,
      updateTime: map['updateTime'] as String,
      version: map['version'] as String,
    );
  }
}

