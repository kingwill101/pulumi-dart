// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_id.dart';
import 'routing_configuration.dart';

/// ExpressRouteConnection resource.
class ExpressRouteConnection {
  /// Authorization key to establish the connection.
  final pulumi.Input<String>? authorizationKey;
  /// Enable internet security.
  final pulumi.Input<bool>? enableInternetSecurity;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final pulumi.Input<bool>? enablePrivateLinkFastPath;
  /// The ExpressRoute circuit peering.
  final pulumi.Input<ExpressRouteCircuitPeeringId> expressRouteCircuitPeering;
  /// Enable FastPath to vWan Firewall hub.
  final pulumi.Input<bool>? expressRouteGatewayBypass;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource.
  final pulumi.Input<String> name;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration>? routingConfiguration;
  /// The routing weight associated to the connection.
  final pulumi.Input<int>? routingWeight;

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
  const ExpressRouteConnection({
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
      'expressRouteCircuitPeering': pulumi.Input.mapInputValue<ExpressRouteCircuitPeeringId, Map<String, dynamic>>(expressRouteCircuitPeering, (value) => value.toMap()),
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'id': ?id,
      'name': name,
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfiguration, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
    };
  }

  factory ExpressRouteConnection.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnection(
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrivateLinkFastPath: (() { final guardedValue = map['enablePrivateLinkFastPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expressRouteCircuitPeering: pulumi.Input.fromValue(ExpressRouteCircuitPeeringId.fromMap((map['expressRouteCircuitPeering']! as Map).cast<String, dynamic>())),
      expressRouteGatewayBypass: (() { final guardedValue = map['expressRouteGatewayBypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routingConfiguration: (() { final guardedValue = map['routingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

