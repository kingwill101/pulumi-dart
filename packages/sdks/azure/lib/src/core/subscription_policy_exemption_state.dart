// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SubscriptionPolicyExemption resources.
class SubscriptionPolicyExemptionState {
  /// A description to use for this Policy Exemption.
  final pulumi.Input<String>? description;
  /// A friendly display name to use for this Policy Exemption.
  final pulumi.Input<String>? displayName;
  /// The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  final pulumi.Input<String>? exemptionCategory;
  /// The expiration date and time in UTC ISO 8601 format of this policy exemption.
  final pulumi.Input<String>? expiresOn;
  /// The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  final pulumi.Input<String>? metadata;
  /// The name of the Policy Exemption. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created.
  final pulumi.Input<String>? policyAssignmentId;
  /// The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  final pulumi.Input<List<String>>? policyDefinitionReferenceIds;
  /// The Subscription ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [SubscriptionPolicyExemptionState].
  /// [description] A description to use for this Policy Exemption.
  /// [displayName] A friendly display name to use for this Policy Exemption.
  /// [exemptionCategory] The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  /// [expiresOn] The expiration date and time in UTC ISO 8601 format of this policy exemption.
  /// [metadata] The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  /// [name] The name of the Policy Exemption. Changing this forces a new resource to be created.
  /// [policyAssignmentId] The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created.
  /// [policyDefinitionReferenceIds] The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  /// [subscriptionId] The Subscription ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  SubscriptionPolicyExemptionState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? exemptionCategory,
    pulumi.Output<String>? expiresOn,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyAssignmentId,
    pulumi.Output<List<String>>? policyDefinitionReferenceIds,
    pulumi.Output<String>? subscriptionId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      exemptionCategory = pulumi.Input.asOptionalInput<String>(exemptionCategory),
      expiresOn = pulumi.Input.asOptionalInput<String>(expiresOn),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyAssignmentId = pulumi.Input.asOptionalInput<String>(policyAssignmentId),
      policyDefinitionReferenceIds = pulumi.Input.asOptionalInput<List<String>>(policyDefinitionReferenceIds),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'exemptionCategory': ?exemptionCategory,
      'expiresOn': ?expiresOn,
      'metadata': ?metadata,
      'name': ?name,
      'policyAssignmentId': ?policyAssignmentId,
      'policyDefinitionReferenceIds': ?policyDefinitionReferenceIds,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory SubscriptionPolicyExemptionState.fromMap(Map<String, dynamic> map) {
    return SubscriptionPolicyExemptionState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      exemptionCategory: map['exemptionCategory'] == null ? null : pulumi.Output.create<String>(map['exemptionCategory'] as String),
      expiresOn: map['expiresOn'] == null ? null : pulumi.Output.create<String>(map['expiresOn'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyAssignmentId: map['policyAssignmentId'] == null ? null : pulumi.Output.create<String>(map['policyAssignmentId'] as String),
      policyDefinitionReferenceIds: map['policyDefinitionReferenceIds'] == null ? null : pulumi.Output.create<List<String>>((map['policyDefinitionReferenceIds'] as List).cast<String>()),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

