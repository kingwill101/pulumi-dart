// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_id_response.dart';
import 'routing_configuration_response.dart';

/// ExpressRouteConnection resource.
class ExpressRouteConnectionResponse {
  /// Authorization key to establish the connection.
  final pulumi.Input<String>? authorizationKey;

  /// Enable internet security.
  final pulumi.Input<bool>? enableInternetSecurity;

  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final pulumi.Input<bool>? enablePrivateLinkFastPath;

  /// The ExpressRoute circuit peering.
  final pulumi.Input<ExpressRouteCircuitPeeringIdResponse>
  expressRouteCircuitPeering;

  /// Enable FastPath to vWan Firewall hub.
  final pulumi.Input<bool>? expressRouteGatewayBypass;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The name of the resource.
  final pulumi.Input<String> name;

  /// The provisioning state of the express route connection resource.
  final pulumi.Input<String> provisioningState;

  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfigurationResponse>? routingConfiguration;

  /// The routing weight associated to the connection.
  final pulumi.Input<int>? routingWeight;

  /// Creates a new [ExpressRouteConnectionResponse].
  /// [authorizationKey] Authorization key to establish the connection.
  /// [enableInternetSecurity] Enable internet security.
  /// [enablePrivateLinkFastPath] Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  /// [expressRouteCircuitPeering] The ExpressRoute circuit peering.
  /// [expressRouteGatewayBypass] Enable FastPath to vWan Firewall hub.
  /// [id] Resource ID.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning state of the express route connection resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] The routing weight associated to the connection.
  ExpressRouteConnectionResponse({
    this.authorizationKey,
    this.enableInternetSecurity,
    this.enablePrivateLinkFastPath,
    required this.expressRouteCircuitPeering,
    this.expressRouteGatewayBypass,
    this.id,
    required this.name,
    required this.provisioningState,
    this.routingConfiguration,
    this.routingWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'expressRouteCircuitPeering':
          pulumi.Input.mapInputValue<
            ExpressRouteCircuitPeeringIdResponse,
            Map<String, dynamic>
          >(expressRouteCircuitPeering, (value) => value.toMap()),
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'id': ?id,
      'name': name,
      'provisioningState': provisioningState,
      'routingConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            RoutingConfigurationResponse,
            Map<String, dynamic>
          >(routingConfiguration, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
    };
  }

  factory ExpressRouteConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionResponse(
      authorizationKey: (() {
        final guardedValue = map['authorizationKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableInternetSecurity: (() {
        final guardedValue = map['enableInternetSecurity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enablePrivateLinkFastPath: (() {
        final guardedValue = map['enablePrivateLinkFastPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      expressRouteCircuitPeering: pulumi.Input.fromValue(
        ExpressRouteCircuitPeeringIdResponse.fromMap(
          (map['expressRouteCircuitPeering']! as Map).cast<String, dynamic>(),
        ),
      ),
      expressRouteGatewayBypass: (() {
        final guardedValue = map['expressRouteGatewayBypass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      routingConfiguration: (() {
        final guardedValue = map['routingConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RoutingConfigurationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      routingWeight: (() {
        final guardedValue = map['routingWeight'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
