// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_extension_config_item_response.dart';

/// Details about the usage of a deployment extension.
class DeploymentExtensionResponse {
  /// The configuration used for deployment. The keys of this object should align with the extension config schema.
  final pulumi.Input<Map<String, DeploymentExtensionConfigItemResponse>>? config;
  /// The configuration ID of the extension usage. It uniquely identifies a target the extension deploys to.
  final pulumi.Input<String>? configId;
  /// The extension name.
  final pulumi.Input<String> name;
  /// The extension version.
  final pulumi.Input<String> version;

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
      'config': ?pulumi.Input.mapOptionalInputValue<Map<String, DeploymentExtensionConfigItemResponse>, Map<String, Map<String, dynamic>>>(config, (value) => pulumi.Input.encodeMapValues<DeploymentExtensionConfigItemResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configId': ?configId,
      'name': name,
      'version': version,
    };
  }

  factory DeploymentExtensionResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentExtensionResponse(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeploymentExtensionConfigItemResponse>(guardedValue, (value) => DeploymentExtensionConfigItemResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configId: (() { final guardedValue = map['configId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

