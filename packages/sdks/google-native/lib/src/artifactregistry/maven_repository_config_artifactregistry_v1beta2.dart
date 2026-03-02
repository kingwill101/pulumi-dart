// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maven_repository_config_version_policy_artifactregistry_v1beta2.dart';

/// MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.
class MavenRepositoryConfigArtifactregistryV1beta2 {
  /// The repository with this flag will allow publishing the same snapshot versions.
  final pulumi.Input<bool>? allowSnapshotOverwrites;
  /// Version policy defines the versions that the registry will accept.
  final pulumi.Input<MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2>? versionPolicy;

  /// Creates a new [MavenRepositoryConfigArtifactregistryV1beta2].
  /// [allowSnapshotOverwrites] The repository with this flag will allow publishing the same snapshot versions.
  /// [versionPolicy] Version policy defines the versions that the registry will accept.
  MavenRepositoryConfigArtifactregistryV1beta2({
    this.allowSnapshotOverwrites,
    this.versionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSnapshotOverwrites': ?allowSnapshotOverwrites,
      'versionPolicy': ?pulumi.Input.mapOptionalInputValue<MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2, String>(versionPolicy, (value) => value.value),
    };
  }

  factory MavenRepositoryConfigArtifactregistryV1beta2.fromMap(Map<String, dynamic> map) {
    return MavenRepositoryConfigArtifactregistryV1beta2(
      allowSnapshotOverwrites: map['allowSnapshotOverwrites'] == null ? null : (map['allowSnapshotOverwrites'] as bool).input(),
      versionPolicy: map['versionPolicy'] == null ? null : (MavenRepositoryConfigVersionPolicyArtifactregistryV1beta2.fromValue(map['versionPolicy'] as String)).input(),
    );
  }
}

