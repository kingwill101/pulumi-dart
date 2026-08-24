// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayDynamicRoutingElementOutputsNext {
  final pulumi.Input<String> elementId;

  /// Creates a new [GetAiGatewayDynamicRoutingElementOutputsNext].
  /// [elementId] Required.
  const GetAiGatewayDynamicRoutingElementOutputsNext({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory GetAiGatewayDynamicRoutingElementOutputsNext.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingElementOutputsNext(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
