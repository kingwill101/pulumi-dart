// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_connection_routing.dart';

/// Input properties used for looking up and filtering ExpressRouteConnection resources.
class ExpressRouteConnectionState {
  /// The authorization key to establish the Express Route Connection.
  final pulumi.Input<String?>? authorizationKey;
  final pulumi.Input<bool?>? enableInternetSecurity;
  /// The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? expressRouteCircuitPeeringId;
  /// Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`.
  final pulumi.Input<bool?>? expressRouteGatewayBypassEnabled;
  /// The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? expressRouteGatewayId;
  /// Is Internet security enabled for this Express Route Connection? Defaults to `false`.
  final pulumi.Input<bool?>? internetSecurityEnabled;
  /// The name which should be used for this Express Route Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  final pulumi.Input<bool?>? privateLinkFastPathEnabled;
  /// A `routing` block as defined below.
  final pulumi.Input<ExpressRouteConnectionRouting?>? routing;
  /// The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`.
  final pulumi.Input<int?>? routingWeight;

  /// Creates a new [ExpressRouteConnectionState].
  /// [authorizationKey] The authorization key to establish the Express Route Connection.
  /// [enableInternetSecurity] Optional.
  /// [expressRouteCircuitPeeringId] The ID of the Express Route Circuit Peering that this Express Route Connection connects with. Changing this forces a new resource to be created.
  /// [expressRouteGatewayBypassEnabled] Specified whether Fast Path is enabled for Virtual Wan Firewall Hub. Defaults to `false`.
  /// [expressRouteGatewayId] The ID of the Express Route Gateway that this Express Route Connection connects with. Changing this forces a new resource to be created.
  /// [internetSecurityEnabled] Is Internet security enabled for this Express Route Connection? Defaults to `false`.
  /// [name] The name which should be used for this Express Route Connection. Changing this forces a new resource to be created.
  /// [privateLinkFastPathEnabled] Optional.
  /// [routing] A `routing` block as defined below.
  /// [routingWeight] The routing weight associated to the Express Route Connection. Possible value is between `0` and `32000`. Defaults to `0`.
  const ExpressRouteConnectionState({
    this.authorizationKey,
    this.enableInternetSecurity,
    this.expressRouteCircuitPeeringId,
    this.expressRouteGatewayBypassEnabled,
    this.expressRouteGatewayId,
    this.internetSecurityEnabled,
    this.name,
    this.privateLinkFastPathEnabled,
    this.routing,
    this.routingWeight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'enableInternetSecurity': ?enableInternetSecurity,
      'expressRouteCircuitPeeringId': ?expressRouteCircuitPeeringId,
      'expressRouteGatewayBypassEnabled': ?expressRouteGatewayBypassEnabled,
      'expressRouteGatewayId': ?expressRouteGatewayId,
      'internetSecurityEnabled': ?internetSecurityEnabled,
      'name': ?name,
      'privateLinkFastPathEnabled': ?privateLinkFastPathEnabled,
      'routing': ?pulumi.Input.mapOptionalInputValue<ExpressRouteConnectionRouting, Map<String, dynamic>>(routing, (value) => value.toMap()),
      'routingWeight': ?routingWeight,
    };
  }

  factory ExpressRouteConnectionState.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionState(
      authorizationKey: (() { final guardedValue = map['authorizationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableInternetSecurity: (() { final guardedValue = map['enableInternetSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expressRouteCircuitPeeringId: (() { final guardedValue = map['expressRouteCircuitPeeringId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expressRouteGatewayBypassEnabled: (() { final guardedValue = map['expressRouteGatewayBypassEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expressRouteGatewayId: (() { final guardedValue = map['expressRouteGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      internetSecurityEnabled: (() { final guardedValue = map['internetSecurityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkFastPathEnabled: (() { final guardedValue = map['privateLinkFastPathEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routing: (() { final guardedValue = map['routing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressRouteConnectionRouting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingWeight: (() { final guardedValue = map['routingWeight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
