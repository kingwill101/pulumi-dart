// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateway_dynamic_routing_element_outputs_fallback.dart';
import 'get_ai_gateway_dynamic_routing_element_outputs_false.dart';
import 'get_ai_gateway_dynamic_routing_element_outputs_next.dart';
import 'get_ai_gateway_dynamic_routing_element_outputs_success.dart';
import 'get_ai_gateway_dynamic_routing_element_outputs_true.dart';

class GetAiGatewayDynamicRoutingElementOutputs {
  final pulumi.Input<String> elementId;
  final pulumi.Input<GetAiGatewayDynamicRoutingElementOutputsFallback> fallback;
  final pulumi.Input<GetAiGatewayDynamicRoutingElementOutputsFalse> false_;
  final pulumi.Input<GetAiGatewayDynamicRoutingElementOutputsNext> next;
  final pulumi.Input<GetAiGatewayDynamicRoutingElementOutputsSuccess> success;
  final pulumi.Input<GetAiGatewayDynamicRoutingElementOutputsTrue> true_;

  /// Creates a new [GetAiGatewayDynamicRoutingElementOutputs].
  /// [elementId] Required.
  /// [fallback] Required.
  /// [false_] Required.
  /// [next] Required.
  /// [success] Required.
  /// [true_] Required.
  const GetAiGatewayDynamicRoutingElementOutputs({
    required this.elementId,
    required this.fallback,
    required this.false_,
    required this.next,
    required this.success,
    required this.true_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
      'fallback': pulumi.Input.mapInputValue<GetAiGatewayDynamicRoutingElementOutputsFallback, Map<String, dynamic>>(fallback, (value) => value.toMap()),
      'false': pulumi.Input.mapInputValue<GetAiGatewayDynamicRoutingElementOutputsFalse, Map<String, dynamic>>(false_, (value) => value.toMap()),
      'next': pulumi.Input.mapInputValue<GetAiGatewayDynamicRoutingElementOutputsNext, Map<String, dynamic>>(next, (value) => value.toMap()),
      'success': pulumi.Input.mapInputValue<GetAiGatewayDynamicRoutingElementOutputsSuccess, Map<String, dynamic>>(success, (value) => value.toMap()),
      'true': pulumi.Input.mapInputValue<GetAiGatewayDynamicRoutingElementOutputsTrue, Map<String, dynamic>>(true_, (value) => value.toMap()),
    };
  }

  factory GetAiGatewayDynamicRoutingElementOutputs.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingElementOutputs(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
      fallback: pulumi.Input.fromValue(GetAiGatewayDynamicRoutingElementOutputsFallback.fromMap((map['fallback']! as Map).cast<String, dynamic>())),
      false_: pulumi.Input.fromValue(GetAiGatewayDynamicRoutingElementOutputsFalse.fromMap((map['false']! as Map).cast<String, dynamic>())),
      next: pulumi.Input.fromValue(GetAiGatewayDynamicRoutingElementOutputsNext.fromMap((map['next']! as Map).cast<String, dynamic>())),
      success: pulumi.Input.fromValue(GetAiGatewayDynamicRoutingElementOutputsSuccess.fromMap((map['success']! as Map).cast<String, dynamic>())),
      true_: pulumi.Input.fromValue(GetAiGatewayDynamicRoutingElementOutputsTrue.fromMap((map['true']! as Map).cast<String, dynamic>())),
    );
  }
}
