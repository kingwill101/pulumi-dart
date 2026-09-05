// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_set_definition_policy_definition_group.dart';
import 'get_policy_set_definition_policy_definition_reference.dart';

/// Result data returned by getPolicySetDefinition.
class GetPolicySetDefinitionResult {
  /// The description of this policy definition group.
  final String? description;
  /// The display name of this policy definition group.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? managementGroupName;
  /// Any Metadata defined in the Policy Set Definition.
  final String? metadata;
  /// The name of this policy definition group.
  final String? name;
  /// The mapping of the parameter values for the referenced policy rule. The keys are the parameter names.
  final String? parameters;
  /// One or more `policyDefinitionGroup` blocks as defined below.
  final List<GetPolicySetDefinitionPolicyDefinitionGroup>? policyDefinitionGroups;
  /// One or more `policyDefinitionReference` blocks as defined below.
  final List<GetPolicySetDefinitionPolicyDefinitionReference>? policyDefinitionReferences;
  /// The policy definitions contained within the policy set definition.
  final String? policyDefinitions;
  /// The Type of the Policy Set Definition.
  final String? policyType;

  /// Creates a new [GetPolicySetDefinitionResult].
  /// [description] The description of this policy definition group.
  /// [displayName] The display name of this policy definition group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managementGroupName] Optional.
  /// [metadata] Any Metadata defined in the Policy Set Definition.
  /// [name] The name of this policy definition group.
  /// [parameters] The mapping of the parameter values for the referenced policy rule. The keys are the parameter names.
  /// [policyDefinitionGroups] One or more `policyDefinitionGroup` blocks as defined below.
  /// [policyDefinitionReferences] One or more `policyDefinitionReference` blocks as defined below.
  /// [policyDefinitions] The policy definitions contained within the policy set definition.
  /// [policyType] The Type of the Policy Set Definition.
  const GetPolicySetDefinitionResult({
    this.description,
    this.displayName,
    this.id,
    this.managementGroupName,
    this.metadata,
    this.name,
    this.parameters,
    this.policyDefinitionGroups,
    this.policyDefinitionReferences,
    this.policyDefinitions,
    this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'managementGroupName': ?managementGroupName,
      'metadata': ?metadata,
      'name': ?name,
      'parameters': ?parameters,
      'policyDefinitionGroups': ?(() { final guardedValue = policyDefinitionGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPolicySetDefinitionPolicyDefinitionGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policyDefinitionReferences': ?(() { final guardedValue = policyDefinitionReferences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPolicySetDefinitionPolicyDefinitionReference, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policyDefinitions': ?policyDefinitions,
      'policyType': ?policyType,
    };
  }

  factory GetPolicySetDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetPolicySetDefinitionResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managementGroupName: (() { final guardedValue = map['managementGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyDefinitionGroups: (() { final guardedValue = map['policyDefinitionGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPolicySetDefinitionPolicyDefinitionGroup>(guardedValue, (value) => GetPolicySetDefinitionPolicyDefinitionGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      policyDefinitionReferences: (() { final guardedValue = map['policyDefinitionReferences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPolicySetDefinitionPolicyDefinitionReference>(guardedValue, (value) => GetPolicySetDefinitionPolicyDefinitionReference.fromMap((value as Map).cast<String, dynamic>())); })(),
      policyDefinitions: (() { final guardedValue = map['policyDefinitions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
