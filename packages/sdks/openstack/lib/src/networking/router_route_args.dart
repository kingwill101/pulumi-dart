// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_router_route_router_route_args_doc}
/// The set of arguments for RouterRoute.
/// {@endtemplate}
/// {@macro pulumi_networking_router_route_router_route_args_doc}
class RouterRouteArgs {
  /// CIDR block to match on the packet’s destination IP. Changing
  /// this creates a new routing entry.
  final pulumi.Input<String> destinationCidr;
  /// IP address of the next hop gateway.  Changing
  /// this creates a new routing entry.
  final pulumi.Input<String> nextHop;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure a routing entry on a router. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// routing entry.
  final pulumi.Input<String>? region;
  /// ID of the router this routing entry belongs to. Changing
  /// this creates a new routing entry.
  final pulumi.Input<String> routerId;

  /// Creates a new [RouterRouteArgs].
  /// [destinationCidr] CIDR block to match on the packet’s destination IP. Changing
  /// [nextHop] IP address of the next hop gateway.  Changing
  /// [region] The region in which to obtain the V2 networking client.
  /// [routerId] ID of the router this routing entry belongs to. Changing
  RouterRouteArgs({
    required this.destinationCidr,
    required this.nextHop,
    this.region,
    required this.routerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': destinationCidr,
      'nextHop': nextHop,
      'region': ?region,
      'routerId': routerId,
    };
  }

  factory RouterRouteArgs.fromMap(Map<String, dynamic> map) {
    return RouterRouteArgs(
      destinationCidr: (map['destinationCidr'] as String).input(),
      nextHop: (map['nextHop'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routerId: (map['routerId'] as String).input(),
    );
  }
}

