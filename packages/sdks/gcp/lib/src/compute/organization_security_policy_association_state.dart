// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationSecurityPolicyAssociation resources.
class OrganizationSecurityPolicyAssociationState {
  /// The resource that the security policy is attached to.
  final pulumi.Input<String>? attachmentId;
  /// The display name of the security policy of the association.
  final pulumi.Input<String>? displayName;
  /// The name for an association.
  final pulumi.Input<String>? name;
  /// The security policy ID of the association.
  final pulumi.Input<String>? policyId;

  /// Creates a new [OrganizationSecurityPolicyAssociationState].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [displayName] The display name of the security policy of the association.
  /// [name] The name for an association.
  /// [policyId] The security policy ID of the association.
  OrganizationSecurityPolicyAssociationState({
    pulumi.Output<String>? attachmentId,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policyId,
  }) :
      attachmentId = pulumi.Input.asOptionalInput<String>(attachmentId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      policyId = pulumi.Input.asOptionalInput<String>(policyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'displayName': ?displayName,
      'name': ?name,
      'policyId': ?policyId,
    };
  }

  factory OrganizationSecurityPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyAssociationState(
      attachmentId: map['attachmentId'] == null ? null : pulumi.Output.create<String>(map['attachmentId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policyId: map['policyId'] == null ? null : pulumi.Output.create<String>(map['policyId'] as String),
    );
  }
}

