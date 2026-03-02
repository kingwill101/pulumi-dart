// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_projects_i_amcustom_role_iamcustom_role_args_doc}
/// The set of arguments for IAMCustomRole.
/// {@endtemplate}
/// {@macro pulumi_projects_i_amcustom_role_iamcustom_role_args_doc}
class IAMCustomRoleArgs {
  /// A human-readable description for the role.
  final pulumi.Input<String>? description;
  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  final pulumi.Input<List<String>> permissions;
  /// The project that the custom role will be created in.
  /// Defaults to the provider project configuration.
  final pulumi.Input<String>? project;
  /// The camel case role id to use for this role. Cannot contain `-` characters.
  final pulumi.Input<String>? roleId;
  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  final pulumi.Input<String>? stage;
  /// A human-readable title for the role.
  final pulumi.Input<String> title;

  /// Creates a new [IAMCustomRoleArgs].
  /// [description] A human-readable description for the role.
  /// [permissions] The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  /// [project] The project that the custom role will be created in.
  /// [roleId] The camel case role id to use for this role. Cannot contain `-` characters.
  /// [stage] The current launch stage of the role.
  /// [title] A human-readable title for the role.
  IAMCustomRoleArgs({
    this.description,
    required this.permissions,
    this.project,
    this.roleId,
    this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      permissions: ((map['permissions'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      roleId: map['roleId'] == null ? null : (map['roleId']! as String).input(),
      stage: map['stage'] == null ? null : (map['stage']! as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}

