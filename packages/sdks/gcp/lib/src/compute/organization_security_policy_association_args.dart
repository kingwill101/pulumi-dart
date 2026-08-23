// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_organization_security_policy_association_organization_security_policy_association_args_doc}
/// The set of arguments for OrganizationSecurityPolicyAssociation.
/// {@endtemplate}
/// {@macro pulumi_compute_organization_security_policy_association_organization_security_policy_association_args_doc}
class OrganizationSecurityPolicyAssociationArgs {
  /// The resource that the security policy is attached to.
  final pulumi.Input<String> attachmentId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A list of folders to exclude from the security policy.
  final pulumi.Input<List<String>>? excludedFolders;
  /// A list of projects to exclude from the security policy.
  final pulumi.Input<List<String>>? excludedProjects;
  /// The name for an association.
  final pulumi.Input<String>? name;
  /// The security policy ID of the association.
  final pulumi.Input<String> policyId;

  /// Creates a new [OrganizationSecurityPolicyAssociationArgs].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [excludedFolders] A list of folders to exclude from the security policy.
  /// [excludedProjects] A list of projects to exclude from the security policy.
  /// [name] The name for an association.
  /// [policyId] The security policy ID of the association.
  const OrganizationSecurityPolicyAssociationArgs({
    required this.attachmentId,
    this.deletionPolicy,
    this.excludedFolders,
    this.excludedProjects,
    this.name,
    required this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': attachmentId,
      'deletionPolicy': ?deletionPolicy,
      'excludedFolders': ?excludedFolders,
      'excludedProjects': ?excludedProjects,
      'name': ?name,
      'policyId': policyId,
    };
  }

  factory OrganizationSecurityPolicyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyAssociationArgs(
      attachmentId: pulumi.Input.fromValue(map['attachmentId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludedFolders: (() { final guardedValue = map['excludedFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludedProjects: (() { final guardedValue = map['excludedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: pulumi.Input.fromValue(map['policyId'] as String),
    );
  }
}
