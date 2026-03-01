// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection_routing.dart';

/// Input properties used for looking up and filtering ExpressRouteConnection resources.
class ExpressRouteConnectionState {
  /// The authorization key to establish the Express Route Connection.
  final pulumi.Input<String>? authorizationKey;
  /// Is Internet security enabled for this Express Route Connection?
  final pulumi.Input<bool>? enableInternetSecurity;
  /// The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? expressRouteCircuitPeeringId;
  /// Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`.
  final pulumi.Input<bool>? expressRouteGatewayBypassEnabled;
  /// The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created.
  final pulumi.Input<String>? expressRouteGatewayId;
  /// The name which should be used for this Express Route Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<bool>? privateLinkFastPathEnabled;
  /// A `routing` block as defined below.
  final pulumi.Input<ExpressRouteConnectionRouting>? routing;
  /// The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`.
  final pulumi.Input<int>? routingWeight;

  /// Creates a new [ExpressRouteConnectionState].
  /// [authorizationKey] The authorization key to establish the Express Route Connection.
  /// [enableInternetSecurity] Is Internet security enabled for this Express Route Connection?
  /// [expressRouteCircuitPeeringId] The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created.
  /// [expressRouteGatewayBypassEnabled] Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`.
  /// [expressRouteGatewayId] The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Express Route Connection. Changing this forces a new resource to be created.
  /// [privateLinkFastPathEnabled] Optional.
  /// [routing] A `routing` block as defined below.
  /// [routingWeight] The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`.
  ExpressRouteConnectionState({
    pulumi.Output<String>? authorizationKey,
    pulumi.Output<bool>? enableInternetSecurity,
    pulumi.Output<String>? expressRouteCircuitPeeringId,
    pulumi.Output<bool>? expressRouteGatewayBypassEnabled,
    pulumi.Output<String>? expressRouteGatewayId,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? privateLinkFastPathEnabled,
    pulumi.Output<ExpressRouteConnectionRouting>? routing,
    pulumi.Output<int>? routingWeight,
  }) :
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      enableInternetSecurity = pulumi.Input.asOptionalInput<bool>(enableInternetSecurity),
      expressRouteCircuitPeeringId = pulumi.Input.asOptionalInput<String>(expressRouteCircuitPeeringId),
      expressRouteGatewayBypassEnabled = pulumi.Input.asOptionalInput<bool>(expressRouteGatewayBypassEnabled),
      expressRouteGatewayId = pulumi.Input.asOptionalInput<String>(expressRouteGatewayId),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateLinkFastPathEnabled = pulumi.Input.asOptionalInput<bool>(privateLinkFastPathEnabled),
      routing = pulumi.Input.asOptionalInput<ExpressRouteConnectionRouting>(routing),
      routingWeight = pulumi.Input.asOptionalInput<int>(routingWeight);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'enableInternetSecurity': ?enableInternetSecurity,
      'expressRouteCircuitPeeringId': ?expressRouteCircuitPeeringId,
      'expressRouteGatewayBypassEnabled': ?expressRouteGatewayBypassEnabled,
      'expressRouteGatewayId': ?expressRouteGatewayId,
      'name': ?name,
      'privateLinkFastPathEnabled': ?privateLinkFastPathEnabled,
      'routing': ?pulumi.Input.mapOptionalInputValue<ExpressRouteConnectionRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
    };
  }

  factory ExpressRouteConnectionState.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionState(
      authorizationKey: map['authorizationKey'] == null ? null : pulumi.Output.create<String>(map['authorizationKey'] as String),
      enableInternetSecurity: map['enableInternetSecurity'] == null ? null : pulumi.Output.create<bool>(map['enableInternetSecurity'] as bool),
      expressRouteCircuitPeeringId: map['expressRouteCircuitPeeringId'] == null ? null : pulumi.Output.create<String>(map['expressRouteCircuitPeeringId'] as String),
      expressRouteGatewayBypassEnabled: map['expressRouteGatewayBypassEnabled'] == null ? null : pulumi.Output.create<bool>(map['expressRouteGatewayBypassEnabled'] as bool),
      expressRouteGatewayId: map['expressRouteGatewayId'] == null ? null : pulumi.Output.create<String>(map['expressRouteGatewayId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateLinkFastPathEnabled: map['privateLinkFastPathEnabled'] == null ? null : pulumi.Output.create<bool>(map['privateLinkFastPathEnabled'] as bool),
      routing: map['routing'] == null ? null : pulumi.Output.create<ExpressRouteConnectionRouting>(ExpressRouteConnectionRouting.fromMap((map['routing'] as Map).cast<String, dynamic>())),
      routingWeight: map['routingWeight'] == null ? null : pulumi.Output.create<int>(map['routingWeight'] as int),
    );
  }
}

