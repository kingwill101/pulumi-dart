// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IAMCustomRole resources.
class IAMCustomRoleState {
  /// (Optional) The current deleted state of the role.
  final pulumi.Input<bool>? deleted;
  /// A human-readable description for the role.
  final pulumi.Input<String>? description;
  /// The name of the role in the format `organizations/{{org_id}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  final pulumi.Input<String>? name;
  /// The numeric ID of the organization in which you want to create a custom role.
  final pulumi.Input<String>? orgId;
  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  final pulumi.Input<List<String>>? permissions;
  /// The role id to use for this role.
  final pulumi.Input<String>? roleId;
  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  final pulumi.Input<String>? stage;
  /// A human-readable title for the role.
  final pulumi.Input<String>? title;

  /// Creates a new [IAMCustomRoleState].
  /// [deleted] (Optional) The current deleted state of the role.
  /// [description] A human-readable description for the role.
  /// [name] The name of the role in the format `organizations/{{org_id}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  /// [orgId] The numeric ID of the organization in which you want to create a custom role.
  /// [permissions] The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  /// [roleId] The role id to use for this role.
  /// [stage] The current launch stage of the role.
  /// [title] A human-readable title for the role.
  IAMCustomRoleState({
    pulumi.Output<bool>? deleted,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? orgId,
    pulumi.Output<List<String>>? permissions,
    pulumi.Output<String>? roleId,
    pulumi.Output<String>? stage,
    pulumi.Output<String>? title,
  }) :
      deleted = pulumi.Input.asOptionalInput<bool>(deleted),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      orgId = pulumi.Input.asOptionalInput<String>(orgId),
      permissions = pulumi.Input.asOptionalInput<List<String>>(permissions),
      roleId = pulumi.Input.asOptionalInput<String>(roleId),
      stage = pulumi.Input.asOptionalInput<String>(stage),
      title = pulumi.Input.asOptionalInput<String>(title);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted': ?deleted,
      'description': ?description,
      'name': ?name,
      'orgId': ?orgId,
      'permissions': ?permissions,
      'roleId': ?roleId,
      'stage': ?stage,
      'title': ?title,
    };
  }

  factory IAMCustomRoleState.fromMap(Map<String, dynamic> map) {
    return IAMCustomRoleState(
      deleted: map['deleted'] == null ? null : pulumi.Output.create<bool>(map['deleted'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      orgId: map['orgId'] == null ? null : pulumi.Output.create<String>(map['orgId'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<String>>((map['permissions'] as List).cast<String>()),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
      stage: map['stage'] == null ? null : pulumi.Output.create<String>(map['stage'] as String),
      title: map['title'] == null ? null : pulumi.Output.create<String>(map['title'] as String),
    );
  }
}

