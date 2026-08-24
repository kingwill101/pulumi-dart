// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_tunnel_route_tunnel_route_args_doc}
/// The set of arguments for TunnelRoute.
/// {@endtemplate}
/// {@macro pulumi_index_tunnel_route_tunnel_route_args_doc}
class TunnelRouteArgs {
  /// Cloudflare account ID
  final pulumi.Input<String> accountId;
  /// Optional remark describing the route.
  final pulumi.Input<String?>? comment;
  /// The private IPv4 or IPv6 range connected by the route, in CIDR notation.
  final pulumi.Input<String> network;
  /// UUID of the tunnel.
  final pulumi.Input<String> tunnelId;
  /// UUID of the virtual network.
  final pulumi.Input<String?>? virtualNetworkId;

  /// Creates a new [TunnelRouteArgs].
  /// [accountId] Cloudflare account ID
  /// [comment] Optional remark describing the route.
  /// [network] The private IPv4 or IPv6 range connected by the route, in CIDR notation.
  /// [tunnelId] UUID of the tunnel.
  /// [virtualNetworkId] UUID of the virtual network.
  const TunnelRouteArgs({
    required this.accountId,
    this.comment,
    required this.network,
    required this.tunnelId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'comment': ?comment,
      'network': network,
      'tunnelId': tunnelId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory TunnelRouteArgs.fromMap(Map<String, dynamic> map) {
    return TunnelRouteArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
