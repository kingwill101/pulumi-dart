// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shares_result.dart';

/// Result data returned by getShares.
class GetSharesInvokeResult {
  /// Account identifier.
  final String? accountId;
  /// Direction to sort objects.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Include recipient counts in the response.
  final bool? includeRecipientCounts;
  /// Include resources in the response.
  final bool? includeResources;
  /// Filter shares by kind.
  /// Available values: "sent", "received".
  final String? kind;
  /// Max items to fetch, default: 1000
  final int? maxItems;
  /// Order shares by values in the given field.
  /// Available values: "name", "created".
  final String? order;
  /// Filter share resources by resource_types.
  final List<String>? resourceTypes;
  /// The items returned by the data source
  final List<GetSharesResult>? results;
  /// Filter shares by status.
  /// Available values: "active", "deleting", "deleted".
  final String? status;
  /// Filter shares by tag. Each value is either `key=value` (matches shares whose tags contain that key/value pair) or `key` alone (matches shares that have any value for that key). May be repeated; multiple `tag` parameters are ANDed together. Maximum 20 `tag` parameters per request.
  final List<String>? tags;
  /// Filter shares by target_type.
  /// Available values: "account", "organization".
  final String? targetType;

  /// Creates a new [GetSharesInvokeResult].
  /// [accountId] Account identifier.
  /// [direction] Direction to sort objects.
  /// [includeRecipientCounts] Include recipient counts in the response.
  /// [includeResources] Include resources in the response.
  /// [kind] Filter shares by kind.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Order shares by values in the given field.
  /// [resourceTypes] Filter share resources by resource_types.
  /// [results] The items returned by the data source
  /// [status] Filter shares by status.
  /// [tags] Filter shares by tag. Each value is either `key=value` (matches shares whose tags contain that key/value pair) or `key` alone (matches shares that have any value for that key). May be repeated; multiple `tag` parameters are ANDed together. Maximum 20 `tag` parameters per request.
  /// [targetType] Filter shares by target_type.
  const GetSharesInvokeResult({
    this.accountId,
    this.direction,
    this.includeRecipientCounts,
    this.includeResources,
    this.kind,
    this.maxItems,
    this.order,
    this.resourceTypes,
    this.results,
    this.status,
    this.tags,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'includeRecipientCounts': ?includeRecipientCounts,
      'includeResources': ?includeResources,
      'kind': ?kind,
      'maxItems': ?maxItems,
      'order': ?order,
      'resourceTypes': ?resourceTypes,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSharesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
      'targetType': ?targetType,
    };
  }

  factory GetSharesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetSharesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeRecipientCounts: (() { final guardedValue = map['includeRecipientCounts']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSharesResult>(guardedValue, (value) => GetSharesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
