// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_circuit_peering_id_response.dart';
import 'routing_configuration_express_route_connection_response.dart';

/// Result data returned by getExpressRouteConnection.
class GetExpressRouteConnectionResult {
  /// Authorization key to establish the connection.
  final String? authorizationKey;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Enable internet security.
  final bool? enableInternetSecurity;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final bool? enablePrivateLinkFastPath;
  /// The ExpressRoute circuit peering.
  final ExpressRouteCircuitPeeringIdResponse? expressRouteCircuitPeering;
  /// Enable FastPath to vWan Firewall hub.
  final bool? expressRouteGatewayBypass;
  /// Resource ID.
  final String? id;
  /// The name of the resource.
  final String? name;
  /// The provisioning state of the express route connection resource.
  final String? provisioningState;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final RoutingConfigurationExpressRouteConnectionResponse? routingConfiguration;
  /// The routing weight associated to the connection.
  final int? routingWeight;

  /// Creates a new [GetExpressRouteConnectionResult].
  /// [authorizationKey] Authorization key to establish the connection.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [enableInternetSecurity] Enable internet security.
  /// [enablePrivateLinkFastPath] Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  /// [expressRouteCircuitPeering] The ExpressRoute circuit peering.
  /// [expressRouteGatewayBypass] Enable FastPath to vWan Firewall hub.
  /// [id] Resource ID.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning state of the express route connection resource.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] The routing weight associated to the connection.
  const GetExpressRouteConnectionResult({
    this.authorizationKey,
    this.azureApiVersion,
    this.enableInternetSecurity,
    this.enablePrivateLinkFastPath,
    this.expressRouteCircuitPeering,
    this.expressRouteGatewayBypass,
    this.id,
    this.name,
    this.provisioningState,
    this.routingConfiguration,
    this.routingWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'azureApiVersion': ?azureApiVersion,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'expressRouteCircuitPeering': ?expressRouteCircuitPeering?.toMap(),
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'routingConfiguration': ?routingConfiguration?.toMap(),
      'routingWeight': ?routingWeight,
    };
  }

  factory GetExpressRouteConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteConnectionResult(
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePrivateLinkFastPath: (() { final guardedValue = map['enablePrivateLinkFastPath']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      expressRouteCircuitPeering: (() { final guardedValue = map['expressRouteCircuitPeering']; if (guardedValue == null) return null; return ExpressRouteCircuitPeeringIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      expressRouteGatewayBypass: (() { final guardedValue = map['expressRouteGatewayBypass']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingConfiguration: (() { final guardedValue = map['routingConfiguration']; if (guardedValue == null) return null; return RoutingConfigurationExpressRouteConnectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
