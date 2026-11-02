// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_gateway_proxy_endpoint_filter.dart';

/// Result data returned by getZeroTrustGatewayProxyEndpoint.
class GetZeroTrustGatewayProxyEndpointResult {
  final String? accountId;
  final String? createdAt;
  final GetZeroTrustGatewayProxyEndpointFilter? filter;
  final String? id;
  final List<String>? ips;
  final String? kind;
  final String? name;
  final String? proxyEndpointId;
  final String? subdomain;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustGatewayProxyEndpointResult].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [filter] Optional.
  /// [id] Optional.
  /// [ips] Optional.
  /// [kind] Optional.
  /// [name] Optional.
  /// [proxyEndpointId] Optional.
  /// [subdomain] Optional.
  /// [updatedAt] Optional.
  const GetZeroTrustGatewayProxyEndpointResult({
    this.accountId,
    this.createdAt,
    this.filter,
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
      'filter': ?filter?.toMap(),
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
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustGatewayProxyEndpointFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
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
