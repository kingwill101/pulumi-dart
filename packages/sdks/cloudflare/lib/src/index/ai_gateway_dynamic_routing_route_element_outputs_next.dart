// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingRouteElementOutputsNext {
  final pulumi.Input<String?>? elementId;

  /// Creates a new [AiGatewayDynamicRoutingRouteElementOutputsNext].
  /// [elementId] Optional.
  const AiGatewayDynamicRoutingRouteElementOutputsNext({
    this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': ?elementId,
    };
  }

  factory AiGatewayDynamicRoutingRouteElementOutputsNext.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingRouteElementOutputsNext(
      elementId: (() { final guardedValue = map['elementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
