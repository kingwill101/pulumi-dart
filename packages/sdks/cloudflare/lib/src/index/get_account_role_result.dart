// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_role_permissions.dart';

/// Result data returned by getAccountRole.
class GetAccountRoleResult {
  /// Account identifier tag.
  final String? accountId;
  /// Description of role's permissions.
  final String? description;
  /// Role identifier tag.
  final String? id;
  /// Role name.
  final String? name;
  final GetAccountRolePermissions? permissions;
  /// Role identifier tag.
  final String? roleId;

  /// Creates a new [GetAccountRoleResult].
  /// [accountId] Account identifier tag.
  /// [description] Description of role's permissions.
  /// [id] Role identifier tag.
  /// [name] Role name.
  /// [permissions] Optional.
  /// [roleId] Role identifier tag.
  const GetAccountRoleResult({
    this.accountId,
    this.description,
    this.id,
    this.name,
    this.permissions,
    this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'permissions': ?permissions?.toMap(),
      'roleId': ?roleId,
    };
  }

  factory GetAccountRoleResult.fromMap(Map<String, dynamic> map) {
    return GetAccountRoleResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return GetAccountRolePermissions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      roleId: (() { final guardedValue = map['roleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
