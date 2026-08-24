// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_member_role_permissions.dart';

class GetAccountMemberRole {
  /// Description of role's permissions.
  final pulumi.Input<String> description;
  /// Role identifier tag.
  final pulumi.Input<String> id;
  /// Role name.
  final pulumi.Input<String> name;
  final pulumi.Input<GetAccountMemberRolePermissions> permissions;

  /// Creates a new [GetAccountMemberRole].
  /// [description] Description of role's permissions.
  /// [id] Role identifier tag.
  /// [name] Role name.
  /// [permissions] Required.
  const GetAccountMemberRole({
    required this.description,
    required this.id,
    required this.name,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'name': name,
      'permissions': pulumi.Input.mapInputValue<GetAccountMemberRolePermissions, Map<String, dynamic>>(permissions, (value) => value.toMap()),
    };
  }

  factory GetAccountMemberRole.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberRole(
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      permissions: pulumi.Input.fromValue(GetAccountMemberRolePermissions.fromMap((map['permissions']! as Map).cast<String, dynamic>())),
    );
  }
}
