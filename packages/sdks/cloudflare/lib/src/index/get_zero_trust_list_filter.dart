// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustListFilter {
  /// Sort direction. Applies to the field named in `orderBy`; when `orderBy`
  /// is omitted it applies to the default `createdAt` ordering. When
  /// `direction` is omitted the default is field-specific: explicitly choosing
  /// `createdAt` or `updatedAt` defaults to descending (newest first); `name`
  /// and `itemCount` default to ascending; and the default `createdAt`
  /// ordering used when `orderBy` is omitted is ascending (for backwards
  /// compatibility).
  /// * `asc` — ascending.
  /// * `desc` — descending.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter the returned lists by one or more `field:value` pairs.
  /// Repeat the parameter to apply multiple filters; they are combined with
  /// logical AND (a list must satisfy every filter to be returned).
  ///
  /// Supported fields and their matching behaviour:
  /// * `name` — case-insensitive substring match on the list name.
  /// * `id` — substring match on the list ID (UUID), with or without dashes.
  /// * `type` — exact match on the list type. Supersedes the legacy `type` query
  /// parameter when both are supplied. Must be one of the valid type values.
  /// * `itemCount` — exact integer match on the number of items in the list.
  ///
  /// Each entry must match one of the per-field patterns below: the field must be
  /// one of `name`, `id`, `type`, or `itemCount`; `name`/`id` accept any value,
  /// `type` is restricted to the valid list type values, and `itemCount` must be
  /// a non-negative integer.
  final pulumi.Input<List<String>?>? filters;
  /// Field to sort the returned lists by. When omitted, results are ordered by
  /// `createdAt` in ascending order (i.e. creation order) for backwards
  /// compatibility. Supported values:
  /// * `name` — sort alphabetically by list name.
  /// * `createdAt` — sort by creation time; defaults to descending unless `direction` is set.
  /// * `updatedAt` — sort by last-modified time; defaults to descending unless `direction` is set.
  /// * `itemCount` — sort by number of items in the list.
  /// Available values: "name", "createdAt", "updatedAt", "itemCount".
  final pulumi.Input<String?>? orderBy;
  /// Case-insensitive substring match on the list name or description. When
  /// combined with `filter`, both must match (logical AND).
  final pulumi.Input<String?>? search;
  /// Specify the list type.
  /// Available values: "SERIAL", "URL", "DOMAIN", "EMAIL", "IP", "CATEGORY", "LOCATION", "DEVICE", "AAGUID".
  final pulumi.Input<String?>? type;

  /// Creates a new [GetZeroTrustListFilter].
  /// [direction] Sort direction. Applies to the field named in `orderBy`; when `orderBy`
  /// [filters] Filter the returned lists by one or more `field:value` pairs.
  /// [orderBy] Field to sort the returned lists by. When omitted, results are ordered by
  /// [search] Case-insensitive substring match on the list name or description. When
  /// [type] Specify the list type.
  const GetZeroTrustListFilter({
    this.direction,
    this.filters,
    this.orderBy,
    this.search,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'filters': ?filters,
      'orderBy': ?orderBy,
      'search': ?search,
      'type': ?type,
    };
  }

  factory GetZeroTrustListFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustListFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
