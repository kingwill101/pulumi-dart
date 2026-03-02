// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_organization_security_policy_association_organization_security_policy_association_args_doc}
/// The set of arguments for OrganizationSecurityPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_compute_organization_security_policy_association_organization_security_policy_association_args_doc}
class OrganizationSecurityPolicyAssociationArgs {
  /// The resource that the security policy is attached to.
  final pulumi.Input<String> attachmentId;
  /// The name for an association.
  final pulumi.Input<String>? name;
  /// The security policy ID of the association.
  final pulumi.Input<String> policyId;

  /// Creates a new [OrganizationSecurityPolicyAssociationArgs].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [name] The name for an association.
  /// [policyId] The security policy ID of the association.
  OrganizationSecurityPolicyAssociationArgs({
    required this.attachmentId,
    this.name,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'name': ?name,
      'policyId': policyId,
    };
  }

  factory OrganizationSecurityPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyAssociationArgs(
      attachmentId: (map['attachmentId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      policyId: (map['policyId'] as String).input(),
    );
  }
}

