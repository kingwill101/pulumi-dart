// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_parameter_reference.dart';

/// Deployment parameter for the template.
class DeploymentParameter {
  /// Input expression to the parameter.
  final String? expression;
  /// Azure Key Vault parameter reference.
  final KeyVaultParameterReference? reference;
  /// Type of the value.
  final String? type;
  /// Input value to the parameter.
  final dynamic value;

  /// Creates a new [DeploymentParameter].
  /// [expression] Input expression to the parameter.
  /// [reference] Azure Key Vault parameter reference.
  /// [type] Type of the value.
  /// [value] Input value to the parameter.
  DeploymentParameter({
    this.expression,
    this.reference,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
      'reference': ?reference == null ? null : reference!.toMap(),
      'type': ?type,
      'value': ?value,
    };
  }

  factory DeploymentParameter.fromMap(Map<String, dynamic> map) {
    return DeploymentParameter(
      expression: map['expression'] == null ? null : map['expression'] as String,
      reference: map['reference'] == null ? null : KeyVaultParameterReference.fromMap((map['reference'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

