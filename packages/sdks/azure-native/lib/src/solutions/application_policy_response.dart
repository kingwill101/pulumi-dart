// ignore_for_file: unused_element, unnecessary_cast


/// Managed application policy.
class ApplicationPolicyResponse {
  /// The policy name
  final String? name;
  /// The policy parameters.
  final String? parameters;
  /// The policy definition Id.
  final String? policyDefinitionId;

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
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'] as String,
      policyDefinitionId: map['policyDefinitionId'] == null ? null : map['policyDefinitionId'] as String,
    );
  }
}

