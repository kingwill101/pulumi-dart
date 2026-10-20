// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_policies_get_zero_trust_gateway_policies_args_doc}
/// Arguments for getZeroTrustGatewayPolicies.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_policies_get_zero_trust_gateway_policies_args_doc}
class GetZeroTrustGatewayPoliciesArgs {
  /// Specify the Cloudflare account identifier.
  final pulumi.Input<String?>? accountId;
  /// Sort direction. When `orderBy` is omitted, this controls the direction
  /// of the existing precedence ordering. Shared rules remain first in either
  /// direction. Accepted values are `asc` and `desc`.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Filter the returned rules by one or more `field:value` pairs. Repeat the
  /// parameter to combine filters with logical AND.
  final pulumi.Input<List<String>?>? filters;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String?>? orderBy;
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustGatewayPoliciesArgs].
  /// [accountId] Specify the Cloudflare account identifier.
  /// [direction] Sort direction. When `orderBy` is omitted, this controls the direction
  /// [filters] Filter the returned rules by one or more `field:value` pairs. Repeat the
  /// [maxItems] Optional.
  /// [orderBy] Optional.
  /// [search] Optional.
  const GetZeroTrustGatewayPoliciesArgs({
    this.accountId,
    this.direction,
    this.filters,
    this.maxItems,
    this.orderBy,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'filters': ?filters,
      'maxItems': ?maxItems,
      'orderBy': ?orderBy,
      'search': ?search,
    };
  }

  factory GetZeroTrustGatewayPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
