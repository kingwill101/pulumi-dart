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
    pulumi.Output<String>? description,
    required pulumi.Output<List<String>> permissions,
    pulumi.Output<String>? project,
    pulumi.Output<String>? roleId,
    pulumi.Output<String>? stage,
    required pulumi.Output<String> title,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      permissions = pulumi.Input.asInput<List<String>>(permissions),
      project = pulumi.Input.asOptionalInput<String>(project),
      roleId = pulumi.Input.asOptionalInput<String>(roleId),
      stage = pulumi.Input.asOptionalInput<String>(stage),
      title = pulumi.Input.asInput<String>(title);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      permissions: pulumi.Output.create<List<String>>((map['permissions'] as List).cast<String>()),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
      stage: map['stage'] == null ? null : pulumi.Output.create<String>(map['stage'] as String),
      title: pulumi.Output.create<String>(map['title'] as String),
    );
  }
}

