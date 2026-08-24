// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_groups_result.dart';

/// Result data returned by getResourceGroups.
class GetResourceGroupsInvokeResult {
  /// Account identifier tag.
  final String? accountId;
  /// ID of the resource group to be fetched.
  final String? id;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Name of the resource group to be fetched.
  final String? name;
  /// The items returned by the data source
  final List<GetResourceGroupsResult>? results;

  /// Creates a new [GetResourceGroupsInvokeResult].
  /// [accountId] Account identifier tag.
  /// [id] ID of the resource group to be fetched.
  /// [maxItems] Max items to fetch, default: 1000
  /// [name] Name of the resource group to be fetched.
  /// [results] The items returned by the data source
  const GetResourceGroupsInvokeResult({
    this.accountId,
    this.id,
    this.maxItems,
    this.name,
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'maxItems': ?maxItems,
      'name': ?name,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResourceGroupsResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetResourceGroupsInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResourceGroupsResult>(guardedValue, (value) => GetResourceGroupsResult.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
