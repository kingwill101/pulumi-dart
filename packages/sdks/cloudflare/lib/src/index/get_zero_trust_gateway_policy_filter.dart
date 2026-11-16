// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPolicyFilter {
  /// Sort direction. When `orderBy` is omitted, this controls the direction
  /// of the existing precedence ordering. Shared rules remain first in either
  /// direction. Accepted values are `asc` and `desc`.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter the returned rules by one or more `field:value` pairs. Repeat the
  /// parameter to combine filters with logical AND.
  final pulumi.Input<List<String>?>? filters;
  /// Field to sort the returned rules by. Supported values are `name`,
  /// `createdAt`, `updatedAt`, and `precedence`.
  /// Available values: "name", "createdAt", "updatedAt", "precedence".
  final pulumi.Input<String?>? orderBy;
  /// Case-insensitive substring search across rule name and description.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustGatewayPolicyFilter].
  /// [direction] Sort direction. When `orderBy` is omitted, this controls the direction
  /// [filters] Filter the returned rules by one or more `field:value` pairs. Repeat the
  /// [orderBy] Field to sort the returned rules by. Supported values are `name`,
  /// [search] Case-insensitive substring search across rule name and description.
  const GetZeroTrustGatewayPolicyFilter({
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

  factory GetZeroTrustGatewayPolicyFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPolicyFilter(
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
