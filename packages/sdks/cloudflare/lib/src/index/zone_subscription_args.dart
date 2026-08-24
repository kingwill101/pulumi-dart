// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_subscription_rate_plan.dart';

/// {@template pulumi_index_zone_subscription_zone_subscription_args_doc}
/// The set of arguments for ZoneSubscription.
/// {@endtemplate}
/// {@macro pulumi_index_zone_subscription_zone_subscription_args_doc}
class ZoneSubscriptionArgs {
  /// How often the subscription is renewed automatically.
  /// Available values: "weekly", "monthly", "quarterly", "yearly".
  /// Note: Some plans may not support frequency configuration and will return "not-applicable".
  final pulumi.Input<String?>? frequency;
  /// The rate plan applied to the subscription.
  final pulumi.Input<ZoneSubscriptionRatePlan?>? ratePlan;
  /// Identifier
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneSubscriptionArgs].
  /// [frequency] How often the subscription is renewed automatically.
  /// [ratePlan] The rate plan applied to the subscription.
  /// [zoneId] Identifier
  const ZoneSubscriptionArgs({
    this.frequency,
    this.ratePlan,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequency': ?frequency,
      'ratePlan': ?pulumi.Input.mapOptionalInputValue<ZoneSubscriptionRatePlan, Map<String, dynamic>>(ratePlan, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory ZoneSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return ZoneSubscriptionArgs(
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ratePlan: (() { final guardedValue = map['ratePlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
