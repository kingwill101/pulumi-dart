// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_token_permission_groups_list_result.dart';

/// Result data returned by getApiTokenPermissionGroupsList.
class GetApiTokenPermissionGroupsListInvokeResult {
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Filter by the name of the permission group.
  /// The value must be URL-encoded.
  final String? name;
  /// The items returned by the data source
  final List<GetApiTokenPermissionGroupsListResult>? results;
  /// Filter by the scope of the permission group.
  /// The value must be URL-encoded.
  final String? scope;

  /// Creates a new [GetApiTokenPermissionGroupsListInvokeResult].
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Filter by the name of the permission group.
  /// [results] The items returned by the data source
  /// [scope] Filter by the scope of the permission group.
  const GetApiTokenPermissionGroupsListInvokeResult({
    this.maxItems,
    this.name,
    this.results,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetApiTokenPermissionGroupsListResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
    };
  }

  factory GetApiTokenPermissionGroupsListInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetApiTokenPermissionGroupsListInvokeResult(
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetApiTokenPermissionGroupsListResult>(guardedValue, (value) => GetApiTokenPermissionGroupsListResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
