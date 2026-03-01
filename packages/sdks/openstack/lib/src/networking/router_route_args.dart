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
    required pulumi.Output<String> destinationCidr,
    required pulumi.Output<String> nextHop,
    pulumi.Output<String>? region,
    required pulumi.Output<String> routerId,
  }) :
      destinationCidr = pulumi.Input.asInput<String>(destinationCidr),
      nextHop = pulumi.Input.asInput<String>(nextHop),
      region = pulumi.Input.asOptionalInput<String>(region),
      routerId = pulumi.Input.asInput<String>(routerId);

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
      destinationCidr: pulumi.Output.create<String>(map['destinationCidr'] as String),
      nextHop: pulumi.Output.create<String>(map['nextHop'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routerId: pulumi.Output.create<String>(map['routerId'] as String),
    );
  }
}

