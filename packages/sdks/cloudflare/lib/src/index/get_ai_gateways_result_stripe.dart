// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_gateways_result_stripe_usage_event.dart';

class GetAiGatewaysResultStripe {
  final pulumi.Input<String> authorization;
  final pulumi.Input<List<GetAiGatewaysResultStripeUsageEvent>> usageEvents;

  /// Creates a new [GetAiGatewaysResultStripe].
  /// [authorization] Required.
  /// [usageEvents] Required.
  const GetAiGatewaysResultStripe({
    required this.authorization,
    required this.usageEvents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': authorization,
      'usageEvents': pulumi.Input.mapInputValue<List<GetAiGatewaysResultStripeUsageEvent>, List<Map<String, dynamic>>>(usageEvents, (value) => pulumi.Input.encodeList<GetAiGatewaysResultStripeUsageEvent, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAiGatewaysResultStripe.fromMap(Map<String, dynamic> map) {
    return GetAiGatewaysResultStripe(
      authorization: pulumi.Input.fromValue(map['authorization'] as String),
      usageEvents: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAiGatewaysResultStripeUsageEvent>(map['usageEvents']!, (value) => GetAiGatewaysResultStripeUsageEvent.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
