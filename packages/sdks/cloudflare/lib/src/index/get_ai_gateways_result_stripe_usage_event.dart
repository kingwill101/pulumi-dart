// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAiGatewaysResultStripeUsageEvent {
  final pulumi.Input<String> payload;

  /// Creates a new [GetAiGatewaysResultStripeUsageEvent].
  /// [payload] Required.
  const GetAiGatewaysResultStripeUsageEvent({
    required this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payload': payload,
    };
  }

  factory GetAiGatewaysResultStripeUsageEvent.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysResultStripeUsageEvent(
      payload: pulumi.Input.fromValue(map['payload'] as String),
    );
  }
}
