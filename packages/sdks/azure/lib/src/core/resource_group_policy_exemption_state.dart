// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceGroupPolicyExemption resources.
class ResourceGroupPolicyExemptionState {
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

  /// The Resource Group ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [ResourceGroupPolicyExemptionState].
  /// [description] A description to use for this Policy Exemption.
  /// [displayName] A friendly display name to use for this Policy Exemption.
  /// [exemptionCategory] The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  /// [expiresOn] The expiration date and time in UTC ISO 8601 format of this policy exemption.
  /// [metadata] The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  /// [name] The name of the Policy Exemption. Changing this forces a new resource to be created.
  /// [policyAssignmentId] The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created.
  /// [policyDefinitionReferenceIds] The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  /// [resourceGroupId] The Resource Group ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  ResourceGroupPolicyExemptionState({
    this.description,
    this.displayName,
    this.exemptionCategory,
    this.expiresOn,
    this.metadata,
    this.name,
    this.policyAssignmentId,
    this.policyDefinitionReferenceIds,
    this.resourceGroupId,
  });

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
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory ResourceGroupPolicyExemptionState.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPolicyExemptionState(
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
      exemptionCategory: (() {
        final guardedValue = map['exemptionCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expiresOn: (() {
        final guardedValue = map['expiresOn'];
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
      policyAssignmentId: (() {
        final guardedValue = map['policyAssignmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyDefinitionReferenceIds: (() {
        final guardedValue = map['policyDefinitionReferenceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
