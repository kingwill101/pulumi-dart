// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_gateway_proxy_endpoint_zero_trust_gateway_proxy_endpoint_args_doc}
/// The set of arguments for ZeroTrustGatewayProxyEndpoint.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_gateway_proxy_endpoint_zero_trust_gateway_proxy_endpoint_args_doc}
class ZeroTrustGatewayProxyEndpointArgs {
  final pulumi.Input<String> accountId;
  /// Specify the list of CIDRs to restrict ingress connections.
  final pulumi.Input<List<String>?>? ips;
  /// The proxy endpoint kind
  /// Available values: "ip", "identity".
  final pulumi.Input<String?>? kind;
  /// Specify the name of the proxy endpoint.
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustGatewayProxyEndpointArgs].
  /// [accountId] Required.
  /// [ips] Specify the list of CIDRs to restrict ingress connections.
  /// [kind] The proxy endpoint kind
  /// [name] Specify the name of the proxy endpoint.
  const ZeroTrustGatewayProxyEndpointArgs({
    required this.accountId,
    this.ips,
    this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'ips': ?ips,
      'kind': ?kind,
      'name': name,
    };
  }

  factory ZeroTrustGatewayProxyEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayProxyEndpointArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
