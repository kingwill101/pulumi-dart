// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_policy_assignment_identity.dart';
import 'group_policy_assignment_non_compliance_message.dart';
import 'group_policy_assignment_override.dart';
import 'group_policy_assignment_resource_selector.dart';

/// Input properties used for looking up and filtering GroupPolicyAssignment resources.
class GroupPolicyAssignmentState {
  /// A description which should be used for this Policy Assignment.
  final pulumi.Input<String>? description;
  /// The Display Name for this Policy Assignment.
  final pulumi.Input<String>? displayName;
  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  final pulumi.Input<bool>? enforce;
  /// An `identity` block as defined below.
  ///
  /// > **Note:** The `location` field must also be specified when `identity` is specified.
  final pulumi.Input<GroupPolicyAssignmentIdentity>? identity;
  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Management Group. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? managementGroupId;
  /// A JSON mapping of any Metadata for this Policy.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Policy Assignment. Cannot exceed 24 characters in length. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? name;
  /// One or more `non_compliance_message` blocks as defined below.
  final pulumi.Input<List<GroupPolicyAssignmentNonComplianceMessage>>? nonComplianceMessages;
  /// Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  final pulumi.Input<List<String>>? notScopes;
  /// One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  final pulumi.Input<List<GroupPolicyAssignmentOverride>>? overrides;
  /// A JSON mapping of any Parameters for this Policy.
  final pulumi.Input<String>? parameters;
  /// The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? policyDefinitionId;
  /// One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  final pulumi.Input<List<GroupPolicyAssignmentResourceSelector>>? resourceSelectors;

  /// Creates a new [GroupPolicyAssignmentState].
  /// [description] A description which should be used for this Policy Assignment.
  /// [displayName] The Display Name for this Policy Assignment.
  /// [enforce] Specifies if this Policy should be enforced or not? Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  /// [managementGroupId] The ID of the Management Group. Changing this forces a new Policy Assignment to be created.
  /// [metadata] A JSON mapping of any Metadata for this Policy.
  /// [name] The name which should be used for this Policy Assignment. Cannot exceed 24 characters in length. Changing this forces a new Policy Assignment to be created.
  /// [nonComplianceMessages] One or more `non_compliance_message` blocks as defined below.
  /// [notScopes] Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  /// [overrides] One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  /// [parameters] A JSON mapping of any Parameters for this Policy.
  /// [policyDefinitionId] The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  /// [resourceSelectors] One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  GroupPolicyAssignmentState({
    this.description,
    this.displayName,
    this.enforce,
    this.identity,
    this.location,
    this.managementGroupId,
    this.metadata,
    this.name,
    this.nonComplianceMessages,
    this.notScopes,
    this.overrides,
    this.parameters,
    this.policyDefinitionId,
    this.resourceSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'enforce': ?enforce,
      'identity': ?pulumi.Input.mapOptionalInputValue<GroupPolicyAssignmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'managementGroupId': ?managementGroupId,
      'metadata': ?metadata,
      'name': ?name,
      'nonComplianceMessages': ?pulumi.Input.mapOptionalInputValue<List<GroupPolicyAssignmentNonComplianceMessage>, List<Map<String, dynamic>>>(nonComplianceMessages, (value) => pulumi.Input.encodeList<GroupPolicyAssignmentNonComplianceMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notScopes': ?notScopes,
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<GroupPolicyAssignmentOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<GroupPolicyAssignmentOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?parameters,
      'policyDefinitionId': ?policyDefinitionId,
      'resourceSelectors': ?pulumi.Input.mapOptionalInputValue<List<GroupPolicyAssignmentResourceSelector>, List<Map<String, dynamic>>>(resourceSelectors, (value) => pulumi.Input.encodeList<GroupPolicyAssignmentResourceSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GroupPolicyAssignmentState.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAssignmentState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      enforce: map['enforce'] == null ? null : (map['enforce']! as bool).input(),
      identity: map['identity'] == null ? null : (GroupPolicyAssignmentIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managementGroupId: map['managementGroupId'] == null ? null : (map['managementGroupId']! as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nonComplianceMessages: map['nonComplianceMessages'] == null ? null : (pulumi.Input.decodeList<GroupPolicyAssignmentNonComplianceMessage>(map['nonComplianceMessages']!, (value) => GroupPolicyAssignmentNonComplianceMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notScopes: map['notScopes'] == null ? null : ((map['notScopes']! as List).cast<String>()).input(),
      overrides: map['overrides'] == null ? null : (pulumi.Input.decodeList<GroupPolicyAssignmentOverride>(map['overrides']!, (value) => GroupPolicyAssignmentOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      parameters: map['parameters'] == null ? null : (map['parameters']! as String).input(),
      policyDefinitionId: map['policyDefinitionId'] == null ? null : (map['policyDefinitionId']! as String).input(),
      resourceSelectors: map['resourceSelectors'] == null ? null : (pulumi.Input.decodeList<GroupPolicyAssignmentResourceSelector>(map['resourceSelectors']!, (value) => GroupPolicyAssignmentResourceSelector.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

