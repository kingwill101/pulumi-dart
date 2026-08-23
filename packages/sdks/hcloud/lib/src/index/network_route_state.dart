// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkRoute resources.
class NetworkRouteState {
  /// Destination network or host of this route. Must be a subnet of the ipRange of the Network. Must not overlap with an existing ipRange in any subnets or with any destinations in other routes or with the first ip of the networks ipRange or with 172.31.1.1.
  final pulumi.Input<String>? destination;
  /// Gateway for the route. Cannot be the first ip of the networks ipRange and also cannot be 172.31.1.1 as this IP is being used as a gateway for the public network interface of servers.
  final pulumi.Input<String>? gateway;
  /// ID of the Network the route should be added to.
  final pulumi.Input<int>? networkId;

  /// Creates a new [NetworkRouteState].
  /// [destination] Destination network or host of this route. Must be a subnet of the ipRange of the Network. Must not overlap with an existing ipRange in any subnets or with any destinations in other routes or with the first ip of the networks ipRange or with 172.31.1.1.
  /// [gateway] Gateway for the route. Cannot be the first ip of the networks ipRange and also cannot be 172.31.1.1 as this IP is being used as a gateway for the public network interface of servers.
  /// [networkId] ID of the Network the route should be added to.
  const NetworkRouteState({
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
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
