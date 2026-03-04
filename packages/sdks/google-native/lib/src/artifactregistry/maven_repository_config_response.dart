// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.
class MavenRepositoryConfigResponse {
  /// The repository with this flag will allow publishing the same snapshot versions.
  final pulumi.Input<bool> allowSnapshotOverwrites;

  /// Version policy defines the versions that the registry will accept.
  final pulumi.Input<String> versionPolicy;

  /// Creates a new [MavenRepositoryConfigResponse].
  /// [allowSnapshotOverwrites] The repository with this flag will allow publishing the same snapshot versions.
  /// [versionPolicy] Version policy defines the versions that the registry will accept.
  MavenRepositoryConfigResponse({
    required this.allowSnapshotOverwrites,
    required this.versionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSnapshotOverwrites': allowSnapshotOverwrites,
      'versionPolicy': versionPolicy,
    };
  }

  factory MavenRepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return MavenRepositoryConfigResponse(
      allowSnapshotOverwrites: pulumi.Input.fromValue(
        map['allowSnapshotOverwrites'] as bool,
      ),
      versionPolicy: pulumi.Input.fromValue(map['versionPolicy'] as String),
    );
  }
}
