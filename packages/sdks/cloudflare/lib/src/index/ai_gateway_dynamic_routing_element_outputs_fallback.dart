// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingElementOutputsFallback {
  final pulumi.Input<String> elementId;

  /// Creates a new [AiGatewayDynamicRoutingElementOutputsFallback].
  /// [elementId] Required.
  const AiGatewayDynamicRoutingElementOutputsFallback({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory AiGatewayDynamicRoutingElementOutputsFallback.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingElementOutputsFallback(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
