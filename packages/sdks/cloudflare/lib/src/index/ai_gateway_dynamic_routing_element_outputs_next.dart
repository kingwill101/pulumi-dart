// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingElementOutputsNext {
  final pulumi.Input<String> elementId;

  /// Creates a new [AiGatewayDynamicRoutingElementOutputsNext].
  /// [elementId] Required.
  const AiGatewayDynamicRoutingElementOutputsNext({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory AiGatewayDynamicRoutingElementOutputsNext.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingElementOutputsNext(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
