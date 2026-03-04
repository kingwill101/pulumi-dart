// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_network_route_network_route_args_doc}
/// The set of arguments for NetworkRoute.
/// {@endtemplate}
/// {@macro pulumi_index_network_route_network_route_args_doc}
class NetworkRouteArgs {
  /// Destination network or host of this route. Must be a subnet of the ip_range of the Network. Must not overlap with an existing ip_range in any subnets or with any destinations in other routes or with the first ip of the networks ip_range or with 172.31.1.1.
  final pulumi.Input<String> destination;

  /// Gateway for the route. Cannot be the first ip of the networks ip_range and also cannot be 172.31.1.1 as this IP is being used as a gateway for the public network interface of servers.
  final pulumi.Input<String> gateway;

  /// ID of the Network the route should be added to.
  final pulumi.Input<int> networkId;

  /// Creates a new [NetworkRouteArgs].
  /// [destination] Destination network or host of this route. Must be a subnet of the ip_range of the Network. Must not overlap with an existing ip_range in any subnets or with any destinations in other routes or with the first ip of the networks ip_range or with 172.31.1.1.
  /// [gateway] Gateway for the route. Cannot be the first ip of the networks ip_range and also cannot be 172.31.1.1 as this IP is being used as a gateway for the public network interface of servers.
  /// [networkId] ID of the Network the route should be added to.
  NetworkRouteArgs({
    required this.destination,
    required this.gateway,
    required this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'gateway': gateway,
      'networkId': networkId,
    };
  }

  factory NetworkRouteArgs.fromMap(Map<String, dynamic> map) {
    return NetworkRouteArgs(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      gateway: pulumi.Input.fromValue(map['gateway'] as String),
      networkId: pulumi.Input.fromValue(map['networkId'] as int),
    );
  }
}
