// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingElementOutputsTrue {
  final pulumi.Input<String> elementId;

  /// Creates a new [AiGatewayDynamicRoutingElementOutputsTrue].
  /// [elementId] Required.
  const AiGatewayDynamicRoutingElementOutputsTrue({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory AiGatewayDynamicRoutingElementOutputsTrue.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingElementOutputsTrue(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
