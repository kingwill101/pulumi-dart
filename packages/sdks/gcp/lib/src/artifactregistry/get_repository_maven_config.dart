// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryMavenConfig {
  /// The repository with this flag will allow publishing the same
  /// snapshot versions.
  final pulumi.Input<bool> allowSnapshotOverwrites;
  /// Version policy defines the versions that the registry will accept. Default value: "VERSION_POLICY_UNSPECIFIED" Possible values: ["VERSION_POLICY_UNSPECIFIED", "RELEASE", "SNAPSHOT"]
  final pulumi.Input<String> versionPolicy;

  /// Creates a new [GetRepositoryMavenConfig].
  /// [allowSnapshotOverwrites] The repository with this flag will allow publishing the same
  /// [versionPolicy] Version policy defines the versions that the registry will accept. Default value: "VERSION_POLICY_UNSPECIFIED" Possible values: ["VERSION_POLICY_UNSPECIFIED", "RELEASE", "SNAPSHOT"]
  GetRepositoryMavenConfig({
    required this.allowSnapshotOverwrites,
    required this.versionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSnapshotOverwrites': allowSnapshotOverwrites,
      'versionPolicy': versionPolicy,
    };
  }

  factory GetRepositoryMavenConfig.fromMap(Map<String, dynamic> map) {
    return GetRepositoryMavenConfig(
      allowSnapshotOverwrites: (map['allowSnapshotOverwrites'] as bool).input(),
      versionPolicy: (map['versionPolicy'] as String).input(),
    );
  }
}

