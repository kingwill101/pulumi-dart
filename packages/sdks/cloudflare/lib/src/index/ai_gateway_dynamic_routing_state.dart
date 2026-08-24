// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dynamic_routing_deployment.dart';
import 'ai_gateway_dynamic_routing_element.dart';
import 'ai_gateway_dynamic_routing_route.dart';
import 'ai_gateway_dynamic_routing_version.dart';

/// Input properties used for looking up and filtering AiGatewayDynamicRouting resources.
class AiGatewayDynamicRoutingState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<AiGatewayDynamicRoutingDeployment?>? deployment;
  final pulumi.Input<List<AiGatewayDynamicRoutingElement>?>? elements;
  final pulumi.Input<String?>? gatewayId;
  final pulumi.Input<String?>? modifiedAt;
  final pulumi.Input<String?>? name;
  final pulumi.Input<AiGatewayDynamicRoutingRoute?>? route;
  final pulumi.Input<bool?>? success;
  final pulumi.Input<AiGatewayDynamicRoutingVersion?>? version;

  /// Creates a new [AiGatewayDynamicRoutingState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [deployment] Optional.
  /// [elements] Optional.
  /// [gatewayId] Optional.
  /// [modifiedAt] Optional.
  /// [name] Optional.
  /// [route] Optional.
  /// [success] Optional.
  /// [version] Optional.
  const AiGatewayDynamicRoutingState({
    this.accountId,
    this.createdAt,
    this.deployment,
    this.elements,
    this.gatewayId,
    this.modifiedAt,
    this.name,
    this.route,
    this.success,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'deployment': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingDeployment, Map<String, dynamic>>(deployment, (value) => value.toMap()),
      'elements': ?pulumi.Input.mapOptionalInputValue<List<AiGatewayDynamicRoutingElement>, List<Map<String, dynamic>>>(elements, (value) => pulumi.Input.encodeList<AiGatewayDynamicRoutingElement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayId': ?gatewayId,
      'modifiedAt': ?modifiedAt,
      'name': ?name,
      'route': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRoute, Map<String, dynamic>>(route, (value) => value.toMap()),
      'success': ?success,
      'version': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingVersion, Map<String, dynamic>>(version, (value) => value.toMap()),
    };
  }

  factory AiGatewayDynamicRoutingState.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployment: (() { final guardedValue = map['deployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      elements: (() { final guardedValue = map['elements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiGatewayDynamicRoutingElement>(guardedValue, (value) => AiGatewayDynamicRoutingElement.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedAt: (() { final guardedValue = map['modifiedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      route: (() { final guardedValue = map['route']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      success: (() { final guardedValue = map['success']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingVersion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
