// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationSecurityPolicyAssociation resources.
class OrganizationSecurityPolicyAssociationState {
  /// The resource that the security policy is attached to.
  final pulumi.Input<String?>? attachmentId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the security policy of the association.
  final pulumi.Input<String?>? displayName;
  /// A list of folders to exclude from the security policy.
  final pulumi.Input<List<String>?>? excludedFolders;
  /// A list of projects to exclude from the security policy.
  final pulumi.Input<List<String>?>? excludedProjects;
  /// The name for an association.
  final pulumi.Input<String?>? name;
  /// The security policy ID of the association.
  final pulumi.Input<String?>? policyId;

  /// Creates a new [OrganizationSecurityPolicyAssociationState].
  /// [attachmentId] The resource that the security policy is attached to.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the security policy of the association.
  /// [excludedFolders] A list of folders to exclude from the security policy.
  /// [excludedProjects] A list of projects to exclude from the security policy.
  /// [name] The name for an association.
  /// [policyId] The security policy ID of the association.
  const OrganizationSecurityPolicyAssociationState({
    this.attachmentId,
    this.deletionPolicy,
    this.displayName,
    this.excludedFolders,
    this.excludedProjects,
    this.name,
    this.policyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachmentId': ?attachmentId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'excludedFolders': ?excludedFolders,
      'excludedProjects': ?excludedProjects,
      'name': ?name,
      'policyId': ?policyId,
    };
  }

  factory OrganizationSecurityPolicyAssociationState.fromMap(Map<String, dynamic> map) {
    return OrganizationSecurityPolicyAssociationState(
      attachmentId: (() { final guardedValue = map['attachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludedFolders: (() { final guardedValue = map['excludedFolders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludedProjects: (() { final guardedValue = map['excludedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
