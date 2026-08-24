// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayDynamicRoutingElementOutputsSuccess {
  final pulumi.Input<String> elementId;

  /// Creates a new [GetAiGatewayDynamicRoutingElementOutputsSuccess].
  /// [elementId] Required.
  const GetAiGatewayDynamicRoutingElementOutputsSuccess({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory GetAiGatewayDynamicRoutingElementOutputsSuccess.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingElementOutputsSuccess(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
