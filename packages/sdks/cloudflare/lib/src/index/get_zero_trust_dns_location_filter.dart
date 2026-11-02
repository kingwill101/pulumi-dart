// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDnsLocationFilter {
  /// Sort direction. Only takes effect when `orderBy` is also provided; it
  /// is ignored otherwise. When `direction` is omitted the effective
  /// direction is field-specific: `createdAt` and `updatedAt` default to
  /// descending (newest first); `name` defaults to ascending.
  /// * `asc` — ascending.
  /// * `desc` — descending.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter the returned locations by one or more `field:value` pairs.
  /// Repeat the parameter to apply multiple filters; they are combined with
  /// logical AND (a location must satisfy every filter to be returned).
  ///
  /// Supported fields and their matching behaviour:
  /// * `name` — case-insensitive substring match on the location name.
  /// * `id` — substring match on the location ID (UUID), with or without dashes.
  /// * `isDefault` — whether it is the default for the account.
  ///
  /// Each entry must match one of the per-field patterns below:
  /// * the field must be one of `name`, `id`, or `isDefault`;
  /// * `name`/`id` accept any value;
  /// * `isDefault` only accepts `true` or `false`; any other value returns `400`
  final pulumi.Input<List<String>?>? filters;
  /// Field to sort the returned locations by. When omitted, the order of
  /// results is unspecified. Supported values:
  /// * `name` — sort alphabetically by location name.
  /// * `createdAt` — sort by creation time; defaults to descending unless `direction` is set.
  /// * `updatedAt` — sort by last-modified time; defaults to descending unless `direction` is set.
  /// Available values: "name", "createdAt", "updatedAt".
  final pulumi.Input<String?>? orderBy;
  /// Case-insensitive substring match on the location name. When combined
  /// with `filter`, both must match (logical AND).
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustDnsLocationFilter].
  /// [direction] Sort direction. Only takes effect when `orderBy` is also provided; it
  /// [filters] Filter the returned locations by one or more `field:value` pairs.
  /// [orderBy] Field to sort the returned locations by. When omitted, the order of
  /// [search] Case-insensitive substring match on the location name. When combined
  const GetZeroTrustDnsLocationFilter({
    this.direction,
    this.filters,
    this.orderBy,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'filters': ?filters,
      'orderBy': ?orderBy,
      'search': ?search,
    };
  }

  factory GetZeroTrustDnsLocationFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDnsLocationFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
