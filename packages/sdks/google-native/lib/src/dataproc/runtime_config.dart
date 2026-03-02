// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_config.dart';

/// Runtime configuration for a workload.
class RuntimeConfig {
  /// Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  final pulumi.Input<String>? containerImage;
  /// Optional. A mapping of property names to values, which are used to configure workload execution.
  final pulumi.Input<Map<String, String>>? properties;
  /// Optional. Dependency repository configuration.
  final pulumi.Input<RepositoryConfig>? repositoryConfig;
  /// Optional. Version of the batch runtime.
  final pulumi.Input<String>? version;

  /// Creates a new [RuntimeConfig].
  /// [containerImage] Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  /// [properties] Optional. A mapping of property names to values, which are used to configure workload execution.
  /// [repositoryConfig] Optional. Dependency repository configuration.
  /// [version] Optional. Version of the batch runtime.
  RuntimeConfig({
    this.containerImage,
    this.properties,
    this.repositoryConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage': ?containerImage,
      'properties': ?properties,
      'repositoryConfig': ?pulumi.Input.mapOptionalInputValue<RepositoryConfig, Map<String, dynamic>>(repositoryConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory RuntimeConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeConfig(
      containerImage: map['containerImage'] == null ? null : (map['containerImage']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      repositoryConfig: map['repositoryConfig'] == null ? null : (RepositoryConfig.fromMap((map['repositoryConfig']! as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

