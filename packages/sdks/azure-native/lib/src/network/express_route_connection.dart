// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_circuit_peering_id.dart';
import 'routing_configuration.dart';

/// ExpressRouteConnection resource.
class ExpressRouteConnection {
  /// Authorization key to establish the connection.
  final String? authorizationKey;
  /// Enable internet security.
  final bool? enableInternetSecurity;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final bool? enablePrivateLinkFastPath;
  /// The ExpressRoute circuit peering.
  final ExpressRouteCircuitPeeringId expressRouteCircuitPeering;
  /// Enable FastPath to vWan Firewall hub.
  final bool? expressRouteGatewayBypass;
  /// Resource ID.
  final String? id;
  /// The name of the resource.
  final String name;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final RoutingConfiguration? routingConfiguration;
  /// The routing weight associated to the connection.
  final int? routingWeight;

  /// Creates a new [ExpressRouteConnection].
  /// [authorizationKey] Authorization key to establish the connection.
  /// [enableInternetSecurity] Enable internet security.
  /// [enablePrivateLinkFastPath] Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  /// [expressRouteCircuitPeering] The ExpressRoute circuit peering.
  /// [expressRouteGatewayBypass] Enable FastPath to vWan Firewall hub.
  /// [id] Resource ID.
  /// [name] The name of the resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] The routing weight associated to the connection.
  ExpressRouteConnection({
    this.authorizationKey,
    this.enableInternetSecurity,
    this.enablePrivateLinkFastPath,
    required this.expressRouteCircuitPeering,
    this.expressRouteGatewayBypass,
    this.id,
    required this.name,
    this.routingConfiguration,
    this.routingWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'expressRouteCircuitPeering': expressRouteCircuitPeering.toMap(),
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'id': ?id,
      'name': name,
      'routingConfiguration': ?routingConfiguration == null ? null : routingConfiguration!.toMap(),
      'routingWeight': ?routingWeight,
    };
  }

  factory ExpressRouteConnection.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnection(
      authorizationKey: map['authorizationKey'] == null ? null : map['authorizationKey'] as String,
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : map['enableInternetSecurity'] as bool,
      enablePrivateLinkFastPath: map['enablePrivateLinkFastPath'] == null ? null : map['enablePrivateLinkFastPath'] as bool,
      expressRouteCircuitPeering: ExpressRouteCircuitPeeringId.fromMap((map['expressRouteCircuitPeering'] as Map).cast<String, dynamic>()),
      expressRouteGatewayBypass: map['expressRouteGatewayBypass'] == null ? null : map['expressRouteGatewayBypass'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] as String,
      routingConfiguration: map['routingConfiguration'] == null ? null : RoutingConfiguration.fromMap((map['routingConfiguration'] as Map).cast<String, dynamic>()),
      routingWeight: map['routingWeight'] == null ? null : map['routingWeight'] as int,
    );
  }
}

