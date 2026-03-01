// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_parameter_reference_response.dart';

/// The value or how to get a value for an extension config property.
class DeploymentExtensionConfigItemResponse {
  /// The key vault reference of the config item.
  final KeyVaultParameterReferenceResponse? keyVaultReference;
  /// The type of the value.
  final String type;
  /// The value of the config item. The type is determined by the extension config schema.
  final dynamic value;

  /// Creates a new [DeploymentExtensionConfigItemResponse].
  /// [keyVaultReference] The key vault reference of the config item.
  /// [type] The type of the value.
  /// [value] The value of the config item. The type is determined by the extension config schema.
  DeploymentExtensionConfigItemResponse({
    this.keyVaultReference,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultReference': ?keyVaultReference == null ? null : keyVaultReference!.toMap(),
      'type': type,
      'value': ?value,
    };
  }

  factory DeploymentExtensionConfigItemResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentExtensionConfigItemResponse(
      keyVaultReference: map['keyVaultReference'] == null ? null : KeyVaultParameterReferenceResponse.fromMap((map['keyVaultReference'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

