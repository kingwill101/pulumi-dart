// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayProxyEndpointsResult {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> id;
  /// Specify the list of CIDRs to restrict ingress connections.
  final pulumi.Input<List<String>> ips;
  /// The proxy endpoint kind
  /// Available values: "ip", "identity".
  final pulumi.Input<String> kind;
  /// Specify the name of the proxy endpoint.
  final pulumi.Input<String> name;
  /// Specify the subdomain to use as the destination in the proxy client.
  final pulumi.Input<String> subdomain;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustGatewayProxyEndpointsResult].
  /// [createdAt] Required.
  /// [id] Required.
  /// [ips] Specify the list of CIDRs to restrict ingress connections.
  /// [kind] The proxy endpoint kind
  /// [name] Specify the name of the proxy endpoint.
  /// [subdomain] Specify the subdomain to use as the destination in the proxy client.
  /// [updatedAt] Required.
  const GetZeroTrustGatewayProxyEndpointsResult({
    required this.createdAt,
    required this.id,
    required this.ips,
    required this.kind,
    required this.name,
    required this.subdomain,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'id': id,
      'ips': ips,
      'kind': kind,
      'name': name,
      'subdomain': subdomain,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustGatewayProxyEndpointsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayProxyEndpointsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ips: pulumi.Input.fromValue((map['ips'] as List).cast<String>()),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      subdomain: pulumi.Input.fromValue(map['subdomain'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
