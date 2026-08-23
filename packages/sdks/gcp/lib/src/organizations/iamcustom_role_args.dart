// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_organizations_i_amcustom_role_iamcustom_role_args_doc}
/// The set of arguments for IAMCustomRole.
/// {@endtemplate}
/// {@macro pulumi_organizations_i_amcustom_role_iamcustom_role_args_doc}
class IAMCustomRoleArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A human-readable description for the role.
  final pulumi.Input<String>? description;
  /// The numeric ID of the organization in which you want to create a custom role.
  final pulumi.Input<String> orgId;
  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  final pulumi.Input<List<String>> permissions;
  /// The role id to use for this role.
  final pulumi.Input<String>? roleId;
  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  final pulumi.Input<String>? stage;
  /// A human-readable title for the role.
  final pulumi.Input<String> title;

  /// Creates a new [IAMCustomRoleArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] A human-readable description for the role.
  /// [orgId] The numeric ID of the organization in which you want to create a custom role.
  /// [permissions] The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  /// [roleId] The role id to use for this role.
  /// [stage] The current launch stage of the role.
  /// [title] A human-readable title for the role.
  const IAMCustomRoleArgs({
    this.deletionPolicy,
    this.description,
    required this.orgId,
    required this.permissions,
    this.roleId,
    this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'orgId': orgId,
      'permissions': permissions,
      'roleId': ?roleId,
      'stage': ?stage,
      'title': title,
    };
  }

  factory IAMCustomRoleArgs.fromMap(Map<String, dynamic> map) {
    return IAMCustomRoleArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
