// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_parameter_reference_response.dart';

/// The value or how to get a value for an extension config property.
class DeploymentExtensionConfigItemResponse {
  /// The key vault reference of the config item.
  final pulumi.Input<KeyVaultParameterReferenceResponse>? keyVaultReference;
  /// The type of the value.
  final pulumi.Input<String> type;
  /// The value of the config item. The type is determined by the extension config schema.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [DeploymentExtensionConfigItemResponse].
  /// [keyVaultReference] The key vault reference of the config item.
  /// [type] The type of the value.
  /// [value] The value of the config item. The type is determined by the extension config schema.
  const DeploymentExtensionConfigItemResponse({
    this.keyVaultReference,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultReference': ?pulumi.Input.mapOptionalInputValue<KeyVaultParameterReferenceResponse, Map<String, dynamic>>(keyVaultReference, (value) => value.toMap()),
      'type': type,
      'value': ?value,
    };
  }

  factory DeploymentExtensionConfigItemResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentExtensionConfigItemResponse(
      keyVaultReference: (() { final guardedValue = map['keyVaultReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultParameterReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
