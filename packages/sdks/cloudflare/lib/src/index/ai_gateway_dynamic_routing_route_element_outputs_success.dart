// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingRouteElementOutputsSuccess {
  final pulumi.Input<String?>? elementId;

  /// Creates a new [AiGatewayDynamicRoutingRouteElementOutputsSuccess].
  /// [elementId] Optional.
  const AiGatewayDynamicRoutingRouteElementOutputsSuccess({
    this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': ?elementId,
    };
  }

  factory AiGatewayDynamicRoutingRouteElementOutputsSuccess.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingRouteElementOutputsSuccess(
      elementId: (() { final guardedValue = map['elementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
