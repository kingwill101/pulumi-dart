// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayDynamicRoutingElementOutputsSuccess {
  final pulumi.Input<String> elementId;

  /// Creates a new [AiGatewayDynamicRoutingElementOutputsSuccess].
  /// [elementId] Required.
  const AiGatewayDynamicRoutingElementOutputsSuccess({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory AiGatewayDynamicRoutingElementOutputsSuccess.fromMap(Map<String, dynamic> map) {
    return AiGatewayDynamicRoutingElementOutputsSuccess(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
