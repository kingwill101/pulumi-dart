// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options to configure the Helm Release resource.
class HelmReleaseSettings {
  /// The backend storage driver for Helm. Values are: configmap, secret, memory, sql.
  final pulumi.Input<String>? driver;
  /// The path to the helm plugins directory.
  final pulumi.Input<String>? pluginsPath;
  /// The path to the registry config file.
  final pulumi.Input<String>? registryConfigPath;
  /// The path to the directory containing cached repository indexes.
  final pulumi.Input<String>? repositoryCache;
  /// The path to the file containing repository names and URLs.
  final pulumi.Input<String>? repositoryConfigPath;

  /// Creates a new [HelmReleaseSettings].
  /// [driver] The backend storage driver for Helm. Values are: configmap, secret, memory, sql.
  /// [pluginsPath] The path to the helm plugins directory.
  /// [registryConfigPath] The path to the registry config file.
  /// [repositoryCache] The path to the directory containing cached repository indexes.
  /// [repositoryConfigPath] The path to the file containing repository names and URLs.
  HelmReleaseSettings({
    this.driver,
    this.pluginsPath,
    this.registryConfigPath,
    this.repositoryCache,
    this.repositoryConfigPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
      'pluginsPath': ?pluginsPath,
      'registryConfigPath': ?registryConfigPath,
      'repositoryCache': ?repositoryCache,
      'repositoryConfigPath': ?repositoryConfigPath,
    };
  }

  factory HelmReleaseSettings.fromMap(Map<String, dynamic> map) {
    return HelmReleaseSettings(
      driver: map['driver'] == null ? null : (map['driver']! as String).input(),
      pluginsPath: map['pluginsPath'] == null ? null : (map['pluginsPath']! as String).input(),
      registryConfigPath: map['registryConfigPath'] == null ? null : (map['registryConfigPath']! as String).input(),
      repositoryCache: map['repositoryCache'] == null ? null : (map['repositoryCache']! as String).input(),
      repositoryConfigPath: map['repositoryConfigPath'] == null ? null : (map['repositoryConfigPath']! as String).input(),
    );
  }
}

