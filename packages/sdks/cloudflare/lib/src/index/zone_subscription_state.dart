// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_subscription_rate_plan.dart';

/// Input properties used for looking up and filtering ZoneSubscription resources.
class ZoneSubscriptionState {
  /// The monetary unit in which pricing information is displayed.
  final pulumi.Input<String?>? currency;
  /// The end of the current period and also when the next billing is due.
  final pulumi.Input<String?>? currentPeriodEnd;
  /// When the current billing period started. May match initial*period*start if this is the first period.
  final pulumi.Input<String?>? currentPeriodStart;
  /// How often the subscription is renewed automatically.
  /// Available values: "weekly", "monthly", "quarterly", "yearly".
  /// Note: Some plans may not support frequency configuration and will return "not-applicable".
  final pulumi.Input<String?>? frequency;
  /// The price of the subscription that will be billed, in US dollars.
  final pulumi.Input<double?>? price;
  /// The rate plan applied to the subscription.
  final pulumi.Input<ZoneSubscriptionRatePlan?>? ratePlan;
  /// The state that the subscription is in.
  /// Available values: "Trial", "Provisioned", "Paid", "AwaitingPayment", "Cancelled", "Failed", "Expired".
  final pulumi.Input<String?>? state;
  /// Identifier
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [ZoneSubscriptionState].
  /// [currency] The monetary unit in which pricing information is displayed.
  /// [currentPeriodEnd] The end of the current period and also when the next billing is due.
  /// [currentPeriodStart] When the current billing period started. May match initial*period*start if this is the first period.
  /// [frequency] How often the subscription is renewed automatically.
  /// [price] The price of the subscription that will be billed, in US dollars.
  /// [ratePlan] The rate plan applied to the subscription.
  /// [state] The state that the subscription is in.
  /// [zoneId] Identifier
  const ZoneSubscriptionState({
    this.currency,
    this.currentPeriodEnd,
    this.currentPeriodStart,
    this.frequency,
    this.price,
    this.ratePlan,
    this.state,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currency': ?currency,
      'currentPeriodEnd': ?currentPeriodEnd,
      'currentPeriodStart': ?currentPeriodStart,
      'frequency': ?frequency,
      'price': ?price,
      'ratePlan': ?pulumi.Input.mapOptionalInputValue<ZoneSubscriptionRatePlan, Map<String, dynamic>>(ratePlan, (value) => value.toMap()),
      'state': ?state,
      'zoneId': ?zoneId,
    };
  }

  factory ZoneSubscriptionState.fromMap(Map<String, dynamic> map) {
    return ZoneSubscriptionState(
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentPeriodEnd: (() { final guardedValue = map['currentPeriodEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentPeriodStart: (() { final guardedValue = map['currentPeriodStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      price: (() { final guardedValue = map['price']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      ratePlan: (() { final guardedValue = map['ratePlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
