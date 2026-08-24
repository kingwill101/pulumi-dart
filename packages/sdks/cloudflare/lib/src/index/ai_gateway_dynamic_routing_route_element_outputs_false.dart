// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingRouteElementOutputsFalse {
  final pulumi.Input<String?>? elementId;

  /// Creates a new [AiGatewayDynamicRoutingRouteElementOutputsFalse].
  /// [elementId] Optional.
  const AiGatewayDynamicRoutingRouteElementOutputsFalse({
    this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': ?elementId,
    };
  }

  factory AiGatewayDynamicRoutingRouteElementOutputsFalse.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingRouteElementOutputsFalse(
      elementId: (() { final guardedValue = map['elementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
