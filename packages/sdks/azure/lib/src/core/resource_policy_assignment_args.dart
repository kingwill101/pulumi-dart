// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_assignment_identity.dart';
import 'resource_policy_assignment_non_compliance_message.dart';
import 'resource_policy_assignment_override.dart';
import 'resource_policy_assignment_resource_selector.dart';

/// {@template pulumi_core_resource_policy_assignment_resource_policy_assignment_args_doc}
/// The set of arguments for ResourcePolicyAssignment.
/// {@endtemplate}
/// {@macro pulumi_core_resource_policy_assignment_resource_policy_assignment_args_doc}
class ResourcePolicyAssignmentArgs {
  /// A description which should be used for this Policy Assignment.
  final pulumi.Input<String>? description;
  /// The Display Name for this Policy Assignment.
  final pulumi.Input<String>? displayName;
  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  final pulumi.Input<bool>? enforce;
  /// An `identity` block as defined below.
  ///
  /// > **Note:** The `location` field must also be specified when `identity` is specified.
  final pulumi.Input<ResourcePolicyAssignmentIdentity>? identity;
  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? location;
  /// A JSON mapping of any Metadata for this Policy.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Policy Assignment. Changing this forces a new Resource Policy Assignment to be created. Cannot exceed 64 characters in length.
  final pulumi.Input<String>? name;
  /// One or more `non_compliance_message` blocks as defined below.
  final pulumi.Input<List<ResourcePolicyAssignmentNonComplianceMessage>>? nonComplianceMessages;
  /// Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  final pulumi.Input<List<String>>? notScopes;
  /// One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  final pulumi.Input<List<ResourcePolicyAssignmentOverride>>? overrides;
  /// A JSON mapping of any Parameters for this Policy.
  final pulumi.Input<String>? parameters;
  /// The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String> policyDefinitionId;
  /// The ID of the Resource (or Resource Scope) where this should be applied. Changing this forces a new Resource Policy Assignment to be created.
  ///
  /// > **Note:** To create a Policy Assignment at a Management Group use the `azure.management.GroupPolicyAssignment` resource, for a Resource Group use the `azure.core.ResourceGroupPolicyAssignment` and for a Subscription use the `azure.core.SubscriptionPolicyAssignment` resource.
  final pulumi.Input<String> resourceId;
  /// One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  final pulumi.Input<List<ResourcePolicyAssignmentResourceSelector>>? resourceSelectors;

  /// Creates a new [ResourcePolicyAssignmentArgs].
  /// [description] A description which should be used for this Policy Assignment.
  /// [displayName] The Display Name for this Policy Assignment.
  /// [enforce] Specifies if this Policy should be enforced or not? Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  /// [metadata] A JSON mapping of any Metadata for this Policy.
  /// [name] The name which should be used for this Policy Assignment. Changing this forces a new Resource Policy Assignment to be created. Cannot exceed 64 characters in length.
  /// [nonComplianceMessages] One or more `non_compliance_message` blocks as defined below.
  /// [notScopes] Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  /// [overrides] One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  /// [parameters] A JSON mapping of any Parameters for this Policy.
  /// [policyDefinitionId] The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  /// [resourceId] The ID of the Resource (or Resource Scope) where this should be applied. Changing this forces a new Resource Policy Assignment to be created.
  /// [resourceSelectors] One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  ResourcePolicyAssignmentArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enforce,
    pulumi.Output<ResourcePolicyAssignmentIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<List<ResourcePolicyAssignmentNonComplianceMessage>>? nonComplianceMessages,
    pulumi.Output<List<String>>? notScopes,
    pulumi.Output<List<ResourcePolicyAssignmentOverride>>? overrides,
    pulumi.Output<String>? parameters,
    required pulumi.Output<String> policyDefinitionId,
    required pulumi.Output<String> resourceId,
    pulumi.Output<List<ResourcePolicyAssignmentResourceSelector>>? resourceSelectors,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enforce = pulumi.Input.asOptionalInput<bool>(enforce),
      identity = pulumi.Input.asOptionalInput<ResourcePolicyAssignmentIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      nonComplianceMessages = pulumi.Input.asOptionalInput<List<ResourcePolicyAssignmentNonComplianceMessage>>(nonComplianceMessages),
      notScopes = pulumi.Input.asOptionalInput<List<String>>(notScopes),
      overrides = pulumi.Input.asOptionalInput<List<ResourcePolicyAssignmentOverride>>(overrides),
      parameters = pulumi.Input.asOptionalInput<String>(parameters),
      policyDefinitionId = pulumi.Input.asInput<String>(policyDefinitionId),
      resourceId = pulumi.Input.asInput<String>(resourceId),
      resourceSelectors = pulumi.Input.asOptionalInput<List<ResourcePolicyAssignmentResourceSelector>>(resourceSelectors);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'enforce': ?enforce,
      'identity': ?pulumi.Input.mapOptionalInputValue<ResourcePolicyAssignmentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'nonComplianceMessages': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicyAssignmentNonComplianceMessage>, List<Map<String, dynamic>>>(nonComplianceMessages, (value) => pulumi.Input.encodeList<ResourcePolicyAssignmentNonComplianceMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notScopes': ?notScopes,
      'overrides': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicyAssignmentOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<ResourcePolicyAssignmentOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parameters': ?parameters,
      'policyDefinitionId': policyDefinitionId,
      'resourceId': resourceId,
      'resourceSelectors': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicyAssignmentResourceSelector>, List<Map<String, dynamic>>>(resourceSelectors, (value) => pulumi.Input.encodeList<ResourcePolicyAssignmentResourceSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResourcePolicyAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAssignmentArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enforce: map['enforce'] == null ? null : pulumi.Output.create<bool>(map['enforce'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<ResourcePolicyAssignmentIdentity>(ResourcePolicyAssignmentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nonComplianceMessages: map['nonComplianceMessages'] == null ? null : pulumi.Output.create<List<ResourcePolicyAssignmentNonComplianceMessage>>(pulumi.Input.decodeList<ResourcePolicyAssignmentNonComplianceMessage>(map['nonComplianceMessages'], (value) => ResourcePolicyAssignmentNonComplianceMessage.fromMap((value as Map).cast<String, dynamic>()))),
      notScopes: map['notScopes'] == null ? null : pulumi.Output.create<List<String>>((map['notScopes'] as List).cast<String>()),
      overrides: map['overrides'] == null ? null : pulumi.Output.create<List<ResourcePolicyAssignmentOverride>>(pulumi.Input.decodeList<ResourcePolicyAssignmentOverride>(map['overrides'], (value) => ResourcePolicyAssignmentOverride.fromMap((value as Map).cast<String, dynamic>()))),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<String>(map['parameters'] as String),
      policyDefinitionId: pulumi.Output.create<String>(map['policyDefinitionId'] as String),
      resourceId: pulumi.Output.create<String>(map['resourceId'] as String),
      resourceSelectors: map['resourceSelectors'] == null ? null : pulumi.Output.create<List<ResourcePolicyAssignmentResourceSelector>>(pulumi.Input.decodeList<ResourcePolicyAssignmentResourceSelector>(map['resourceSelectors'], (value) => ResourcePolicyAssignmentResourceSelector.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

