// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressRouteCircuitPeeringIpv6MicrosoftPeering {
  /// The communities of Bgp Peering specified for microsoft peering.
  final pulumi.Input<List<String>>? advertisedCommunities;
  /// A list of Advertised Public Prefixes.
  final pulumi.Input<List<String>>? advertisedPublicPrefixes;
  /// The CustomerASN of the peering. Defaults to `0`.
  final pulumi.Input<int>? customerAsn;
  /// The Routing Registry against which the AS number and prefixes are registered. For example: `ARIN`, `RIPE`, `AFRINIC` etc. Defaults to `NONE`.
  final pulumi.Input<String>? routingRegistryName;

  /// Creates a new [ExpressRouteCircuitPeeringIpv6MicrosoftPeering].
  /// [advertisedCommunities] The communities of Bgp Peering specified for microsoft peering.
  /// [advertisedPublicPrefixes] A list of Advertised Public Prefixes.
  /// [customerAsn] The CustomerASN of the peering. Defaults to `0`.
  /// [routingRegistryName] The Routing Registry against which the AS number and prefixes are registered. For example: `ARIN`, `RIPE`, `AFRINIC` etc. Defaults to `NONE`.
  ExpressRouteCircuitPeeringIpv6MicrosoftPeering({
    this.advertisedCommunities,
    this.advertisedPublicPrefixes,
    this.customerAsn,
    this.routingRegistryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertisedCommunities': ?advertisedCommunities,
      'advertisedPublicPrefixes': ?advertisedPublicPrefixes,
      'customerAsn': ?customerAsn,
      'routingRegistryName': ?routingRegistryName,
    };
  }

  factory ExpressRouteCircuitPeeringIpv6MicrosoftPeering.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitPeeringIpv6MicrosoftPeering(
      advertisedCommunities: map['advertisedCommunities'] == null ? null : ((map['advertisedCommunities'] as List).cast<String>()).input(),
      advertisedPublicPrefixes: map['advertisedPublicPrefixes'] == null ? null : ((map['advertisedPublicPrefixes'] as List).cast<String>()).input(),
      customerAsn: map['customerAsn'] == null ? null : (map['customerAsn'] as int).input(),
      routingRegistryName: map['routingRegistryName'] == null ? null : (map['routingRegistryName'] as String).input(),
    );
  }
}

