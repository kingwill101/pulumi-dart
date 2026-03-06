// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_config_response.dart';
import 'sub_resource_response.dart';

/// Contains IPv6 peering config.
class Ipv6ExpressRouteCircuitPeeringConfigResponse {
  /// The Microsoft peering configuration.
  final pulumi.Input<ExpressRouteCircuitPeeringConfigResponse>? microsoftPeeringConfig;
  /// The primary address prefix.
  final pulumi.Input<String>? primaryPeerAddressPrefix;
  /// The reference to the RouteFilter resource.
  final pulumi.Input<SubResourceResponse>? routeFilter;
  /// The secondary address prefix.
  final pulumi.Input<String>? secondaryPeerAddressPrefix;
  /// The state of peering.
  final pulumi.Input<String>? state;

  /// Creates a new [Ipv6ExpressRouteCircuitPeeringConfigResponse].
  /// [microsoftPeeringConfig] The Microsoft peering configuration.
  /// [primaryPeerAddressPrefix] The primary address prefix.
  /// [routeFilter] The reference to the RouteFilter resource.
  /// [secondaryPeerAddressPrefix] The secondary address prefix.
  /// [state] The state of peering.
  const Ipv6ExpressRouteCircuitPeeringConfigResponse({
    this.microsoftPeeringConfig,
    this.primaryPeerAddressPrefix,
    this.routeFilter,
    this.secondaryPeerAddressPrefix,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microsoftPeeringConfig': ?pulumi.Input.mapOptionalInputValue<ExpressRouteCircuitPeeringConfigResponse, Map<String, dynamic>>(microsoftPeeringConfig, (value) => value.toMap()),
      'primaryPeerAddressPrefix': ?primaryPeerAddressPrefix,
      'routeFilter': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(routeFilter, (value) => value.toMap()),
      'secondaryPeerAddressPrefix': ?secondaryPeerAddressPrefix,
      'state': ?state,
    };
  }

  factory Ipv6ExpressRouteCircuitPeeringConfigResponse.fromMap(Map<String, dynamic> map) {
    return Ipv6ExpressRouteCircuitPeeringConfigResponse(
      microsoftPeeringConfig: (() { final guardedValue = map['microsoftPeeringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteCircuitPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      primaryPeerAddressPrefix: (() { final guardedValue = map['primaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeFilter: (() { final guardedValue = map['routeFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryPeerAddressPrefix: (() { final guardedValue = map['secondaryPeerAddressPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

