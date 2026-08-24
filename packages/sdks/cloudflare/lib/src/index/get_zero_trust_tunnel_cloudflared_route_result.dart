// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_tunnel_cloudflared_route_filter.dart';

/// Result data returned by getZeroTrustTunnelCloudflaredRoute.
class GetZeroTrustTunnelCloudflaredRouteResult {
  /// Cloudflare account ID
  final String? accountId;
  /// Optional remark describing the route.
  final String? comment;
  /// Timestamp of when the resource was created.
  final String? createdAt;
  /// Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  final String? deletedAt;
  final GetZeroTrustTunnelCloudflaredRouteFilter? filter;
  /// UUID of the route.
  final String? id;
  /// The private IPv4 or IPv6 range connected by the route, in CIDR notation.
  final String? network;
  /// UUID of the route.
  final String? routeId;
  /// UUID of the tunnel.
  final String? tunnelId;
  /// UUID of the virtual network.
  final String? virtualNetworkId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredRouteResult].
  /// [accountId] Cloudflare account ID
  /// [comment] Optional remark describing the route.
  /// [createdAt] Timestamp of when the resource was created.
  /// [deletedAt] Timestamp of when the resource was deleted. If `null`, the resource has not been deleted.
  /// [filter] Optional.
  /// [id] UUID of the route.
  /// [network] The private IPv4 or IPv6 range connected by the route, in CIDR notation.
  /// [routeId] UUID of the route.
  /// [tunnelId] UUID of the tunnel.
  /// [virtualNetworkId] UUID of the virtual network.
  const GetZeroTrustTunnelCloudflaredRouteResult({
    this.accountId,
    this.comment,
    this.createdAt,
    this.deletedAt,
    this.filter,
    this.id,
    this.network,
    this.routeId,
    this.tunnelId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'comment': ?comment,
      'createdAt': ?createdAt,
      'deletedAt': ?deletedAt,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'network': ?network,
      'routeId': ?routeId,
      'tunnelId': ?tunnelId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredRouteResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredRouteResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletedAt: (() { final guardedValue = map['deletedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustTunnelCloudflaredRouteFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeId: (() { final guardedValue = map['routeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
