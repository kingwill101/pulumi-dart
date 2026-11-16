// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_policies_result.dart';

/// Result data returned by getZeroTrustGatewayPolicies.
class GetZeroTrustGatewayPoliciesInvokeResult {
  /// Specify the Cloudflare account identifier.
  final String? accountId;
  /// Sort direction. When `orderBy` is omitted, this controls the direction
  /// of the existing precedence ordering. Shared rules remain first in either
  /// direction. Accepted values are `asc` and `desc`.
  /// Available values: "asc", "desc".
  final String? direction;
  /// Filter the returned rules by one or more `field:value` pairs. Repeat the
  /// parameter to combine filters with logical AND.
  final List<String>? filters;
  final int? maxItems;
  final String? orderBy;
  final List<GetZeroTrustGatewayPoliciesResult>? results;
  final String? search;

  /// Creates a new [GetZeroTrustGatewayPoliciesInvokeResult].
  /// [accountId] Specify the Cloudflare account identifier.
  /// [direction] Sort direction. When `orderBy` is omitted, this controls the direction
  /// [filters] Filter the returned rules by one or more `field:value` pairs. Repeat the
  /// [maxItems] Optional.
  /// [orderBy] Optional.
  /// [results] Optional.
  /// [search] Optional.
  const GetZeroTrustGatewayPoliciesInvokeResult({
    this.accountId,
    this.direction,
    this.filters,
    this.maxItems,
    this.orderBy,
    this.results,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'direction': ?direction,
      'filters': ?filters,
      'maxItems': ?maxItems,
      'orderBy': ?orderBy,
      'results': ?(() { final guardedValue = results; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustGatewayPoliciesResult, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'search': ?search,
    };
  }

  factory GetZeroTrustGatewayPoliciesInvokeResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPoliciesInvokeResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustGatewayPoliciesResult>(guardedValue, (value) => GetZeroTrustGatewayPoliciesResult.fromMap((value as Map).cast<String, dynamic>())); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
