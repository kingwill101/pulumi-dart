// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_shares_get_shares_args_doc}
/// Arguments for getShares.
/// {@endtemplate}
/// {@macro pulumi_index_get_shares_get_shares_args_doc}
class GetSharesArgs {
  /// Account identifier.
  final pulumi.Input<String> accountId;
  /// Direction to sort objects.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Include recipient counts in the response.
  final pulumi.Input<bool?>? includeRecipientCounts;
  /// Include resources in the response.
  final pulumi.Input<bool?>? includeResources;
  /// Filter shares by kind.
  /// Available values: "sent", "received".
  final pulumi.Input<String?>? kind;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Order shares by values in the given field.
  /// Available values: "name", "created".
  final pulumi.Input<String?>? order;
  /// Filter share resources by resource_types.
  final pulumi.Input<List<String>?>? resourceTypes;
  /// Filter shares by status.
  /// Available values: "active", "deleting", "deleted".
  final pulumi.Input<String?>? status;
  /// Filter shares by tag. Each value is either `key=value` (matches shares whose tags contain that key/value pair) or `key` alone (matches shares that have any value for that key). May be repeated; multiple `tag` parameters are ANDed together. Maximum 20 `tag` parameters per request.
  final pulumi.Input<List<String>?>? tags;
  /// Filter shares by target_type.
  /// Available values: "account", "organization".
  final pulumi.Input<String?>? targetType;

  /// Creates a new [GetSharesArgs].
  /// [accountId] Account identifier.
  /// [direction] Direction to sort objects.
  /// [includeRecipientCounts] Include recipient counts in the response.
  /// [includeResources] Include resources in the response.
  /// [kind] Filter shares by kind.
  /// [maxItems] Max items to fetch, default: 1000
  /// [order] Order shares by values in the given field.
  /// [resourceTypes] Filter share resources by resource_types.
  /// [status] Filter shares by status.
  /// [tags] Filter shares by tag. Each value is either `key=value` (matches shares whose tags contain that key/value pair) or `key` alone (matches shares that have any value for that key). May be repeated; multiple `tag` parameters are ANDed together. Maximum 20 `tag` parameters per request.
  /// [targetType] Filter shares by target_type.
  const GetSharesArgs({
    required this.accountId,
    this.direction,
    this.includeRecipientCounts,
    this.includeResources,
    this.kind,
    this.maxItems,
    this.order,
    this.resourceTypes,
    this.status,
    this.tags,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'direction': ?direction,
      'includeRecipientCounts': ?includeRecipientCounts,
      'includeResources': ?includeResources,
      'kind': ?kind,
      'maxItems': ?maxItems,
      'order': ?order,
      'resourceTypes': ?resourceTypes,
      'status': ?status,
      'tags': ?tags,
      'targetType': ?targetType,
    };
  }

  factory GetSharesArgs.fromMap(Map<String, dynamic> map) {
    return GetSharesArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includeRecipientCounts: (() { final guardedValue = map['includeRecipientCounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeResources: (() { final guardedValue = map['includeResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
