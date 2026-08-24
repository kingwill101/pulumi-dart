// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_api_token_permission_groups_list_result.dart';

/// Result data returned by getAccountApiTokenPermissionGroupsList.
class GetAccountApiTokenPermissionGroupsListInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by the name of the permission group.
  /// The value must be URL-encoded.
  final String? name;
  /// The items returned by the data source
  final List<GetAccountApiTokenPermissionGroupsListResult>? results;
  /// Filter by the scope of the permission group.
  /// The value must be URL-encoded.
  final String? scope;

  /// Creates a new [GetAccountApiTokenPermissionGroupsListInvokeResult].
  /// [accountId] Account identifier tag.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by the name of the permission group.
  /// [results] The items returned by the data source
  /// [scope] Filter by the scope of the permission group.
  const GetAccountApiTokenPermissionGroupsListInvokeResult({
    this.accountId,
    this.maxItems,
    this.name,
    this.results,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountApiTokenPermissionGroupsListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
    };
  }

  factory GetAccountApiTokenPermissionGroupsListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAccountApiTokenPermissionGroupsListInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountApiTokenPermissionGroupsListResult>(guardedValue, (value) => GetAccountApiTokenPermissionGroupsListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
