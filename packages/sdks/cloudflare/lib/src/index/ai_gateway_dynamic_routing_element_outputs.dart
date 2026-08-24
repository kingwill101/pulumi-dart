// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dynamic_routing_element_outputs_fallback.dart';
import 'ai_gateway_dynamic_routing_element_outputs_false.dart';
import 'ai_gateway_dynamic_routing_element_outputs_next.dart';
import 'ai_gateway_dynamic_routing_element_outputs_success.dart';
import 'ai_gateway_dynamic_routing_element_outputs_true.dart';

class AiGatewayDynamicRoutingElementOutputs {
  final pulumi.Input<String?>? elementId;
  final pulumi.Input<AiGatewayDynamicRoutingElementOutputsFallback?>? fallback;
  final pulumi.Input<AiGatewayDynamicRoutingElementOutputsFalse?>? false_;
  final pulumi.Input<AiGatewayDynamicRoutingElementOutputsNext?>? next;
  final pulumi.Input<AiGatewayDynamicRoutingElementOutputsSuccess?>? success;
  final pulumi.Input<AiGatewayDynamicRoutingElementOutputsTrue?>? true_;

  /// Creates a new [AiGatewayDynamicRoutingElementOutputs].
  /// [elementId] Optional.
  /// [fallback] Optional.
  /// [false_] Optional.
  /// [next] Optional.
  /// [success] Optional.
  /// [true_] Optional.
  const AiGatewayDynamicRoutingElementOutputs({
    this.elementId,
    this.fallback,
    this.false_,
    this.next,
    this.success,
    this.true_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': ?elementId,
      'fallback': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingElementOutputsFallback, Map<String, dynamic>>(fallback, (value) => value.toMap()),
      'false': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingElementOutputsFalse, Map<String, dynamic>>(false_, (value) => value.toMap()),
      'next': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingElementOutputsNext, Map<String, dynamic>>(next, (value) => value.toMap()),
      'success': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingElementOutputsSuccess, Map<String, dynamic>>(success, (value) => value.toMap()),
      'true': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingElementOutputsTrue, Map<String, dynamic>>(true_, (value) => value.toMap()),
    };
  }

  factory AiGatewayDynamicRoutingElementOutputs.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingElementOutputs(
      elementId: (() { final guardedValue = map['elementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallback: (() { final guardedValue = map['fallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingElementOutputsFallback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      false_: (() { final guardedValue = map['false']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingElementOutputsFalse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      next: (() { final guardedValue = map['next']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingElementOutputsNext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      success: (() { final guardedValue = map['success']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingElementOutputsSuccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      true_: (() { final guardedValue = map['true']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingElementOutputsTrue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
