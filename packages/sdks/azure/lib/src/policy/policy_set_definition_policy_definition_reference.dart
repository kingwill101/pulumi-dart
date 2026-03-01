// ignore_for_file: unused_element, unnecessary_cast


class PolicySetDefinitionPolicyDefinitionReference {
  /// Parameter values for the references Policy Definition in JSON format.
  final String? parameterValues;
  /// The ID of the Policy Definition to include in this Policy Set Definition.
  final String policyDefinitionId;
  /// Specifies a list of Policy Definition Groups names that this Policy Definition Reference belongs to.
  final List<String>? policyGroupNames;
  /// A unique ID within this Policy Set Definition for this Policy Definition Reference.
  final String? referenceId;
  /// The version of the Policy Definition to use.
  final String? version;

  /// Creates a new [PolicySetDefinitionPolicyDefinitionReference].
  /// [parameterValues] Parameter values for the references Policy Definition in JSON format.
  /// [policyDefinitionId] The ID of the Policy Definition to include in this Policy Set Definition.
  /// [policyGroupNames] Specifies a list of Policy Definition Groups names that this Policy Definition Reference belongs to.
  /// [referenceId] A unique ID within this Policy Set Definition for this Policy Definition Reference.
  /// [version] The version of the Policy Definition to use.
  PolicySetDefinitionPolicyDefinitionReference({
    this.parameterValues,
    required this.policyDefinitionId,
    this.policyGroupNames,
    this.referenceId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterValues': ?parameterValues,
      'policyDefinitionId': policyDefinitionId,
      'policyGroupNames': ?policyGroupNames,
      'referenceId': ?referenceId,
      'version': ?version,
    };
  }

  factory PolicySetDefinitionPolicyDefinitionReference.fromMap(Map<String, dynamic> map) {
    return PolicySetDefinitionPolicyDefinitionReference(
      parameterValues: map['parameterValues'] == null ? null : map['parameterValues'] as String,
      policyDefinitionId: map['policyDefinitionId'] as String,
      policyGroupNames: map['policyGroupNames'] == null ? null : (map['policyGroupNames'] as List).cast<String>(),
      referenceId: map['referenceId'] == null ? null : map['referenceId'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

