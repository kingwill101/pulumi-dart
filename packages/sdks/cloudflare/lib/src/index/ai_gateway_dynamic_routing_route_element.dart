// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dynamic_routing_route_element_outputs.dart';
import 'ai_gateway_dynamic_routing_route_element_properties.dart';

class AiGatewayDynamicRoutingRouteElement {
  final pulumi.Input<String?>? id;
  final pulumi.Input<AiGatewayDynamicRoutingRouteElementOutputs?>? outputs;
  final pulumi.Input<AiGatewayDynamicRoutingRouteElementProperties?>? properties;
  /// Available values: "start", "conditional", "percentage", "rate", "model", "end".
  final pulumi.Input<String?>? type;

  /// Creates a new [AiGatewayDynamicRoutingRouteElement].
  /// [id] Optional.
  /// [outputs] Optional.
  /// [properties] Optional.
  /// [type] Available values: "start", "conditional", "percentage", "rate", "model", "end".
  const AiGatewayDynamicRoutingRouteElement({
    this.id,
    this.outputs,
    this.properties,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'outputs': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRouteElementOutputs, Map<String, dynamic>>(outputs, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRouteElementProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory AiGatewayDynamicRoutingRouteElement.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingRouteElement(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputs: (() { final guardedValue = map['outputs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRouteElementOutputs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRouteElementProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
