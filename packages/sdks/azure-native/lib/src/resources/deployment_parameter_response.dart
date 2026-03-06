// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_parameter_reference_response.dart';

/// Deployment parameter for the template.
class DeploymentParameterResponse {
  /// Azure Key Vault parameter reference.
  final pulumi.Input<KeyVaultParameterReferenceResponse>? reference;
  /// Type of the value.
  final pulumi.Input<String>? type;
  /// Input value to the parameter.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [DeploymentParameterResponse].
  /// [reference] Azure Key Vault parameter reference.
  /// [type] Type of the value.
  /// [value] Input value to the parameter.
  const DeploymentParameterResponse({
    this.reference,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reference': ?pulumi.Input.mapOptionalInputValue<KeyVaultParameterReferenceResponse, Map<String, dynamic>>(reference, (value) => value.toMap()),
      'type': ?type,
      'value': ?value,
    };
  }

  factory DeploymentParameterResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentParameterResponse(
      reference: (() { final guardedValue = map['reference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultParameterReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

