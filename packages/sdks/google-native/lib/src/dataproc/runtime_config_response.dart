// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_config_response.dart';

/// Runtime configuration for a workload.
class RuntimeConfigResponse {
  /// Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  final pulumi.Input<String> containerImage;
  /// Optional. A mapping of property names to values, which are used to configure workload execution.
  final pulumi.Input<Map<String, String>> properties;
  /// Optional. Dependency repository configuration.
  final pulumi.Input<RepositoryConfigResponse> repositoryConfig;
  /// Optional. Version of the batch runtime.
  final pulumi.Input<String> version;

  /// Creates a new [RuntimeConfigResponse].
  /// [containerImage] Optional. Optional custom container image for the job runtime environment. If not specified, a default container image will be used.
  /// [properties] Optional. A mapping of property names to values, which are used to configure workload execution.
  /// [repositoryConfig] Optional. Dependency repository configuration.
  /// [version] Optional. Version of the batch runtime.
  RuntimeConfigResponse({
    required this.containerImage,
    required this.properties,
    required this.repositoryConfig,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImage': containerImage,
      'properties': properties,
      'repositoryConfig': pulumi.Input.mapInputValue<RepositoryConfigResponse, Map<String, dynamic>>(repositoryConfig, (value) => value.toMap()),
      'version': version,
    };
  }

  factory RuntimeConfigResponse.fromMap(Map<String, dynamic> map) {
    return RuntimeConfigResponse(
      containerImage: (map['containerImage'] as String).input(),
      properties: ((map['properties'] as Map).cast<String, String>()).input(),
      repositoryConfig: (RepositoryConfigResponse.fromMap((map['repositoryConfig'] as Map).cast<String, dynamic>())).input(),
      version: (map['version'] as String).input(),
    );
  }
}

