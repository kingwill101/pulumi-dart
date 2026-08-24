// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_api_token_permission_groups_list_get_account_api_token_permission_groups_list_args_doc}
/// Arguments for getAccountApiTokenPermissionGroupsList.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_api_token_permission_groups_list_get_account_api_token_permission_groups_list_args_doc}
class GetAccountApiTokenPermissionGroupsListArgs {
  /// Account identifier tag.
  final pulumi.Input<String?>? accountId;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Filter by the name of the permission group.
  /// The value must be URL-encoded.
  final pulumi.Input<String?>? name;
  /// Filter by the scope of the permission group.
  /// The value must be URL-encoded.
  final pulumi.Input<String?>? scope;

  /// Creates a new [GetAccountApiTokenPermissionGroupsListArgs].
  /// [accountId] Account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by the name of the permission group.
  /// [scope] Filter by the scope of the permission group.
  const GetAccountApiTokenPermissionGroupsListArgs({
    this.accountId,
    this.maxItems,
    this.name,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
      'scope': ?scope,
    };
  }

  factory GetAccountApiTokenPermissionGroupsListArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountApiTokenPermissionGroupsListArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
