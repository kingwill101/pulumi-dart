// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewayStripeUsageEvent {
  final pulumi.Input<String> payload;

  /// Creates a new [GetAiGatewayStripeUsageEvent].
  /// [payload] Required.
  const GetAiGatewayStripeUsageEvent({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
    };
  }

  factory GetAiGatewayStripeUsageEvent.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayStripeUsageEvent(
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
