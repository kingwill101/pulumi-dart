// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_api_token_permission_groups_get_account_api_token_permission_groups_args_doc}
/// Arguments for getAccountApiTokenPermissionGroups.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_api_token_permission_groups_get_account_api_token_permission_groups_args_doc}
class GetAccountApiTokenPermissionGroupsArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Filter by the name of the permission group.
  /// The value must be URL-encoded.
  final pulumi.Input<String?>? name;
  /// Filter by the scope of the permission group.
  /// The value must be URL-encoded.
  final pulumi.Input<String?>? scope;

  /// Creates a new [GetAccountApiTokenPermissionGroupsArgs].
  /// [accountId] Account identifier tag.
  /// [name] Filter by the name of the permission group.
  /// [scope] Filter by the scope of the permission group.
  const GetAccountApiTokenPermissionGroupsArgs({
    this.accountId,
    this.name,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': ?name,
      'scope': ?scope,
    };
  }

  factory GetAccountApiTokenPermissionGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountApiTokenPermissionGroupsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
