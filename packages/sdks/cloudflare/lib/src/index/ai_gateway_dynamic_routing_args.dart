// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dynamic_routing_element.dart';

/// {@template pulumi_index_ai_gateway_dynamic_routing_ai_gateway_dynamic_routing_args_doc}
/// The set of arguments for AiGatewayDynamicRouting.
/// {@endtemplate}
/// {@macro pulumi_index_ai_gateway_dynamic_routing_ai_gateway_dynamic_routing_args_doc}
class AiGatewayDynamicRoutingArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<AiGatewayDynamicRoutingElement>> elements;
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> name;

  /// Creates a new [AiGatewayDynamicRoutingArgs].
  /// [accountId] Required.
  /// [elements] Required.
  /// [gatewayId] Required.
  /// [name] Required.
  const AiGatewayDynamicRoutingArgs({
    required this.accountId,
    required this.elements,
    required this.gatewayId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'elements': pulumi.Input.mapInputValue<List<AiGatewayDynamicRoutingElement>, List<Map<String, dynamic>>>(elements, (value) => pulumi.Input.encodeList<AiGatewayDynamicRoutingElement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayId': gatewayId,
      'name': name,
    };
  }

  factory AiGatewayDynamicRoutingArgs.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      elements: pulumi.Input.fromValue(pulumi.Input.decodeList<AiGatewayDynamicRoutingElement>(map['elements']!, (value) => AiGatewayDynamicRoutingElement.fromMap((value as Map).cast<String, dynamic>()))),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
