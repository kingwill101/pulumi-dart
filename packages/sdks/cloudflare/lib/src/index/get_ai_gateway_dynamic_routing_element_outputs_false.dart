// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayDynamicRoutingElementOutputsFalse {
  final pulumi.Input<String> elementId;

  /// Creates a new [GetAiGatewayDynamicRoutingElementOutputsFalse].
  /// [elementId] Required.
  const GetAiGatewayDynamicRoutingElementOutputsFalse({
    required this.elementId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elementId': elementId,
    };
  }

  factory GetAiGatewayDynamicRoutingElementOutputsFalse.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayDynamicRoutingElementOutputsFalse(
      elementId: pulumi.Input.fromValue(map['elementId'] as String),
    );
  }
}
