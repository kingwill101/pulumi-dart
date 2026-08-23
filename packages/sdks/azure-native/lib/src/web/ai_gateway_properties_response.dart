// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an AI gateway.
class AiGatewayPropertiesResponse {
  /// The description of the resource.
  final pulumi.Input<String> aiGatewayId;

  /// Creates a new [AiGatewayPropertiesResponse].
  /// [aiGatewayId] The description of the resource.
  const AiGatewayPropertiesResponse({
    required this.aiGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aiGatewayId': aiGatewayId,
    };
  }

  factory AiGatewayPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AiGatewayPropertiesResponse(
      aiGatewayId: pulumi.Input.fromValue(map['aiGatewayId'] as String),
    );
  }
}
