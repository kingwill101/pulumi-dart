// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayDynamicRoutingElementOutputsTrue {
  final pulumi.Input<String> elementId;

  /// Creates a new [GetAiGatewayDynamicRoutingElementOutputsTrue].
  /// [elementId] Required.
  const GetAiGatewayDynamicRoutingElementOutputsTrue({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory GetAiGatewayDynamicRoutingElementOutputsTrue.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingElementOutputsTrue(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
