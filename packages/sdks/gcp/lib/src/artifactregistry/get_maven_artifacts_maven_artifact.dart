// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMavenArtifactsMavenArtifact {
  /// The name of the artifact to fetch.
  final pulumi.Input<String> artifactId;

  /// The time the artifact was created.
  final pulumi.Input<String> createTime;

  /// Group ID for the artifact.
  final pulumi.Input<String> groupId;

  /// The fully qualified name of the fetched artifact. Format:
  /// ```
  /// projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/mavenArtifacts/{{group_id}}:{{artifact_id}}:{{version}}
  /// ```
  final pulumi.Input<String> name;

  /// URL to access the pom file of the artifact.
  final pulumi.Input<String> pomUri;

  /// The time the artifact was last updated.
  final pulumi.Input<String> updateTime;

  /// The version of the Maven artifact.
  final pulumi.Input<String> version;

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
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      pomUri: pulumi.Input.fromValue(map['pomUri'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
