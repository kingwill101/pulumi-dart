// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dynamic_routing_element_outputs.dart';
import 'ai_gateway_dynamic_routing_element_properties.dart';

class AiGatewayDynamicRoutingElement {
  final pulumi.Input<String> id;
  final pulumi.Input<AiGatewayDynamicRoutingElementOutputs> outputs;
  final pulumi.Input<AiGatewayDynamicRoutingElementProperties?>? properties;
  /// Available values: "start", "conditional", "percentage", "rate", "model", "end".
  final pulumi.Input<String> type;

  /// Creates a new [AiGatewayDynamicRoutingElement].
  /// [id] Required.
  /// [outputs] Required.
  /// [properties] Optional.
  /// [type] Available values: "start", "conditional", "percentage", "rate", "model", "end".
  const AiGatewayDynamicRoutingElement({
    required this.id,
    required this.outputs,
    this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputs': pulumi.Input.mapInputValue<AiGatewayDynamicRoutingElementOutputs, Map<String, dynamic>>(outputs, (value) => value.toMap()),
      'properties': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingElementProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AiGatewayDynamicRoutingElement.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingElement(
      id: pulumi.Input.fromValue(map['id'] as String),
      outputs: pulumi.Input.fromValue(AiGatewayDynamicRoutingElementOutputs.fromMap((map['outputs']! as Map).cast<String, dynamic>())),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingElementProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
