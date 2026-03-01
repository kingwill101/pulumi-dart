// ignore_for_file: unused_element, unnecessary_cast


class RepositoryMavenConfig {
  /// The repository with this flag will allow publishing the same
  /// snapshot versions.
  final bool? allowSnapshotOverwrites;
  /// Version policy defines the versions that the registry will accept.
  /// Default value is `VERSION_POLICY_UNSPECIFIED`.
  /// Possible values are: `VERSION_POLICY_UNSPECIFIED`, `RELEASE`, `SNAPSHOT`.
  final String? versionPolicy;

  /// Creates a new [RepositoryMavenConfig].
  /// [allowSnapshotOverwrites] The repository with this flag will allow publishing the same
  /// [versionPolicy] Version policy defines the versions that the registry will accept.
  RepositoryMavenConfig({
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
      allowSnapshotOverwrites: map['allowSnapshotOverwrites'] == null ? null : map['allowSnapshotOverwrites'] as bool,
      versionPolicy: map['versionPolicy'] == null ? null : map['versionPolicy'] as String,
    );
  }
}

