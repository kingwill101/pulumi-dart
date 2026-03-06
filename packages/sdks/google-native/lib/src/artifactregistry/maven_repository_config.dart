// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'maven_repository_config_version_policy.dart';

/// MavenRepositoryConfig is maven related repository details. Provides additional configuration details for repositories of the maven format type.
class MavenRepositoryConfig {
  /// The repository with this flag will allow publishing the same snapshot versions.
  final pulumi.Input<bool>? allowSnapshotOverwrites;
  /// Version policy defines the versions that the registry will accept.
  final pulumi.Input<MavenRepositoryConfigVersionPolicy>? versionPolicy;

  /// Creates a new [MavenRepositoryConfig].
  /// [allowSnapshotOverwrites] The repository with this flag will allow publishing the same snapshot versions.
  /// [versionPolicy] Version policy defines the versions that the registry will accept.
  const MavenRepositoryConfig({
    this.allowSnapshotOverwrites,
    this.versionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSnapshotOverwrites': ?allowSnapshotOverwrites,
      'versionPolicy': ?pulumi.Input.mapOptionalInputValue<MavenRepositoryConfigVersionPolicy, String>(versionPolicy, (value) => value.wireValue),
    };
  }

  factory MavenRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return MavenRepositoryConfig(
      allowSnapshotOverwrites: (() { final guardedValue = map['allowSnapshotOverwrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      versionPolicy: (() { final guardedValue = map['versionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MavenRepositoryConfigVersionPolicy.fromValue(guardedValue as String)); })(),
    );
  }
}

