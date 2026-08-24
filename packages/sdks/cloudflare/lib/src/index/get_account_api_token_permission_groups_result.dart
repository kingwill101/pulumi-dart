// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_api_token_permission_groups_permission_group.dart';

/// Result data returned by getAccountApiTokenPermissionGroups.
class GetAccountApiTokenPermissionGroupsResult {
  /// Account identifier tag.
  final String? accountId;
  /// Filter by the name of the permission group.
  /// The value must be URL-encoded.
  final String? name;
  final List<GetAccountApiTokenPermissionGroupsPermissionGroup>? permissionGroups;
  /// Filter by the scope of the permission group.
  /// The value must be URL-encoded.
  final String? scope;

  /// Creates a new [GetAccountApiTokenPermissionGroupsResult].
  /// [accountId] Account identifier tag.
  /// [name] Filter by the name of the permission group.
  /// [permissionGroups] Optional.
  /// [scope] Filter by the scope of the permission group.
  const GetAccountApiTokenPermissionGroupsResult({
    this.accountId,
    this.name,
    this.permissionGroups,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': ?name,
      'permissionGroups': ?(() { final guardedValue = permissionGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountApiTokenPermissionGroupsPermissionGroup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
    };
  }

  factory GetAccountApiTokenPermissionGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountApiTokenPermissionGroupsResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissionGroups: (() { final guardedValue = map['permissionGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountApiTokenPermissionGroupsPermissionGroup>(guardedValue, (value) => GetAccountApiTokenPermissionGroupsPermissionGroup.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
