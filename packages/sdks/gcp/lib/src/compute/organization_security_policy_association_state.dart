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
    this.attachmentId,
    this.displayName,
    this.name,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'displayName': ?displayName,
      'name': ?name,
      'policyId': ?policyId,
    };
  }

  factory OrganizationSecurityPolicyAssociationState.fromMap(
    Map<String, dynamic> map,
  ) {
    return OrganizationSecurityPolicyAssociationState(
      attachmentId: (() {
        final guardedValue = map['attachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyId: (() {
        final guardedValue = map['policyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
