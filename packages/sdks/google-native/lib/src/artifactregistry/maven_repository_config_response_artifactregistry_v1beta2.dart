// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.
class MavenRepositoryConfigResponseArtifactregistryV1beta2 {
  /// The repository with this flag will allow publishing the same snapshot versions.
  final pulumi.Input<bool> allowSnapshotOverwrites;
  /// Version policy defines the versions that the registry will accept.
  final pulumi.Input<String> versionPolicy;

  /// Creates a new [MavenRepositoryConfigResponseArtifactregistryV1beta2].
  /// [allowSnapshotOverwrites] The repository with this flag will allow publishing the same snapshot versions.
  /// [versionPolicy] Version policy defines the versions that the registry will accept.
  const MavenRepositoryConfigResponseArtifactregistryV1beta2({
    required this.allowSnapshotOverwrites,
    required this.versionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSnapshotOverwrites': allowSnapshotOverwrites,
      'versionPolicy': versionPolicy,
    };
  }

  factory MavenRepositoryConfigResponseArtifactregistryV1beta2.fromMap(Map<String, dynamic> map) {
    return MavenRepositoryConfigResponseArtifactregistryV1beta2(
      allowSnapshotOverwrites: pulumi.Input.fromValue(map['allowSnapshotOverwrites'] as bool),
      versionPolicy: pulumi.Input.fromValue(map['versionPolicy'] as String),
    );
  }
}
