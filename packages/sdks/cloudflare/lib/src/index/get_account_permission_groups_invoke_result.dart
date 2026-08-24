// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_permission_groups_result.dart';

/// Result data returned by getAccountPermissionGroups.
class GetAccountPermissionGroupsInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// ID of the permission group to be fetched.
  final String? id;
  /// Label of the permission group to be fetched.
  final String? label;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Name of the permission group to be fetched.
  final String? name;
  /// The items returned by the data source
  final List<GetAccountPermissionGroupsResult>? results;

  /// Creates a new [GetAccountPermissionGroupsInvokeResult].
  /// [accountId] Account identifier tag.
  /// [id] ID of the permission group to be fetched.
  /// [label] Label of the permission group to be fetched.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Name of the permission group to be fetched.
  /// [results] The items returned by the data source
  const GetAccountPermissionGroupsInvokeResult({
    this.accountId,
    this.id,
    this.label,
    this.maxItems,
    this.name,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'label': ?label,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAccountPermissionGroupsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAccountPermissionGroupsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetAccountPermissionGroupsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAccountPermissionGroupsResult>(guardedValue, (value) => GetAccountPermissionGroupsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
