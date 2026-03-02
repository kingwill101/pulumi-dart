// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection_routing.dart';

/// {@template pulumi_network_express_route_connection_express_route_connection_args_doc}
/// The set of arguments for ExpressRouteConnection.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_connection_express_route_connection_args_doc}
class ExpressRouteConnectionArgs {
  /// The authorization key to establish the Express Route Connection.
  final pulumi.Input<String>? authorizationKey;
  /// Is Internet security enabled for this Express Route Connection?
  final pulumi.Input<bool>? enableInternetSecurity;
  /// The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created.
  final pulumi.Input<String> expressRouteCircuitPeeringId;
  /// Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`.
  final pulumi.Input<bool>? expressRouteGatewayBypassEnabled;
  /// The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created.
  final pulumi.Input<String> expressRouteGatewayId;
  /// The name which should be used for this Express Route Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<bool>? privateLinkFastPathEnabled;
  /// A `routing` block as defined below.
  final pulumi.Input<ExpressRouteConnectionRouting>? routing;
  /// The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`.
  final pulumi.Input<int>? routingWeight;

  /// Creates a new [ExpressRouteConnectionArgs].
  /// [authorizationKey] The authorization key to establish the Express Route Connection.
  /// [enableInternetSecurity] Is Internet security enabled for this Express Route Connection?
  /// [expressRouteCircuitPeeringId] The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created.
  /// [expressRouteGatewayBypassEnabled] Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`.
  /// [expressRouteGatewayId] The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Express Route Connection. Changing this forces a new resource to be created.
  /// [privateLinkFastPathEnabled] Optional.
  /// [routing] A `routing` block as defined below.
  /// [routingWeight] The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`.
  ExpressRouteConnectionArgs({
    this.authorizationKey,
    this.enableInternetSecurity,
    required this.expressRouteCircuitPeeringId,
    this.expressRouteGatewayBypassEnabled,
    required this.expressRouteGatewayId,
    this.name,
    this.privateLinkFastPathEnabled,
    this.routing,
    this.routingWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'enableInternetSecurity': ?enableInternetSecurity,
      'expressRouteCircuitPeeringId': expressRouteCircuitPeeringId,
      'expressRouteGatewayBypassEnabled': ?expressRouteGatewayBypassEnabled,
      'expressRouteGatewayId': expressRouteGatewayId,
      'name': ?name,
      'privateLinkFastPathEnabled': ?privateLinkFastPathEnabled,
      'routing': ?pulumi.Input.mapOptionalInputValue<ExpressRouteConnectionRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
    };
  }

  factory ExpressRouteConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionArgs(
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : (map['enableInternetSecurity']! as bool).input(),
      expressRouteCircuitPeeringId: (map['expressRouteCircuitPeeringId'] as String).input(),
      expressRouteGatewayBypassEnabled: map['expressRouteGatewayBypassEnabled'] == null ? null : (map['expressRouteGatewayBypassEnabled']! as bool).input(),
      expressRouteGatewayId: (map['expressRouteGatewayId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateLinkFastPathEnabled: map['privateLinkFastPathEnabled'] == null ? null : (map['privateLinkFastPathEnabled']! as bool).input(),
      routing: map['routing'] == null ? null : (ExpressRouteConnectionRouting.fromMap((map['routing']! as Map).cast<String, dynamic>())).input(),
      routingWeight: map['routingWeight'] == null ? null : (map['routingWeight']! as int).input(),
    );
  }
}

