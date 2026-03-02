// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_express_route_circuit_connection_express_route_circuit_connection_args_doc}
/// The set of arguments for ExpressRouteCircuitConnection.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_circuit_connection_express_route_circuit_connection_args_doc}
class ExpressRouteCircuitConnectionArgs {
  /// The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created.
  final pulumi.Input<String> addressPrefixIpv4;
  /// The IPv6 address space from which to allocate customer addresses for global reach.
  ///
  /// > **Note:** `address_prefix_ipv6` cannot be set when ExpressRoute Circuit Connection with ExpressRoute Circuit based on ExpressRoute Port.
  final pulumi.Input<String>? addressPrefixIpv6;
  /// The authorization key which is associated with the Express Route Circuit Connection.
  final pulumi.Input<String>? authorizationKey;
  /// The name which should be used for this Express Route Circuit Connection. Changing this forces a new Express Route Circuit Connection to be created.
  final pulumi.Input<String>? name;
  /// The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created.
  final pulumi.Input<String> peerPeeringId;
  /// The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created.
  final pulumi.Input<String> peeringId;

  /// Creates a new [ExpressRouteCircuitConnectionArgs].
  /// [addressPrefixIpv4] The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created.
  /// [addressPrefixIpv6] The IPv6 address space from which to allocate customer addresses for global reach.
  /// [authorizationKey] The authorization key which is associated with the Express Route Circuit Connection.
  /// [name] The name which should be used for this Express Route Circuit Connection. Changing this forces a new Express Route Circuit Connection to be created.
  /// [peerPeeringId] The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created.
  /// [peeringId] The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created.
  ExpressRouteCircuitConnectionArgs({
    required this.addressPrefixIpv4,
    this.addressPrefixIpv6,
    this.authorizationKey,
    this.name,
    required this.peerPeeringId,
    required this.peeringId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixIpv4': addressPrefixIpv4,
      'addressPrefixIpv6': ?addressPrefixIpv6,
      'authorizationKey': ?authorizationKey,
      'name': ?name,
      'peerPeeringId': peerPeeringId,
      'peeringId': peeringId,
    };
  }

  factory ExpressRouteCircuitConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitConnectionArgs(
      addressPrefixIpv4: (map['addressPrefixIpv4'] as String).input(),
      addressPrefixIpv6: map['addressPrefixIpv6'] == null ? null : (map['addressPrefixIpv6']! as String).input(),
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      peerPeeringId: (map['peerPeeringId'] as String).input(),
      peeringId: (map['peeringId'] as String).input(),
    );
  }
}

