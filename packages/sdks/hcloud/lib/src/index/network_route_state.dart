// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkRoute resources.
class NetworkRouteState {
  /// Destination network or host of this route. Must be a subnet of the ip_range of the Network. Must not overlap with an existing ip_range in any subnets or with any destinations in other routes or with the first ip of the networks ip_range or with 172.31.1.1.
  final pulumi.Input<String>? destination;
  /// Gateway for the route. Cannot be the first ip of the networks ip_range and also cannot be 172.31.1.1 as this IP is being used as a gateway for the public network interface of servers.
  final pulumi.Input<String>? gateway;
  /// ID of the Network the route should be added to.
  final pulumi.Input<int>? networkId;

  /// Creates a new [NetworkRouteState].
  /// [destination] Destination network or host of this route. Must be a subnet of the ip_range of the Network. Must not overlap with an existing ip_range in any subnets or with any destinations in other routes or with the first ip of the networks ip_range or with 172.31.1.1.
  /// [gateway] Gateway for the route. Cannot be the first ip of the networks ip_range and also cannot be 172.31.1.1 as this IP is being used as a gateway for the public network interface of servers.
  /// [networkId] ID of the Network the route should be added to.
  NetworkRouteState({
    this.destination,
    this.gateway,
    this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'gateway': ?gateway,
      'networkId': ?networkId,
    };
  }

  factory NetworkRouteState.fromMap(Map<String, dynamic> map) {
    return NetworkRouteState(
      destination: map['destination'] == null ? null : (map['destination']! as String).input(),
      gateway: map['gateway'] == null ? null : (map['gateway']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as int).input(),
    );
  }
}

