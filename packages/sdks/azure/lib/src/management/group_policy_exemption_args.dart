// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_management_group_policy_exemption_group_policy_exemption_args_doc}
/// The set of arguments for GroupPolicyExemption.
/// {@endtemplate}
/// {@macro pulumi_management_group_policy_exemption_group_policy_exemption_args_doc}
class GroupPolicyExemptionArgs {
  /// A description to use for this Policy Exemption.
  final pulumi.Input<String>? description;
  /// A friendly display name to use for this Policy Exemption.
  final pulumi.Input<String>? displayName;
  /// The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  final pulumi.Input<String> exemptionCategory;
  /// The expiration date and time in UTC ISO 8601 format of this policy exemption.
  final pulumi.Input<String>? expiresOn;
  /// The Management Group ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String> managementGroupId;
  /// The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  final pulumi.Input<String>? metadata;
  /// The name of the Policy Exemption. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Policy Assignment to be exempted at the specified Scope.
  final pulumi.Input<String> policyAssignmentId;
  /// The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  final pulumi.Input<List<String>>? policyDefinitionReferenceIds;

  /// Creates a new [GroupPolicyExemptionArgs].
  /// [description] A description to use for this Policy Exemption.
  /// [displayName] A friendly display name to use for this Policy Exemption.
  /// [exemptionCategory] The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  /// [expiresOn] The expiration date and time in UTC ISO 8601 format of this policy exemption.
  /// [managementGroupId] The Management Group ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  /// [metadata] The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  /// [name] The name of the Policy Exemption. Changing this forces a new resource to be created.
  /// [policyAssignmentId] The ID of the Policy Assignment to be exempted at the specified Scope.
  /// [policyDefinitionReferenceIds] The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  GroupPolicyExemptionArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> exemptionCategory,
    pulumi.Output<String>? expiresOn,
    required pulumi.Output<String> managementGroupId,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? name,
    required pulumi.Output<String> policyAssignmentId,
    pulumi.Output<List<String>>? policyDefinitionReferenceIds,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      exemptionCategory = pulumi.Input.asInput<String>(exemptionCategory),
      expiresOn = pulumi.Input.asOptionalInput<String>(expiresOn),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyAssignmentId = pulumi.Input.asInput<String>(policyAssignmentId),
      policyDefinitionReferenceIds = pulumi.Input.asOptionalInput<List<String>>(policyDefinitionReferenceIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'exemptionCategory': exemptionCategory,
      'expiresOn': ?expiresOn,
      'managementGroupId': managementGroupId,
      'metadata': ?metadata,
      'name': ?name,
      'policyAssignmentId': policyAssignmentId,
      'policyDefinitionReferenceIds': ?policyDefinitionReferenceIds,
    };
  }

  factory GroupPolicyExemptionArgs.fromMap(Map<String, dynamic> map) {
    return GroupPolicyExemptionArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      exemptionCategory: pulumi.Output.create<String>(map['exemptionCategory'] as String),
      expiresOn: map['expiresOn'] == null ? null : pulumi.Output.create<String>(map['expiresOn'] as String),
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyAssignmentId: pulumi.Output.create<String>(map['policyAssignmentId'] as String),
      policyDefinitionReferenceIds: map['policyDefinitionReferenceIds'] == null ? null : pulumi.Output.create<List<String>>((map['policyDefinitionReferenceIds'] as List).cast<String>()),
    );
  }
}

