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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters'] as String).input(),
      policyDefinitionId: map['policyDefinitionId'] == null ? null : (map['policyDefinitionId'] as String).input(),
    );
  }
}

