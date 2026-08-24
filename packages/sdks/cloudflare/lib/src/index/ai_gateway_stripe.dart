// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_gateway_stripe_usage_event.dart';

class AiGatewayStripe {
  final pulumi.Input<String> authorization;
  final pulumi.Input<List<AiGatewayStripeUsageEvent>> usageEvents;

  /// Creates a new [AiGatewayStripe].
  /// [authorization] Required.
  /// [usageEvents] Required.
  const AiGatewayStripe({
    required this.authorization,
    required this.usageEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': authorization,
      'usageEvents': pulumi.Input.mapInputValue<List<AiGatewayStripeUsageEvent>, List<Map<String, dynamic>>>(usageEvents, (value) => pulumi.Input.encodeList<AiGatewayStripeUsageEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiGatewayStripe.fromMap(Map<String, dynamic> map) {
    return AiGatewayStripe(
      authorization: pulumi.Input.fromValue(map['authorization'] as String),
      usageEvents: pulumi.Input.fromValue(pulumi.Input.decodeList<AiGatewayStripeUsageEvent>(map['usageEvents']!, (value) => AiGatewayStripeUsageEvent.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
