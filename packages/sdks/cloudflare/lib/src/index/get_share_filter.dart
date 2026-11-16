// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShareFilter {
  /// Direction to sort objects.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Include share tags in the response. `api` reads tags from the tag service; `mirror` reads a local, eventually consistent replica. If the tag lookup fails, the response omits `tags`.
  /// Available values: "api", "mirror".
  final pulumi.Input<String?>? includeTagsFrom;
  /// Filter shares by kind.
  /// Available values: "sent", "received".
  final pulumi.Input<String?>? kind;
  /// Order shares by values in the given field.
  /// Available values: "name", "created".
  final pulumi.Input<String> order;
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

  /// Creates a new [GetShareFilter].
  /// [direction] Direction to sort objects.
  /// [includeTagsFrom] Include share tags in the response. `api` reads tags from the tag service; `mirror` reads a local, eventually consistent replica. If the tag lookup fails, the response omits `tags`.
  /// [kind] Filter shares by kind.
  /// [order] Order shares by values in the given field.
  /// [resourceTypes] Filter share resources by resource_types.
  /// [status] Filter shares by status.
  /// [tags] Filter shares by tag. Each value is either `key=value` (matches shares whose tags contain that key/value pair) or `key` alone (matches shares that have any value for that key). May be repeated; multiple `tag` parameters are ANDed together. Maximum 20 `tag` parameters per request.
  /// [targetType] Filter shares by target_type.
  const GetShareFilter({
    required this.direction,
    this.includeTagsFrom,
    this.kind,
    required this.order,
    this.resourceTypes,
    this.status,
    this.tags,
    this.targetType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'includeTagsFrom': ?includeTagsFrom,
      'kind': ?kind,
      'order': order,
      'resourceTypes': ?resourceTypes,
      'status': ?status,
      'tags': ?tags,
      'targetType': ?targetType,
    };
  }

  factory GetShareFilter.fromMap(Map<String, dynamic> map) {
    return GetShareFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      includeTagsFrom: (() { final guardedValue = map['includeTagsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: pulumi.Input.fromValue(map['order'] as String),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetType: (() { final guardedValue = map['targetType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
