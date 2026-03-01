// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_extension_config_item_response.dart';

/// Details about the usage of a deployment extension.
class DeploymentExtensionResponse {
  /// The configuration used for deployment. The keys of this object should align with the extension config schema.
  final Map<String, DeploymentExtensionConfigItemResponse>? config;
  /// The configuration ID of the extension usage. It uniquely identifies a target the extension deploys to.
  final String? configId;
  /// The extension name.
  final String name;
  /// The extension version.
  final String version;

  /// Creates a new [DeploymentExtensionResponse].
  /// [config] The configuration used for deployment. The keys of this object should align with the extension config schema.
  /// [configId] The configuration ID of the extension usage. It uniquely identifies a target the extension deploys to.
  /// [name] The extension name.
  /// [version] The extension version.
  DeploymentExtensionResponse({
    this.config,
    this.configId,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config == null ? null : pulumi.Input.encodeMapValues<DeploymentExtensionConfigItemResponse, Map<String, dynamic>>(config!, (value) => value.toMap()),
      'configId': ?configId,
      'name': name,
      'version': version,
    };
  }

  factory DeploymentExtensionResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentExtensionResponse(
      config: map['config'] == null ? null : pulumi.Input.decodeMapValues<DeploymentExtensionConfigItemResponse>(map['config'], (value) => DeploymentExtensionConfigItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      configId: map['configId'] == null ? null : map['configId'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

