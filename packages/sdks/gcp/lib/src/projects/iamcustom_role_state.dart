// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IAMCustomRole resources.
class IAMCustomRoleState {
  /// (Optional) The current deleted state of the role.
  final pulumi.Input<bool>? deleted;
  /// A human-readable description for the role.
  final pulumi.Input<String>? description;
  /// The name of the role in the format `projects/{{project}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  final pulumi.Input<String>? name;
  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  final pulumi.Input<List<String>>? permissions;
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
  final pulumi.Input<String>? title;

  /// Creates a new [IAMCustomRoleState].
  /// [deleted] (Optional) The current deleted state of the role.
  /// [description] A human-readable description for the role.
  /// [name] The name of the role in the format `projects/{{project}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  /// [permissions] The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  /// [project] The project that the custom role will be created in.
  /// [roleId] The camel case role id to use for this role. Cannot contain `-` characters.
  /// [stage] The current launch stage of the role.
  /// [title] A human-readable title for the role.
  const IAMCustomRoleState({
    this.deleted,
    this.description,
    this.name,
    this.permissions,
    this.project,
    this.roleId,
    this.stage,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted': ?deleted,
      'description': ?description,
      'name': ?name,
      'permissions': ?permissions,
      'project': ?project,
      'roleId': ?roleId,
      'stage': ?stage,
      'title': ?title,
    };
  }

  factory IAMCustomRoleState.fromMap(Map<String, dynamic> map) {
    return IAMCustomRoleState(
      deleted: (() { final guardedValue = map['deleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

