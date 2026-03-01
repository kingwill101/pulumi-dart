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
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enforce,
    pulumi.Output<GroupPolicyAssignmentIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? managementGroupId,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<List<GroupPolicyAssignmentNonComplianceMessage>>? nonComplianceMessages,
    pulumi.Output<List<String>>? notScopes,
    pulumi.Output<List<GroupPolicyAssignmentOverride>>? overrides,
    pulumi.Output<String>? parameters,
    pulumi.Output<String>? policyDefinitionId,
    pulumi.Output<List<GroupPolicyAssignmentResourceSelector>>? resourceSelectors,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enforce = pulumi.Input.asOptionalInput<bool>(enforce),
      identity = pulumi.Input.asOptionalInput<GroupPolicyAssignmentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementGroupId = pulumi.Input.asOptionalInput<String>(managementGroupId),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      nonComplianceMessages = pulumi.Input.asOptionalInput<List<GroupPolicyAssignmentNonComplianceMessage>>(nonComplianceMessages),
      notScopes = pulumi.Input.asOptionalInput<List<String>>(notScopes),
      overrides = pulumi.Input.asOptionalInput<List<GroupPolicyAssignmentOverride>>(overrides),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      policyDefinitionId = pulumi.Input.asOptionalInput<String>(policyDefinitionId),
      resourceSelectors = pulumi.Input.asOptionalInput<List<GroupPolicyAssignmentResourceSelector>>(resourceSelectors);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enforce: map['enforce'] == null ? null : pulumi.Output.create<bool>(map['enforce'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<GroupPolicyAssignmentIdentity>(GroupPolicyAssignmentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementGroupId: map['managementGroupId'] == null ? null : pulumi.Output.create<String>(map['managementGroupId'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nonComplianceMessages: map['nonComplianceMessages'] == null ? null : pulumi.Output.create<List<GroupPolicyAssignmentNonComplianceMessage>>(pulumi.Input.decodeList<GroupPolicyAssignmentNonComplianceMessage>(map['nonComplianceMessages'], (value) => GroupPolicyAssignmentNonComplianceMessage.fromMap((value as Map).cast<String, dynamic>()))),
      notScopes: map['notScopes'] == null ? null : pulumi.Output.create<List<String>>((map['notScopes'] as List).cast<String>()),
      overrides: map['overrides'] == null ? null : pulumi.Output.create<List<GroupPolicyAssignmentOverride>>(pulumi.Input.decodeList<GroupPolicyAssignmentOverride>(map['overrides'], (value) => GroupPolicyAssignmentOverride.fromMap((value as Map).cast<String, dynamic>()))),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<String>(map['parameters'] as String),
      policyDefinitionId: map['policyDefinitionId'] == null ? null : pulumi.Output.create<String>(map['policyDefinitionId'] as String),
      resourceSelectors: map['resourceSelectors'] == null ? null : pulumi.Output.create<List<GroupPolicyAssignmentResourceSelector>>(pulumi.Input.decodeList<GroupPolicyAssignmentResourceSelector>(map['resourceSelectors'], (value) => GroupPolicyAssignmentResourceSelector.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

