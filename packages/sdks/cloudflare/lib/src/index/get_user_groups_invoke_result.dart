// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_groups_result.dart';

/// Result data returned by getUserGroups.
class GetUserGroupsInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// The sort order of returned user groups by name (ascending or descending).
  /// Available values: "asc", "desc".
  final String? direction;
  /// A string used for searching for user groups containing that substring.
  final String? fuzzyName;
  /// ID of the user group to be fetched.
  final String? id;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Name of the user group to be fetched.
  final String? name;
  /// The items returned by the data source
  final List<GetUserGroupsResult>? results;

  /// Creates a new [GetUserGroupsInvokeResult].
  /// [accountId] Account identifier tag.
  /// [direction] The sort order of returned user groups by name (ascending or descending).
  /// [fuzzyName] A string used for searching for user groups containing that substring.
  /// [id] ID of the user group to be fetched.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Name of the user group to be fetched.
  /// [results] The items returned by the data source
  const GetUserGroupsInvokeResult({
    this.accountId,
    this.direction,
    this.fuzzyName,
    this.id,
    this.maxItems,
    this.name,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'fuzzyName': ?fuzzyName,
      'id': ?id,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserGroupsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetUserGroupsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fuzzyName: (() { final guardedValue = map['fuzzyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserGroupsResult>(guardedValue, (value) => GetUserGroupsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
