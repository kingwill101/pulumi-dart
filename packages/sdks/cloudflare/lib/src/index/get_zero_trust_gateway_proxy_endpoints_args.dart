// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_proxy_endpoints_get_zero_trust_gateway_proxy_endpoints_args_doc}
/// Arguments for getZeroTrustGatewayProxyEndpoints.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_proxy_endpoints_get_zero_trust_gateway_proxy_endpoints_args_doc}
class GetZeroTrustGatewayProxyEndpointsArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? direction;
  final pulumi.Input<List<String>?>? filters;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<String?>? orderBy;
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustGatewayProxyEndpointsArgs].
  /// [accountId] Optional.
  /// [direction] Optional.
  /// [filters] Optional.
  /// [maxItems] Optional.
  /// [orderBy] Optional.
  /// [search] Optional.
  const GetZeroTrustGatewayProxyEndpointsArgs({
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

  factory GetZeroTrustGatewayProxyEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayProxyEndpointsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
