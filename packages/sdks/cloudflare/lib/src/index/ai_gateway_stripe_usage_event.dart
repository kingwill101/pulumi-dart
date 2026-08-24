// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiGatewayStripeUsageEvent {
  final pulumi.Input<String> payload;

  /// Creates a new [AiGatewayStripeUsageEvent].
  /// [payload] Required.
  const AiGatewayStripeUsageEvent({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
    };
  }

  factory AiGatewayStripeUsageEvent.fromMap(Map<String, dynamic> map) {
    return AiGatewayStripeUsageEvent(
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
