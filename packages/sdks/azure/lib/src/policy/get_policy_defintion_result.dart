// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicyDefintion.
class GetPolicyDefintionResult {
  /// The Description of the Policy.
  final String description;
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? managementGroupName;
  /// Any Metadata defined in the Policy.
  final String metadata;
  /// The Mode of the Policy.
  final String mode;
  final String name;
  /// Any Parameters defined in the Policy.
  final String parameters;
  /// The Rule as defined (in JSON) in the Policy.
  final String policyRule;
  /// The Type of the Policy. Possible values are `BuiltIn`, `Custom` and `NotSpecified`.
  final String policyType;
  /// A list of role definition id extracted from `policy_rule` required for remediation.
  final List<String> roleDefinitionIds;
  /// The Type of Policy.
  final String type;

  /// Creates a new [GetPolicyDefintionResult].
  /// [description] The Description of the Policy.
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managementGroupName] Optional.
  /// [metadata] Any Metadata defined in the Policy.
  /// [mode] The Mode of the Policy.
  /// [name] Required.
  /// [parameters] Any Parameters defined in the Policy.
  /// [policyRule] The Rule as defined (in JSON) in the Policy.
  /// [policyType] The Type of the Policy. Possible values are `BuiltIn`, `Custom` and `NotSpecified`.
  /// [roleDefinitionIds] A list of role definition id extracted from `policy_rule` required for remediation.
  /// [type] The Type of Policy.
  const GetPolicyDefintionResult({
    required this.description,
    required this.displayName,
    required this.id,
    this.managementGroupName,
    required this.metadata,
    required this.mode,
    required this.name,
    required this.parameters,
    required this.policyRule,
    required this.policyType,
    required this.roleDefinitionIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'id': id,
      'managementGroupName': ?managementGroupName,
      'metadata': metadata,
      'mode': mode,
      'name': name,
      'parameters': parameters,
      'policyRule': policyRule,
      'policyType': policyType,
      'roleDefinitionIds': roleDefinitionIds,
      'type': type,
    };
  }

  factory GetPolicyDefintionResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyDefintionResult(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      managementGroupName: (() { final guardedValue = map['managementGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: map['metadata'] as String,
      mode: map['mode'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] as String,
      policyRule: map['policyRule'] as String,
      policyType: map['policyType'] as String,
      roleDefinitionIds: (map['roleDefinitionIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

