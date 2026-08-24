// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_permission_group_meta.dart';

/// Result data returned by getAccountPermissionGroup.
class GetAccountPermissionGroupResult {
  /// Account identifier tag.
  final String? accountId;
  /// Identifier of the permission group.
  final String? id;
  /// Attributes associated to the permission group.
  final GetAccountPermissionGroupMeta? meta;
  /// Name of the permission group.
  final String? name;
  /// Permission Group identifier tag.
  final String? permissionGroupId;

  /// Creates a new [GetAccountPermissionGroupResult].
  /// [accountId] Account identifier tag.
  /// [id] Identifier of the permission group.
  /// [meta] Attributes associated to the permission group.
  /// [name] Name of the permission group.
  /// [permissionGroupId] Permission Group identifier tag.
  const GetAccountPermissionGroupResult({
    this.accountId,
    this.id,
    this.meta,
    this.name,
    this.permissionGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'meta': ?meta?.toMap(),
      'name': ?name,
      'permissionGroupId': ?permissionGroupId,
    };
  }

  factory GetAccountPermissionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetAccountPermissionGroupResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return GetAccountPermissionGroupMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissionGroupId: (() { final guardedValue = map['permissionGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
