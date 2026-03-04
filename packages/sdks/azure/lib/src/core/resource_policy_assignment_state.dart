// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_assignment_identity.dart';
import 'resource_policy_assignment_non_compliance_message.dart';
import 'resource_policy_assignment_override.dart';
import 'resource_policy_assignment_resource_selector.dart';

/// Input properties used for looking up and filtering ResourcePolicyAssignment resources.
class ResourcePolicyAssignmentState {
  /// A description which should be used for this Policy Assignment.
  final pulumi.Input<String>? description;

  /// The Display Name for this Policy Assignment.
  final pulumi.Input<String>? displayName;

  /// Specifies if this Policy should be enforced or not? Defaults to `true`.
  final pulumi.Input<bool>? enforce;

  /// An `identity` block as defined below.
  ///
  /// &gt; **Note:** The `location` field must also be specified when `identity` is specified.
  final pulumi.Input<ResourcePolicyAssignmentIdentity>? identity;

  /// The Azure Region where the Policy Assignment should exist. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? location;

  /// A JSON mapping of any Metadata for this Policy.
  final pulumi.Input<String>? metadata;

  /// The name which should be used for this Policy Assignment. Changing this forces a new Resource Policy Assignment to be created. Cannot exceed 64 characters in length.
  final pulumi.Input<String>? name;

  /// One or more `non_compliance_message` blocks as defined below.
  final pulumi.Input<List<ResourcePolicyAssignmentNonComplianceMessage>>?
  nonComplianceMessages;

  /// Specifies a list of Resource Scopes (for example a Subscription, or a Resource Group) within this Management Group which are excluded from this Policy.
  final pulumi.Input<List<String>>? notScopes;

  /// One or more `overrides` blocks as defined below. More detail about `overrides` and `resource_selectors` see [policy assignment structure](https://learn.microsoft.com/en-us/azure/governance/policy/concepts/assignment-structure)
  final pulumi.Input<List<ResourcePolicyAssignmentOverride>>? overrides;

  /// A JSON mapping of any Parameters for this Policy.
  final pulumi.Input<String>? parameters;

  /// The ID of the Policy Definition or Policy Definition Set. Changing this forces a new Policy Assignment to be created.
  final pulumi.Input<String>? policyDefinitionId;

  /// The ID of the Resource (or Resource Scope) where this should be applied. Changing this forces a new Resource Policy Assignment to be created.
  ///
  /// &gt; **Note:** To create a Policy Assignment at a Management Group use the `azure.management.GroupPolicyAssignment` resource, for a Resource Group use the `azure.core.ResourceGroupPolicyAssignment` and for a Subscription use the `azure.core.SubscriptionPolicyAssignment` resource.
  final pulumi.Input<String>? resourceId;

  /// One or more `resource_selectors` blocks as defined below to filter polices by resource properties.
  final pulumi.Input<List<ResourcePolicyAssignmentResourceSelector>>?
  resourceSelectors;

  /// Creates a new [ResourcePolicyAssignmentState].
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
  ResourcePolicyAssignmentState({
    this.description,
    this.displayName,
    this.enforce,
    this.identity,
    this.location,
    this.metadata,
    this.name,
    this.nonComplianceMessages,
    this.notScopes,
    this.overrides,
    this.parameters,
    this.policyDefinitionId,
    this.resourceId,
    this.resourceSelectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'enforce': ?enforce,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ResourcePolicyAssignmentIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'metadata': ?metadata,
      'name': ?name,
      'nonComplianceMessages':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourcePolicyAssignmentNonComplianceMessage>,
            List<Map<String, dynamic>>
          >(
            nonComplianceMessages,
            (value) =>
                pulumi.Input.encodeList<
                  ResourcePolicyAssignmentNonComplianceMessage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'notScopes': ?notScopes,
      'overrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourcePolicyAssignmentOverride>,
            List<Map<String, dynamic>>
          >(
            overrides,
            (value) =>
                pulumi.Input.encodeList<
                  ResourcePolicyAssignmentOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'parameters': ?parameters,
      'policyDefinitionId': ?policyDefinitionId,
      'resourceId': ?resourceId,
      'resourceSelectors':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResourcePolicyAssignmentResourceSelector>,
            List<Map<String, dynamic>>
          >(
            resourceSelectors,
            (value) =>
                pulumi.Input.encodeList<
                  ResourcePolicyAssignmentResourceSelector,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ResourcePolicyAssignmentState.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAssignmentState(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enforce: (() {
        final guardedValue = map['enforce'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourcePolicyAssignmentIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nonComplianceMessages: (() {
        final guardedValue = map['nonComplianceMessages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourcePolicyAssignmentNonComplianceMessage>(
            guardedValue,
            (value) => ResourcePolicyAssignmentNonComplianceMessage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      notScopes: (() {
        final guardedValue = map['notScopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      overrides: (() {
        final guardedValue = map['overrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourcePolicyAssignmentOverride>(
            guardedValue,
            (value) => ResourcePolicyAssignmentOverride.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyDefinitionId: (() {
        final guardedValue = map['policyDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceSelectors: (() {
        final guardedValue = map['resourceSelectors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResourcePolicyAssignmentResourceSelector>(
            guardedValue,
            (value) => ResourcePolicyAssignmentResourceSelector.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
