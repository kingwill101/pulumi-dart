// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_config.dart';
import 'sub_resource.dart';

/// Contains IPv6 peering config.
class Ipv6ExpressRouteCircuitPeeringConfig {
  /// The Microsoft peering configuration.
  final pulumi.Input<ExpressRouteCircuitPeeringConfig>? microsoftPeeringConfig;
  /// The primary address prefix.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
  /// The reference to the RouteFilter resource.
  final pulumi.Input<SubResource>? routeFilter;
  /// The secondary address prefix.
  final pulumi.Input<String>? secondaryPeerAddressPrefix;
  /// The state of peering.
  final pulumi.Input<String>? state;

  /// Creates a new [Ipv6ExpressRouteCircuitPeeringConfig].
  /// [microsoftPeeringConfig] The Microsoft peering configuration.
  /// [primaryPeerAddressPrefix] The primary address prefix.
  /// [routeFilter] The reference to the RouteFilter resource.
  /// [secondaryPeerAddressPrefix] The secondary address prefix.
  /// [state] The state of peering.
  Ipv6ExpressRouteCircuitPeeringConfig({
    this.microsoftPeeringConfig,
    this.primaryPeerAddressPrefix,
    this.routeFilter,
    this.secondaryPeerAddressPrefix,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microsoftPeeringConfig': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringConfig, Map<String, dynamic>>(microsoftPeeringConfig, (value) => value.toMap()),
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'routeFilter': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(routeFilter, (value) => value.toMap()),
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'state': ?state,
    };
  }

  factory Ipv6ExpressRouteCircuitPeeringConfig.fromMap(Map<String, dynamic> map) {
    return Ipv6ExpressRouteCircuitPeeringConfig(
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : (ExpressRouteCircuitPeeringConfig.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>())).input(),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : (map['primaryPeerAddressPrefix'] as String).input(),
      routeFilter: map['routeFilter'] == null ? null : (SubResource.fromMap((map['routeFilter'] as Map).cast<String, dynamic>())).input(),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : (map['secondaryPeerAddressPrefix'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

