// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryMavenConfig {
  /// The repository with this flag will allow publishing the same
  /// snapshot versions.
  final pulumi.Input<bool?>? allowSnapshotOverwrites;
  /// Version policy defines the versions that the registry will accept.
  /// Default value is `VERSION_POLICY_UNSPECIFIED`.
  /// Possible values are: `VERSION_POLICY_UNSPECIFIED`, `RELEASE`, `SNAPSHOT`.
  final pulumi.Input<String?>? versionPolicy;

  /// Creates a new [RepositoryMavenConfig].
  /// [allowSnapshotOverwrites] The repository with this flag will allow publishing the same
  /// [versionPolicy] Version policy defines the versions that the registry will accept.
  const RepositoryMavenConfig({
    this.allowSnapshotOverwrites,
    this.versionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSnapshotOverwrites': ?allowSnapshotOverwrites,
      'versionPolicy': ?versionPolicy,
    };
  }

  factory RepositoryMavenConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryMavenConfig(
      allowSnapshotOverwrites: (() { final guardedValue = map['allowSnapshotOverwrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      versionPolicy: (() { final guardedValue = map['versionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
