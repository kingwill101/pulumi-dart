// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_id.dart';
import 'routing_configuration.dart';

/// {@template pulumi_network_express_route_connection_args_doc}
/// The set of arguments for ExpressRouteConnection.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_connection_args_doc}
class ExpressRouteConnectionArgs {
  /// Authorization key to establish the connection.
  final pulumi.Input<String>? authorizationKey;
  /// The name of the connection subresource.
  final pulumi.Input<String>? connectionName;
  /// Enable internet security.
  final pulumi.Input<bool>? enableInternetSecurity;
  /// Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  final pulumi.Input<bool>? enablePrivateLinkFastPath;
  /// The ExpressRoute circuit peering.
  final pulumi.Input<ExpressRouteCircuitPeeringId> expressRouteCircuitPeering;
  /// Enable FastPath to vWan Firewall hub.
  final pulumi.Input<bool>? expressRouteGatewayBypass;
  /// The name of the ExpressRoute gateway.
  final pulumi.Input<String> expressRouteGatewayName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource.
  final pulumi.Input<String> name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The Routing Configuration indicating the associated and propagated route tables on this connection.
  final pulumi.Input<RoutingConfiguration>? routingConfiguration;
  /// The routing weight associated to the connection.
  final pulumi.Input<int>? routingWeight;

  /// Creates a new [ExpressRouteConnectionArgs].
  /// [authorizationKey] Authorization key to establish the connection.
  /// [connectionName] The name of the connection subresource.
  /// [enableInternetSecurity] Enable internet security.
  /// [enablePrivateLinkFastPath] Bypass the ExpressRoute gateway when accessing private-links. ExpressRoute FastPath (expressRouteGatewayBypass) must be enabled.
  /// [expressRouteCircuitPeering] The ExpressRoute circuit peering.
  /// [expressRouteGatewayBypass] Enable FastPath to vWan Firewall hub.
  /// [expressRouteGatewayName] The name of the ExpressRoute gateway.
  /// [id] Resource ID.
  /// [name] The name of the resource.
  /// [resourceGroupName] The name of the resource group.
  /// [routingConfiguration] The Routing Configuration indicating the associated and propagated route tables on this connection.
  /// [routingWeight] The routing weight associated to the connection.
  ExpressRouteConnectionArgs({
    this.authorizationKey,
    this.connectionName,
    this.enableInternetSecurity,
    this.enablePrivateLinkFastPath,
    required this.expressRouteCircuitPeering,
    this.expressRouteGatewayBypass,
    required this.expressRouteGatewayName,
    this.id,
    required this.name,
    required this.resourceGroupName,
    this.routingConfiguration,
    this.routingWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'connectionName': ?connectionName,
      'enableInternetSecurity': ?enableInternetSecurity,
      'enablePrivateLinkFastPath': ?enablePrivateLinkFastPath,
      'expressRouteCircuitPeering': pulumi.Input.mapInputValue<ExpressRouteCircuitPeeringId, Map<String, dynamic>>(expressRouteCircuitPeering, (value) => value.toMap()),
      'expressRouteGatewayBypass': ?expressRouteGatewayBypass,
      'expressRouteGatewayName': expressRouteGatewayName,
      'id': ?id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'routingConfiguration': ?pulumi.Input.mapOptionalInputValue<RoutingConfiguration, Map<String, dynamic>>(routingConfiguration, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
    };
  }

  factory ExpressRouteConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionArgs(
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      connectionName: map['connectionName'] == null ? null : (map['connectionName']! as String).input(),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : (map['enableInternetSecurity']! as bool).input(),
      enablePrivateLinkFastPath: map['enablePrivateLinkFastPath'] == null ? null : (map['enablePrivateLinkFastPath']! as bool).input(),
      expressRouteCircuitPeering: (ExpressRouteCircuitPeeringId.fromMap((map['expressRouteCircuitPeering'] as Map).cast<String, dynamic>())).input(),
      expressRouteGatewayBypass: map['expressRouteGatewayBypass'] == null ? null : (map['expressRouteGatewayBypass']! as bool).input(),
      expressRouteGatewayName: (map['expressRouteGatewayName'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routingConfiguration: map['routingConfiguration'] == null ? null : (RoutingConfiguration.fromMap((map['routingConfiguration']! as Map).cast<String, dynamic>())).input(),
      routingWeight: map['routingWeight'] == null ? null : (map['routingWeight']! as int).input(),
    );
  }
}

