// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayProxyEndpointFilter {
  /// Sort direction. Only takes effect when `orderBy` is also provided; it
  /// is ignored otherwise. When `direction` is omitted the effective
  /// direction is field-specific: `createdAt` and `updatedAt` default to
  /// descending (newest first); `name` defaults to ascending.
  /// * `asc` — ascending.
  /// * `desc` — descending.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter the returned proxy endpoints by one or more `field:value` pairs.
  /// Repeat the parameter to apply multiple filters; they are combined with
  /// logical AND (an endpoint must satisfy every filter to be returned).
  ///
  /// Supported fields and their matching behaviour:
  /// * `name` — case-insensitive substring match on the endpoint name.
  /// * `id` — substring match on the endpoint ID (UUID), with or without dashes.
  /// * `kind` — exact match on the endpoint kind. The value must be `ip` or `identity`; any other value returns `400`.
  ///
  /// Each entry must match one of the per-field patterns below: the field
  /// must be one of `name`, `id`, or `kind`; `name`/`id` accept any value,
  /// while `kind` only accepts `ip` or `identity`.
  final pulumi.Input<List<String>?>? filters;
  /// Field to sort the returned endpoints by. When omitted, the order of
  /// results is unspecified. Supported values:
  /// * `name` — sort alphabetically by endpoint name.
  /// * `createdAt` — sort by creation time; defaults to descending unless `direction` is set.
  /// * `updatedAt` — sort by last-modified time; defaults to descending unless `direction` is set.
  /// Available values: "name", "createdAt", "updatedAt".
  final pulumi.Input<String?>? orderBy;
  /// Case-insensitive substring match on the endpoint name. When combined
  /// with `filter`, both must match (logical AND).
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustGatewayProxyEndpointFilter].
  /// [direction] Sort direction. Only takes effect when `orderBy` is also provided; it
  /// [filters] Filter the returned proxy endpoints by one or more `field:value` pairs.
  /// [orderBy] Field to sort the returned endpoints by. When omitted, the order of
  /// [search] Case-insensitive substring match on the endpoint name. When combined
  const GetZeroTrustGatewayProxyEndpointFilter({
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

  factory GetZeroTrustGatewayProxyEndpointFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayProxyEndpointFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
