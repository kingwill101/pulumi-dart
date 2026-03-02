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
  Ipv6ExpressRouteCircuitPeeringConfigResponse({
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
      microsoftPeeringConfig: map['microsoftPeeringConfig'] == null ? null : (ExpressRouteCircuitPeeringConfigResponse.fromMap((map['microsoftPeeringConfig'] as Map).cast<String, dynamic>())).input(),
      primaryPeerAddressPrefix: map['primaryPeerAddressPrefix'] == null ? null : (map['primaryPeerAddressPrefix'] as String).input(),
      routeFilter: map['routeFilter'] == null ? null : (SubResourceResponse.fromMap((map['routeFilter'] as Map).cast<String, dynamic>())).input(),
      secondaryPeerAddressPrefix: map['secondaryPeerAddressPrefix'] == null ? null : (map['secondaryPeerAddressPrefix'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

