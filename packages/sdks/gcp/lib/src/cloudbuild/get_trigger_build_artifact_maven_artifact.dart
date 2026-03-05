// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTriggerBuildArtifactMavenArtifact {
  /// Maven artifactId value used when uploading the artifact to Artifact Registry.
  final pulumi.Input<String> artifactId;
  /// Maven groupId value used when uploading the artifact to Artifact Registry.
  final pulumi.Input<String> groupId;
  /// Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar.
  final pulumi.Input<String> path;
  /// Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY"
  ///
  /// Artifact in the workspace specified by path will be uploaded to Artifact Registry with this location as a prefix.
  final pulumi.Input<String> repository;
  /// Maven version value used when uploading the artifact to Artifact Registry.
  final pulumi.Input<String> version;

  /// Creates a new [GetTriggerBuildArtifactMavenArtifact].
  /// [artifactId] Maven artifactId value used when uploading the artifact to Artifact Registry.
  /// [groupId] Maven groupId value used when uploading the artifact to Artifact Registry.
  /// [path] Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar.
  /// [repository] Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY"
  /// [version] Maven version value used when uploading the artifact to Artifact Registry.
  GetTriggerBuildArtifactMavenArtifact({
    required this.artifactId,
    required this.groupId,
    required this.path,
    required this.repository,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'groupId': groupId,
      'path': path,
      'repository': repository,
      'version': version,
    };
  }

  factory GetTriggerBuildArtifactMavenArtifact.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifactMavenArtifact(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      repository: pulumi.Input.fromValue(map['repository'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

