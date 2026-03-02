// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIamCustomRolesRole {
  /// The current deleted state of the role.
  final pulumi.Input<bool> deleted;
  /// A human-readable description for the role.
  final pulumi.Input<String> description;
  /// an identifier for the resource with the format `organizations/{{org_id}}/roles/{{role_id}}`.
  final pulumi.Input<String> id;
  /// The name of the role in the format `organizations/{{org_id}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  final pulumi.Input<String> name;
  /// The names of the permissions this role grants when bound in an IAM policy.
  final pulumi.Input<List<String>> permissions;
  /// The camel case role id used for this role.
  final pulumi.Input<String> roleId;
  /// The current launch stage of the role. List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  final pulumi.Input<String> stage;
  /// A human-readable title for the role.
  final pulumi.Input<String> title;

  /// Creates a new [GetIamCustomRolesRole].
  /// [deleted] The current deleted state of the role.
  /// [description] A human-readable description for the role.
  /// [id] an identifier for the resource with the format `organizations/{{org_id}}/roles/{{role_id}}`.
  /// [name] The name of the role in the format `organizations/{{org_id}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  /// [permissions] The names of the permissions this role grants when bound in an IAM policy.
  /// [roleId] The camel case role id used for this role.
  /// [stage] The current launch stage of the role. List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  /// [title] A human-readable title for the role.
  GetIamCustomRolesRole({
    required this.deleted,
    required this.description,
    required this.id,
    required this.name,
    required this.permissions,
    required this.roleId,
    required this.stage,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted': deleted,
      'description': description,
      'id': id,
      'name': name,
      'permissions': permissions,
      'roleId': roleId,
      'stage': stage,
      'title': title,
    };
  }

  factory GetIamCustomRolesRole.fromMap(Map<String, dynamic> map) {
    return GetIamCustomRolesRole(
      deleted: (map['deleted'] as bool).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      permissions: ((map['permissions'] as List).cast<String>()).input(),
      roleId: (map['roleId'] as String).input(),
      stage: (map['stage'] as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}

