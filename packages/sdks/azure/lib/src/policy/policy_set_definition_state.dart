// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_set_definition_policy_definition_group.dart';
import 'policy_set_definition_policy_definition_reference.dart';

/// Input properties used for looking up and filtering PolicySetDefinition resources.
class PolicySetDefinitionState {
  /// The description of this Policy Set Definition.
  final pulumi.Input<String>? description;
  /// The display name of this Policy Set Definition.
  final pulumi.Input<String>? displayName;
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
  final pulumi.Input<List<PolicySetDefinitionPolicyDefinitionReference>>? policyDefinitionReferences;
  /// The Policy Set Definition type. Possible values are `BuiltIn`, `Custom`, `NotSpecified`, and `Static`. Changing this forces a new Policy Set Definition to be created.
  final pulumi.Input<String>? policyType;

  /// Creates a new [PolicySetDefinitionState].
  /// [description] The description of this Policy Set Definition.
  /// [displayName] The display name of this Policy Set Definition.
  /// [managementGroupId] Optional.
  /// [metadata] The metadata for the Policy Set Definition in JSON format.
  /// [name] The name which should be used for this Policy Set Definition. Changing this forces a new Policy Set Definition to be created.
  /// [parameters] The parameters for the Policy Set Definition in JSON format. Reducing the number of parameters forces a new resource to be created.
  /// [policyDefinitionGroups] One or more `policy_definition_group` blocks as defined below.
  /// [policyDefinitionReferences] One or more `policy_definition_reference` blocks as defined below.
  /// [policyType] The Policy Set Definition type. Possible values are `BuiltIn`, `Custom`, `NotSpecified`, and `Static`. Changing this forces a new Policy Set Definition to be created.
  PolicySetDefinitionState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? managementGroupId,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parameters,
    pulumi.Output<List<PolicySetDefinitionPolicyDefinitionGroup>>? policyDefinitionGroups,
    pulumi.Output<List<PolicySetDefinitionPolicyDefinitionReference>>? policyDefinitionReferences,
    pulumi.Output<String>? policyType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      managementGroupId = pulumi.Input.asOptionalInput<String>(managementGroupId),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      policyDefinitionGroups = pulumi.Input.asOptionalInput<List<PolicySetDefinitionPolicyDefinitionGroup>>(policyDefinitionGroups),
      policyDefinitionReferences = pulumi.Input.asOptionalInput<List<PolicySetDefinitionPolicyDefinitionReference>>(policyDefinitionReferences),
      policyType = pulumi.Input.asOptionalInput<String>(policyType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'managementGroupId': ?managementGroupId,
      'metadata': ?metadata,
      'name': ?name,
      'parameters': ?parameters,
      'policyDefinitionGroups': ?pulumi.Input.mapOptionalInputValue<List<PolicySetDefinitionPolicyDefinitionGroup>, List<Map<String, dynamic>>>(policyDefinitionGroups, (value) => pulumi.Input.encodeList<PolicySetDefinitionPolicyDefinitionGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyDefinitionReferences': ?pulumi.Input.mapOptionalInputValue<List<PolicySetDefinitionPolicyDefinitionReference>, List<Map<String, dynamic>>>(policyDefinitionReferences, (value) => pulumi.Input.encodeList<PolicySetDefinitionPolicyDefinitionReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policyType': ?policyType,
    };
  }

  factory PolicySetDefinitionState.fromMap(Map<String, dynamic> map) {
    return PolicySetDefinitionState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      managementGroupId: map['managementGroupId'] == null ? null : pulumi.Output.create<String>(map['managementGroupId'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<String>(map['parameters'] as String),
      policyDefinitionGroups: map['policyDefinitionGroups'] == null ? null : pulumi.Output.create<List<PolicySetDefinitionPolicyDefinitionGroup>>(pulumi.Input.decodeList<PolicySetDefinitionPolicyDefinitionGroup>(map['policyDefinitionGroups'], (value) => PolicySetDefinitionPolicyDefinitionGroup.fromMap((value as Map).cast<String, dynamic>()))),
      policyDefinitionReferences: map['policyDefinitionReferences'] == null ? null : pulumi.Output.create<List<PolicySetDefinitionPolicyDefinitionReference>>(pulumi.Input.decodeList<PolicySetDefinitionPolicyDefinitionReference>(map['policyDefinitionReferences'], (value) => PolicySetDefinitionPolicyDefinitionReference.fromMap((value as Map).cast<String, dynamic>()))),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
    );
  }
}

