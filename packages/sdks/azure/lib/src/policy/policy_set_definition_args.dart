// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_set_definition_policy_definition_group.dart';
import 'policy_set_definition_policy_definition_reference.dart';

/// {@template pulumi_policy_policy_set_definition_policy_set_definition_args_doc}
/// The set of arguments for PolicySetDefinition.
/// {@endtemplate}
/// {@macro pulumi_policy_policy_set_definition_policy_set_definition_args_doc}
class PolicySetDefinitionArgs {
  /// The description of this Policy Set Definition.
  final pulumi.Input<String>? description;
  /// The display name of this Policy Set Definition.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? managementGroupId;
  /// The metadata for the Policy Set Definition in JSON format.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Policy Set Definition. Changing this forces a new Policy Set Definition to be created.
  final pulumi.Input<String>? name;
  /// The parameters for the Policy Set Definition in JSON format. Reducing the number of parameters forces a new resource to be created.
  final pulumi.Input<String>? parameters;
  /// One or more `policy_definition_group` blocks as defined below.
  final pulumi.Input<List<PolicySetDefinitionPolicyDefinitionGroup>>? policyDefinitionGroups;
  /// One or more `policy_definition_reference` blocks as defined below.
  final pulumi.Input<List<PolicySetDefinitionPolicyDefinitionReference>> policyDefinitionReferences;
  /// The Policy Set Definition type. Possible values are `BuiltIn`, `Custom`, `NotSpecified`, and `Static`. Changing this forces a new Policy Set Definition to be created.
  final pulumi.Input<String> policyType;

  /// Creates a new [PolicySetDefinitionArgs].
  /// [description] The description of this Policy Set Definition.
  /// [displayName] The display name of this Policy Set Definition.
  /// [managementGroupId] Optional.
  /// [metadata] The metadata for the Policy Set Definition in JSON format.
  /// [name] The name which should be used for this Policy Set Definition. Changing this forces a new Policy Set Definition to be created.
  /// [parameters] The parameters for the Policy Set Definition in JSON format. Reducing the number of parameters forces a new resource to be created.
  /// [policyDefinitionGroups] One or more `policy_definition_group` blocks as defined below.
  /// [policyDefinitionReferences] One or more `policy_definition_reference` blocks as defined below.
  /// [policyType] The Policy Set Definition type. Possible values are `BuiltIn`, `Custom`, `NotSpecified`, and `Static`. Changing this forces a new Policy Set Definition to be created.
  PolicySetDefinitionArgs({
    this.description,
    required this.displayName,
    this.managementGroupId,
    this.metadata,
    this.name,
    this.parameters,
    this.policyDefinitionGroups,
    required this.policyDefinitionReferences,
    required this.policyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'managementGroupId': ?managementGroupId,
      'metadata': ?metadata,
      'name': ?name,
      'parameters': ?parameters,
      'policyDefinitionGroups': ?pulumi.Input.mapOptionalInputValue<List<PolicySetDefinitionPolicyDefinitionGroup>, List<Map<String, dynamic>>>(policyDefinitionGroups, (value) => pulumi.Input.encodeList<PolicySetDefinitionPolicyDefinitionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionReferences': pulumi.Input.mapInputValue<List<PolicySetDefinitionPolicyDefinitionReference>, List<Map<String, dynamic>>>(policyDefinitionReferences, (value) => pulumi.Input.encodeList<PolicySetDefinitionPolicyDefinitionReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyType': policyType,
    };
  }

  factory PolicySetDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return PolicySetDefinitionArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      managementGroupId: map['managementGroupId'] == null ? null : (map['managementGroupId']! as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
      policyDefinitionGroups: map['policyDefinitionGroups'] == null ? null : (pulumi.Input.decodeList<PolicySetDefinitionPolicyDefinitionGroup>(map['policyDefinitionGroups']!, (value) => PolicySetDefinitionPolicyDefinitionGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyDefinitionReferences: (pulumi.Input.decodeList<PolicySetDefinitionPolicyDefinitionReference>(map['policyDefinitionReferences'], (value) => PolicySetDefinitionPolicyDefinitionReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      policyType: (map['policyType'] as String).input(),
    );
  }
}

