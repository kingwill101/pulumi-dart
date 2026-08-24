// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustGatewayProxyEndpoint.
class GetZeroTrustGatewayProxyEndpointResult {
  final String? accountId;
  final String? createdAt;
  /// The ID of this resource.
  final String? id;
  /// Specify the list of CIDRs to restrict ingress connections.
  final List<String>? ips;
  /// The proxy endpoint kind
  /// Available values: "ip", "identity".
  final String? kind;
  /// Specify the name of the proxy endpoint.
  final String? name;
  final String? proxyEndpointId;
  /// Specify the subdomain to use as the destination in the proxy client.
  final String? subdomain;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustGatewayProxyEndpointResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [id] The ID of this resource.
  /// [ips] Specify the list of CIDRs to restrict ingress connections.
  /// [kind] The proxy endpoint kind
  /// [name] Specify the name of the proxy endpoint.
  /// [proxyEndpointId] Optional.
  /// [subdomain] Specify the subdomain to use as the destination in the proxy client.
  /// [updatedAt] Optional.
  const GetZeroTrustGatewayProxyEndpointResult({
    this.accountId,
    this.createdAt,
    this.id,
    this.ips,
    this.kind,
    this.name,
    this.proxyEndpointId,
    this.subdomain,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'id': ?id,
      'ips': ?ips,
      'kind': ?kind,
      'name': ?name,
      'proxyEndpointId': ?proxyEndpointId,
      'subdomain': ?subdomain,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustGatewayProxyEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayProxyEndpointResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      proxyEndpointId: (() { final guardedValue = map['proxyEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subdomain: (() { final guardedValue = map['subdomain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
