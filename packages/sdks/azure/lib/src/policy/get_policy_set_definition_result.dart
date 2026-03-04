// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_set_definition_policy_definition_group.dart';
import 'get_policy_set_definition_policy_definition_reference.dart';

/// Result data returned by getPolicySetDefinition.
class GetPolicySetDefinitionResult {
  /// The description of this policy definition group.
  final String description;

  /// The display name of this policy definition group.
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? managementGroupName;

  /// Any Metadata defined in the Policy Set Definition.
  final String metadata;

  /// The name of this policy definition group.
  final String name;

  /// The mapping of the parameter values for the referenced policy rule. The keys are the parameter names.
  final String parameters;

  /// One or more `policy_definition_group` blocks as defined below.
  final List<GetPolicySetDefinitionPolicyDefinitionGroup>
  policyDefinitionGroups;

  /// One or more `policy_definition_reference` blocks as defined below.
  final List<GetPolicySetDefinitionPolicyDefinitionReference>
  policyDefinitionReferences;

  /// The policy definitions contained within the policy set definition.
  final String policyDefinitions;

  /// The Type of the Policy Set Definition.
  final String policyType;

  /// Creates a new [GetPolicySetDefinitionResult].
  /// [description] The description of this policy definition group.
  /// [displayName] The display name of this policy definition group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managementGroupName] Optional.
  /// [metadata] Any Metadata defined in the Policy Set Definition.
  /// [name] The name of this policy definition group.
  /// [parameters] The mapping of the parameter values for the referenced policy rule. The keys are the parameter names.
  /// [policyDefinitionGroups] One or more `policy_definition_group` blocks as defined below.
  /// [policyDefinitionReferences] One or more `policy_definition_reference` blocks as defined below.
  /// [policyDefinitions] The policy definitions contained within the policy set definition.
  /// [policyType] The Type of the Policy Set Definition.
  GetPolicySetDefinitionResult({
    required this.description,
    required this.displayName,
    required this.id,
    this.managementGroupName,
    required this.metadata,
    required this.name,
    required this.parameters,
    required this.policyDefinitionGroups,
    required this.policyDefinitionReferences,
    required this.policyDefinitions,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'id': id,
      'managementGroupName': ?managementGroupName,
      'metadata': metadata,
      'name': name,
      'parameters': parameters,
      'policyDefinitionGroups':
          pulumi.Input.encodeList<
            GetPolicySetDefinitionPolicyDefinitionGroup,
            Map<String, dynamic>
          >(policyDefinitionGroups, (value) => value.toMap()),
      'policyDefinitionReferences':
          pulumi.Input.encodeList<
            GetPolicySetDefinitionPolicyDefinitionReference,
            Map<String, dynamic>
          >(policyDefinitionReferences, (value) => value.toMap()),
      'policyDefinitions': policyDefinitions,
      'policyType': policyType,
    };
  }

  factory GetPolicySetDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetPolicySetDefinitionResult(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      managementGroupName: (() {
        final guardedValue = map['managementGroupName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      metadata: map['metadata'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] as String,
      policyDefinitionGroups:
          pulumi.Input.decodeList<GetPolicySetDefinitionPolicyDefinitionGroup>(
            map['policyDefinitionGroups']!,
            (value) => GetPolicySetDefinitionPolicyDefinitionGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      policyDefinitionReferences:
          pulumi.Input.decodeList<
            GetPolicySetDefinitionPolicyDefinitionReference
          >(
            map['policyDefinitionReferences']!,
            (value) => GetPolicySetDefinitionPolicyDefinitionReference.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      policyDefinitions: map['policyDefinitions'] as String,
      policyType: map['policyType'] as String,
    );
  }
}
