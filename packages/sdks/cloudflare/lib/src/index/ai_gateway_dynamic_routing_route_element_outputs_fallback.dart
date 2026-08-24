// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingRouteElementOutputsFallback {
  final pulumi.Input<String?>? elementId;

  /// Creates a new [AiGatewayDynamicRoutingRouteElementOutputsFallback].
  /// [elementId] Optional.
  const AiGatewayDynamicRoutingRouteElementOutputsFallback({
    this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': ?elementId,
    };
  }

  factory AiGatewayDynamicRoutingRouteElementOutputsFallback.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingRouteElementOutputsFallback(
      elementId: (() { final guardedValue = map['elementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
