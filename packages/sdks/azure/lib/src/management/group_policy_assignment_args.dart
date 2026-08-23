// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_assignment_identity.dart';
import 'group_policy_assignment_non_compliance_message.dart';
import 'group_policy_assignment_override.dart';
import 'group_policy_assignment_resource_selector.dart';

/// {@template pulumi_management_group_policy_assignment_group_policy_assignment_args_doc}
/// The set of arguments for GroupPolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_management_group_policy_assignment_group_policy_assignment_args_doc}
class GroupPolicyAssignmentArgs {
  /// A description which should be used for this Policy Assignment.
  final pulumi.Input<String>? description;
  /// The Display Name for this Policy Assignment.
  final pulumi.Input<String>? displayName;
  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  final pulumi.Input<bool>? enforce;
  /// An `identity` block as defined below.
  ///
  /// &gt; **Note:** The `location` field must also be specified when `identity` is specified.
  final pulumi.Input<GroupPolicyAssignmentIdentity>? identity;
  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Management Group. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String> managementGroupId;
  /// A JSON mapping of any Metadata for this Policy.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Policy Assignment. Cannot exceed 24 characters in length. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? name;
  /// One or more `nonComplianceMessage` blocks as defined below.
  final pulumi.Input<List<GroupPolicyAssignmentNonComplianceMessage>>? nonComplianceMessages;
  /// Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  final pulumi.Input<List<String>>? notScopes;
  /// One or more `overrides` blocks as defined below. More detail about `overrides` and `resourceSelectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  final pulumi.Input<List<GroupPolicyAssignmentOverride>>? overrides;
  /// A JSON mapping of any Parameters for this Policy.
  final pulumi.Input<String>? parameters;
  /// The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String> policyDefinitionId;
  /// One or more `resourceSelectors` blocks as defined below to filter polices by resource properties.
  final pulumi.Input<List<GroupPolicyAssignmentResourceSelector>>? resourceSelectors;

  /// Creates a new [GroupPolicyAssignmentArgs].
  /// [description] A description which should be used for this Policy Assignment.
  /// [displayName] The Display Name for this Policy Assignment.
  /// [enforce] Specifies if this Policy should be enforced or not? Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  /// [managementGroupId] The ID of the Management Group. Changing this forces a new Policy Assignment to be created.
  /// [metadata] A JSON mapping of any Metadata for this Policy.
  /// [name] The name which should be used for this Policy Assignment. Cannot exceed 24 characters in length. Changing this forces a new Policy Assignment to be created.
  /// [nonComplianceMessages] One or more `nonComplianceMessage` blocks as defined below.
  /// [notScopes] Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  /// [overrides] One or more `overrides` blocks as defined below. More detail about `overrides` and `resourceSelectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  /// [parameters] A JSON mapping of any Parameters for this Policy.
  /// [policyDefinitionId] The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  /// [resourceSelectors] One or more `resourceSelectors` blocks as defined below to filter polices by resource properties.
  const GroupPolicyAssignmentArgs({
    this.description,
    this.displayName,
    this.enforce,
    this.identity,
    this.location,
    required this.managementGroupId,
    this.metadata,
    this.name,
    this.nonComplianceMessages,
    this.notScopes,
    this.overrides,
    this.parameters,
    required this.policyDefinitionId,
    this.resourceSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'enforce': ?enforce,
      'identity': ?pulumi.Input.mapOptionalInputValue<GroupPolicyAssignmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managementGroupId': managementGroupId,
      'metadata': ?metadata,
      'name': ?name,
      'nonComplianceMessages': ?pulumi.Input.mapOptionalInputValue<List<GroupPolicyAssignmentNonComplianceMessage>, List<Map<String, dynamic>>>(nonComplianceMessages, (value) => pulumi.Input.encodeList<GroupPolicyAssignmentNonComplianceMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notScopes': ?notScopes,
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<GroupPolicyAssignmentOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<GroupPolicyAssignmentOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?parameters,
      'policyDefinitionId': policyDefinitionId,
      'resourceSelectors': ?pulumi.Input.mapOptionalInputValue<List<GroupPolicyAssignmentResourceSelector>, List<Map<String, dynamic>>>(resourceSelectors, (value) => pulumi.Input.encodeList<GroupPolicyAssignmentResourceSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupPolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAssignmentArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforce: (() { final guardedValue = map['enforce']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupPolicyAssignmentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonComplianceMessages: (() { final guardedValue = map['nonComplianceMessages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupPolicyAssignmentNonComplianceMessage>(guardedValue, (value) => GroupPolicyAssignmentNonComplianceMessage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notScopes: (() { final guardedValue = map['notScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      overrides: (() { final guardedValue = map['overrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupPolicyAssignmentOverride>(guardedValue, (value) => GroupPolicyAssignmentOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyDefinitionId: pulumi.Input.fromValue(map['policyDefinitionId'] as String),
      resourceSelectors: (() { final guardedValue = map['resourceSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GroupPolicyAssignmentResourceSelector>(guardedValue, (value) => GroupPolicyAssignmentResourceSelector.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
