// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_i_amcustom_role_iamcustom_role_args_doc}
/// The set of arguments for IAMCustomRole.
/// {@endtemplate}
/// {@macro pulumi_projects_i_amcustom_role_iamcustom_role_args_doc}
class IAMCustomRoleArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human-readable description for the role.
  final pulumi.Input<String?>? description;
  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  final pulumi.Input<List<String>> permissions;
  /// The project that the custom role will be created in.
  /// Defaults to the provider project configuration.
  final pulumi.Input<String?>? project;
  /// The camel case role id to use for this role. Cannot contain `-` characters.
  final pulumi.Input<String?>? roleId;
  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  final pulumi.Input<String?>? stage;
  /// A human-readable title for the role.
  final pulumi.Input<String> title;

  /// Creates a new [IAMCustomRoleArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] A human-readable description for the role.
  /// [permissions] The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  /// [project] The project that the custom role will be created in.
  /// [roleId] The camel case role id to use for this role. Cannot contain `-` characters.
  /// [stage] The current launch stage of the role.
  /// [title] A human-readable title for the role.
  const IAMCustomRoleArgs({
    this.deletionPolicy,
    this.description,
    required this.permissions,
    this.project,
    this.roleId,
    this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'permissions': permissions,
      'project': ?project,
      'roleId': ?roleId,
      'stage': ?stage,
      'title': title,
    };
  }

  factory IAMCustomRoleArgs.fromMap(Map<String, dynamic> map) {
    return IAMCustomRoleArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}
