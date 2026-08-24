// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingElementOutputsFalse {
  final pulumi.Input<String> elementId;

  /// Creates a new [AiGatewayDynamicRoutingElementOutputsFalse].
  /// [elementId] Required.
  const AiGatewayDynamicRoutingElementOutputsFalse({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory AiGatewayDynamicRoutingElementOutputsFalse.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingElementOutputsFalse(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
