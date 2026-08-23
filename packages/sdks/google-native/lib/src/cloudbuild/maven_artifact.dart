// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.
class MavenArtifact {
  /// Maven `artifactId` value used when uploading the artifact to Artifact Registry.
  final pulumi.Input<String>? artifactId;
  /// Maven `groupId` value used when uploading the artifact to Artifact Registry.
  final pulumi.Input<String>? groupId;
  /// Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar.
  final pulumi.Input<String>? path;
  /// Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY" Artifact in the workspace specified by path will be uploaded to Artifact Registry with this location as a prefix.
  final pulumi.Input<String>? repository;
  /// Maven `version` value used when uploading the artifact to Artifact Registry.
  final pulumi.Input<String>? version;

  /// Creates a new [MavenArtifact].
  /// [artifactId] Maven `artifactId` value used when uploading the artifact to Artifact Registry.
  /// [groupId] Maven `groupId` value used when uploading the artifact to Artifact Registry.
  /// [path] Path to an artifact in the build's workspace to be uploaded to Artifact Registry. This can be either an absolute path, e.g. /workspace/my-app/target/my-app-1.0.SNAPSHOT.jar or a relative path from /workspace, e.g. my-app/target/my-app-1.0.SNAPSHOT.jar.
  /// [repository] Artifact Registry repository, in the form "https://$REGION-maven.pkg.dev/$PROJECT/$REPOSITORY" Artifact in the workspace specified by path will be uploaded to Artifact Registry with this location as a prefix.
  /// [version] Maven `version` value used when uploading the artifact to Artifact Registry.
  const MavenArtifact({
    this.artifactId,
    this.groupId,
    this.path,
    this.repository,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': ?artifactId,
      'groupId': ?groupId,
      'path': ?path,
      'repository': ?repository,
      'version': ?version,
    };
  }

  factory MavenArtifact.fromMap(Map<String, dynamic> map) {
    return MavenArtifact(
      artifactId: (() { final guardedValue = map['artifactId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupId: (() { final guardedValue = map['groupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
