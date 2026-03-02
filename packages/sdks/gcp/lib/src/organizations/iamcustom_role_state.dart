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
    this.deleted,
    this.description,
    this.name,
    this.orgId,
    this.permissions,
    this.roleId,
    this.stage,
    this.title,
  });

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
      deleted: map['deleted'] == null ? null : (map['deleted']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId']! as String).input(),
      permissions: map['permissions'] == null ? null : ((map['permissions']! as List).cast<String>()).input(),
      roleId: map['roleId'] == null ? null : (map['roleId']! as String).input(),
      stage: map['stage'] == null ? null : (map['stage']! as String).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
    );
  }
}

