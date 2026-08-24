// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_gateway_proxy_endpoint_get_zero_trust_gateway_proxy_endpoint_args_doc}
/// Arguments for getZeroTrustGatewayProxyEndpoint.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_gateway_proxy_endpoint_get_zero_trust_gateway_proxy_endpoint_args_doc}
class GetZeroTrustGatewayProxyEndpointArgs {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String> proxyEndpointId;

  /// Creates a new [GetZeroTrustGatewayProxyEndpointArgs].
  /// [accountId] Optional.
  /// [proxyEndpointId] Required.
  const GetZeroTrustGatewayProxyEndpointArgs({
    this.accountId,
    required this.proxyEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'proxyEndpointId': proxyEndpointId,
    };
  }

  factory GetZeroTrustGatewayProxyEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayProxyEndpointArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyEndpointId: pulumi.Input.fromValue(map['proxyEndpointId'] as String),
    );
  }
}
