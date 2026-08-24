// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_dynamic_routing_route_element_outputs_fallback.dart';
import 'ai_gateway_dynamic_routing_route_element_outputs_false.dart';
import 'ai_gateway_dynamic_routing_route_element_outputs_next.dart';
import 'ai_gateway_dynamic_routing_route_element_outputs_success.dart';
import 'ai_gateway_dynamic_routing_route_element_outputs_true.dart';

class AiGatewayDynamicRoutingRouteElementOutputs {
  final pulumi.Input<String?>? elementId;
  final pulumi.Input<AiGatewayDynamicRoutingRouteElementOutputsFallback?>? fallback;
  final pulumi.Input<AiGatewayDynamicRoutingRouteElementOutputsFalse?>? false_;
  final pulumi.Input<AiGatewayDynamicRoutingRouteElementOutputsNext?>? next;
  final pulumi.Input<AiGatewayDynamicRoutingRouteElementOutputsSuccess?>? success;
  final pulumi.Input<AiGatewayDynamicRoutingRouteElementOutputsTrue?>? true_;

  /// Creates a new [AiGatewayDynamicRoutingRouteElementOutputs].
  /// [elementId] Optional.
  /// [fallback] Optional.
  /// [false_] Optional.
  /// [next] Optional.
  /// [success] Optional.
  /// [true_] Optional.
  const AiGatewayDynamicRoutingRouteElementOutputs({
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
      'fallback': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRouteElementOutputsFallback, Map<String, dynamic>>(fallback, (value) => value.toMap()),
      'false': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRouteElementOutputsFalse, Map<String, dynamic>>(false_, (value) => value.toMap()),
      'next': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRouteElementOutputsNext, Map<String, dynamic>>(next, (value) => value.toMap()),
      'success': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRouteElementOutputsSuccess, Map<String, dynamic>>(success, (value) => value.toMap()),
      'true': ?pulumi.Input.mapOptionalInputValue<AiGatewayDynamicRoutingRouteElementOutputsTrue, Map<String, dynamic>>(true_, (value) => value.toMap()),
    };
  }

  factory AiGatewayDynamicRoutingRouteElementOutputs.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingRouteElementOutputs(
      elementId: (() { final guardedValue = map['elementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fallback: (() { final guardedValue = map['fallback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRouteElementOutputsFallback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      false_: (() { final guardedValue = map['false']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRouteElementOutputsFalse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      next: (() { final guardedValue = map['next']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRouteElementOutputsNext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      success: (() { final guardedValue = map['success']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRouteElementOutputsSuccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      true_: (() { final guardedValue = map['true']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiGatewayDynamicRoutingRouteElementOutputsTrue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
