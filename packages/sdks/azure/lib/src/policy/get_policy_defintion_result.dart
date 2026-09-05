// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicyDefintion.
class GetPolicyDefintionResult {
  /// The Description of the Policy.
  final String? description;
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? managementGroupName;
  /// Any Metadata defined in the Policy.
  final String? metadata;
  /// The Mode of the Policy.
  final String? mode;
  final String? name;
  /// Any Parameters defined in the Policy.
  final String? parameters;
  /// The Rule as defined (in JSON) in the Policy.
  final String? policyRule;
  /// The Type of the Policy. Possible values are `BuiltIn`, `Custom` and `NotSpecified`.
  final String? policyType;
  /// A list of role definition id extracted from `policyRule` required for remediation.
  final List<String>? roleDefinitionIds;
  /// The Type of Policy.
  final String? type;

  /// Creates a new [GetPolicyDefintionResult].
  /// [description] The Description of the Policy.
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managementGroupName] Optional.
  /// [metadata] Any Metadata defined in the Policy.
  /// [mode] The Mode of the Policy.
  /// [name] Optional.
  /// [parameters] Any Parameters defined in the Policy.
  /// [policyRule] The Rule as defined (in JSON) in the Policy.
  /// [policyType] The Type of the Policy. Possible values are `BuiltIn`, `Custom` and `NotSpecified`.
  /// [roleDefinitionIds] A list of role definition id extracted from `policyRule` required for remediation.
  /// [type] The Type of Policy.
  const GetPolicyDefintionResult({
    this.description,
    this.displayName,
    this.id,
    this.managementGroupName,
    this.metadata,
    this.mode,
    this.name,
    this.parameters,
    this.policyRule,
    this.policyType,
    this.roleDefinitionIds,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'managementGroupName': ?managementGroupName,
      'metadata': ?metadata,
      'mode': ?mode,
      'name': ?name,
      'parameters': ?parameters,
      'policyRule': ?policyRule,
      'policyType': ?policyType,
      'roleDefinitionIds': ?roleDefinitionIds,
      'type': ?type,
    };
  }

  factory GetPolicyDefintionResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyDefintionResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementGroupName: (() { final guardedValue = map['managementGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyRule: (() { final guardedValue = map['policyRule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleDefinitionIds: (() { final guardedValue = map['roleDefinitionIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
