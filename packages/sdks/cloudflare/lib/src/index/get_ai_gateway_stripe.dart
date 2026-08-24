// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateway_stripe_usage_event.dart';

class GetAiGatewayStripe {
  final pulumi.Input<String> authorization;
  final pulumi.Input<List<GetAiGatewayStripeUsageEvent>> usageEvents;

  /// Creates a new [GetAiGatewayStripe].
  /// [authorization] Required.
  /// [usageEvents] Required.
  const GetAiGatewayStripe({
    required this.authorization,
    required this.usageEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': authorization,
      'usageEvents': pulumi.Input.mapInputValue<List<GetAiGatewayStripeUsageEvent>, List<Map<String, dynamic>>>(usageEvents, (value) => pulumi.Input.encodeList<GetAiGatewayStripeUsageEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAiGatewayStripe.fromMap(Map<String, dynamic> map) {
    return GetAiGatewayStripe(
      authorization: pulumi.Input.fromValue(map['authorization'] as String),
      usageEvents: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiGatewayStripeUsageEvent>(map['usageEvents']!, (value) => GetAiGatewayStripeUsageEvent.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
