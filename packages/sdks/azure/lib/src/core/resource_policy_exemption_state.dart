// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourcePolicyExemption resources.
class ResourcePolicyExemptionState {
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
  /// The Resource ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ResourcePolicyExemptionState].
  /// [description] A description to use for this Policy Exemption.
  /// [displayName] A friendly display name to use for this Policy Exemption.
  /// [exemptionCategory] The category of this policy exemption. Possible values are `Waiver` and `Mitigated`.
  /// [expiresOn] The expiration date and time in UTC ISO 8601 format of this policy exemption.
  /// [metadata] The metadata for this policy exemption. This is a JSON string representing additional metadata that should be stored with the policy exemption.
  /// [name] The name of the Policy Exemption. Changing this forces a new resource to be created.
  /// [policyAssignmentId] The ID of the Policy Assignment to be exempted at the specified Scope. Changing this forces a new resource to be created.
  /// [policyDefinitionReferenceIds] The policy definition reference ID list when the associated policy assignment is an assignment of a policy set definition.
  /// [resourceId] The Resource ID where the Policy Exemption should be applied. Changing this forces a new resource to be created.
  ResourcePolicyExemptionState({
    this.description,
    this.displayName,
    this.exemptionCategory,
    this.expiresOn,
    this.metadata,
    this.name,
    this.policyAssignmentId,
    this.policyDefinitionReferenceIds,
    this.resourceId,
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
      'resourceId': ?resourceId,
    };
  }

  factory ResourcePolicyExemptionState.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyExemptionState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      exemptionCategory: map['exemptionCategory'] == null ? null : (map['exemptionCategory'] as String).input(),
      expiresOn: map['expiresOn'] == null ? null : (map['expiresOn'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      policyAssignmentId: map['policyAssignmentId'] == null ? null : (map['policyAssignmentId'] as String).input(),
      policyDefinitionReferenceIds: map['policyDefinitionReferenceIds'] == null ? null : ((map['policyDefinitionReferenceIds'] as List).cast<String>()).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

