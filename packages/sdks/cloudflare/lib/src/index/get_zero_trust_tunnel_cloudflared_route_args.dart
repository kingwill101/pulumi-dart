// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_tunnel_cloudflared_route_filter.dart';

/// {@template pulumi_index_get_zero_trust_tunnel_cloudflared_route_get_zero_trust_tunnel_cloudflared_route_args_doc}
/// Arguments for getZeroTrustTunnelCloudflaredRoute.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_tunnel_cloudflared_route_get_zero_trust_tunnel_cloudflared_route_args_doc}
class GetZeroTrustTunnelCloudflaredRouteArgs {
  /// Cloudflare account ID
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetZeroTrustTunnelCloudflaredRouteFilter?>? filter;
  /// UUID of the route.
  final pulumi.Input<String?>? routeId;

  /// Creates a new [GetZeroTrustTunnelCloudflaredRouteArgs].
  /// [accountId] Cloudflare account ID
  /// [filter] Optional.
  /// [routeId] UUID of the route.
  const GetZeroTrustTunnelCloudflaredRouteArgs({
    this.accountId,
    this.filter,
    this.routeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustTunnelCloudflaredRouteFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'routeId': ?routeId,
    };
  }

  factory GetZeroTrustTunnelCloudflaredRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustTunnelCloudflaredRouteArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustTunnelCloudflaredRouteFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routeId: (() { final guardedValue = map['routeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
