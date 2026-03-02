// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ExpressRouteCircuitConnection resources.
class ExpressRouteCircuitConnectionState {
  /// The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created.
  final pulumi.Input<String>? addressPrefixIpv4;
  /// The IPv6 address space from which to allocate customer addresses for global reach.
  ///
  /// > **Note:** `address_prefix_ipv6` cannot be set when ExpressRoute Circuit Connection with ExpressRoute Circuit based on ExpressRoute Port.
  final pulumi.Input<String>? addressPrefixIpv6;
  /// The authorization key which is associated with the Express Route Circuit Connection.
  final pulumi.Input<String>? authorizationKey;
  /// The name which should be used for this Express Route Circuit Connection. Changing this forces a new Express Route Circuit Connection to be created.
  final pulumi.Input<String>? name;
  /// The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created.
  final pulumi.Input<String>? peerPeeringId;
  /// The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created.
  final pulumi.Input<String>? peeringId;

  /// Creates a new [ExpressRouteCircuitConnectionState].
  /// [addressPrefixIpv4] The IPv4 address space from which to allocate customer address for global reach. Changing this forces a new Express Route Circuit Connection to be created.
  /// [addressPrefixIpv6] The IPv6 address space from which to allocate customer addresses for global reach.
  /// [authorizationKey] The authorization key which is associated with the Express Route Circuit Connection.
  /// [name] The name which should be used for this Express Route Circuit Connection. Changing this forces a new Express Route Circuit Connection to be created.
  /// [peerPeeringId] The ID of the peered Express Route Circuit Private Peering. Changing this forces a new Express Route Circuit Connection to be created.
  /// [peeringId] The ID of the Express Route Circuit Private Peering that this Express Route Circuit Connection connects with. Changing this forces a new Express Route Circuit Connection to be created.
  ExpressRouteCircuitConnectionState({
    this.addressPrefixIpv4,
    this.addressPrefixIpv6,
    this.authorizationKey,
    this.name,
    this.peerPeeringId,
    this.peeringId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixIpv4': ?addressPrefixIpv4,
      'addressPrefixIpv6': ?addressPrefixIpv6,
      'authorizationKey': ?authorizationKey,
      'name': ?name,
      'peerPeeringId': ?peerPeeringId,
      'peeringId': ?peeringId,
    };
  }

  factory ExpressRouteCircuitConnectionState.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitConnectionState(
      addressPrefixIpv4: map['addressPrefixIpv4'] == null ? null : (map['addressPrefixIpv4']! as String).input(),
      addressPrefixIpv6: map['addressPrefixIpv6'] == null ? null : (map['addressPrefixIpv6']! as String).input(),
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      peerPeeringId: map['peerPeeringId'] == null ? null : (map['peerPeeringId']! as String).input(),
      peeringId: map['peeringId'] == null ? null : (map['peeringId']! as String).input(),
    );
  }
}

