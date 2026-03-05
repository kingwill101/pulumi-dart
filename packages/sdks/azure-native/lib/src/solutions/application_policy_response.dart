// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application policy.
class ApplicationPolicyResponse {
  /// The policy name
  final pulumi.Input<String>? name;
  /// The policy parameters.
  final pulumi.Input<String>? parameters;
  /// The policy definition Id.
  final pulumi.Input<String>? policyDefinitionId;

  /// Creates a new [ApplicationPolicyResponse].
  /// [name] The policy name
  /// [parameters] The policy parameters.
  /// [policyDefinitionId] The policy definition Id.
  ApplicationPolicyResponse({
    this.name,
    this.parameters,
    this.policyDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'parameters': ?parameters,
      'policyDefinitionId': ?policyDefinitionId,
    };
  }

  factory ApplicationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationPolicyResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDefinitionId: (() { final guardedValue = map['policyDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

