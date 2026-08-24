// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dynamic_routing_route_deployment.dart';
import 'ai_gateway_dynamic_routing_route_element.dart';
import 'ai_gateway_dynamic_routing_route_version.dart';

class AiGatewayDynamicRoutingRoute {
  final pulumi.Input<String?>? accountTag;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<AiGatewayDynamicRoutingRouteDeployment?>? deployment;
  final pulumi.Input<List<AiGatewayDynamicRoutingRouteElement>?>? elements;
  final pulumi.Input<String?>? gatewayId;
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? name;
  final pulumi.Input<AiGatewayDynamicRoutingRouteVersion?>? version;

  /// Creates a new [AiGatewayDynamicRoutingRoute].
  /// [accountTag] Optional.
  /// [createdAt] Optional.
  /// [deployment] Optional.
  /// [elements] Optional.
  /// [gatewayId] Optional.
  /// [id] Optional.
  /// [modifiedAt] Optional.
  /// [name] Optional.
  /// [version] Optional.
  const AiGatewayDynamicRoutingRoute({
    this.accountTag,
    this.createdAt,
    this.deployment,
    this.elements,
    this.gatewayId,
    this.id,
    this.modifiedAt,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountTag': ?accountTag,
      'createdAt': ?createdAt,
      'deployment': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRouteDeployment, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'elements': ?pulumi.Input.mapOptionalInputValue<List<AiGatewayDynamicRoutingRouteElement>, List<Map<String, dynamic>>>(elements, (value) => pulumi.Input.encodeList<AiGatewayDynamicRoutingRouteElement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayId': ?gatewayId,
      'id': ?id,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'version': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRouteVersion, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory AiGatewayDynamicRoutingRoute.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingRoute(
      accountTag: (() { final guardedValue = map['accountTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRouteDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elements: (() { final guardedValue = map['elements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiGatewayDynamicRoutingRouteElement>(guardedValue, (value) => AiGatewayDynamicRoutingRouteElement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRouteVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
