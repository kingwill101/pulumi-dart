// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateway_dynamic_routing_element_outputs.dart';
import 'get_ai_gateway_dynamic_routing_element_properties.dart';

class GetAiGatewayDynamicRoutingElement {
  final pulumi.Input<String> id;
  final pulumi.Input<GetAiGatewayDynamicRoutingElementOutputs> outputs;
  final pulumi.Input<GetAiGatewayDynamicRoutingElementProperties> properties;
  /// Available values: "start", "conditional", "percentage", "rate", "model", "end".
  final pulumi.Input<String> type;

  /// Creates a new [GetAiGatewayDynamicRoutingElement].
  /// [id] Required.
  /// [outputs] Required.
  /// [properties] Required.
  /// [type] Available values: "start", "conditional", "percentage", "rate", "model", "end".
  const GetAiGatewayDynamicRoutingElement({
    required this.id,
    required this.outputs,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputs': pulumi.Input.mapInputValue<GetAiGatewayDynamicRoutingElementOutputs, Map<String, dynamic>>(outputs, (value) => value.toMap()),
      'properties': pulumi.Input.mapInputValue<GetAiGatewayDynamicRoutingElementProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetAiGatewayDynamicRoutingElement.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingElement(
      id: pulumi.Input.fromValue(map['id'] as String),
      outputs: pulumi.Input.fromValue(GetAiGatewayDynamicRoutingElementOutputs.fromMap((map['outputs']! as Map).cast<String, dynamic>())),
      properties: pulumi.Input.fromValue(GetAiGatewayDynamicRoutingElementProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
