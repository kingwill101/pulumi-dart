// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingRouteElementOutputsTrue {
  final pulumi.Input<String?>? elementId;

  /// Creates a new [AiGatewayDynamicRoutingRouteElementOutputsTrue].
  /// [elementId] Optional.
  const AiGatewayDynamicRoutingRouteElementOutputsTrue({
    this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': ?elementId,
    };
  }

  factory AiGatewayDynamicRoutingRouteElementOutputsTrue.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingRouteElementOutputsTrue(
      elementId: (() { final guardedValue = map['elementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
