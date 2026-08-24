// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayDynamicRoutingElementOutputsFallback {
  final pulumi.Input<String> elementId;

  /// Creates a new [GetAiGatewayDynamicRoutingElementOutputsFallback].
  /// [elementId] Required.
  const GetAiGatewayDynamicRoutingElementOutputsFallback({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory GetAiGatewayDynamicRoutingElementOutputsFallback.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingElementOutputsFallback(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
