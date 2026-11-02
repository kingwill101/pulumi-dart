// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_proxy_endpoint_filter.dart';

/// {@template pulumi_index_get_zero_trust_gateway_proxy_endpoint_get_zero_trust_gateway_proxy_endpoint_args_doc}
/// Arguments for getZeroTrustGatewayProxyEndpoint.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_proxy_endpoint_get_zero_trust_gateway_proxy_endpoint_args_doc}
class GetZeroTrustGatewayProxyEndpointArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustGatewayProxyEndpointFilter?>? filter;
  final pulumi.Input<String?>? proxyEndpointId;

  /// Creates a new [GetZeroTrustGatewayProxyEndpointArgs].
  /// [accountId] Optional.
  /// [filter] Optional.
  /// [proxyEndpointId] Optional.
  const GetZeroTrustGatewayProxyEndpointArgs({
    this.accountId,
    this.filter,
    this.proxyEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustGatewayProxyEndpointFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'proxyEndpointId': ?proxyEndpointId,
    };
  }

  factory GetZeroTrustGatewayProxyEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayProxyEndpointArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustGatewayProxyEndpointFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proxyEndpointId: (() { final guardedValue = map['proxyEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
