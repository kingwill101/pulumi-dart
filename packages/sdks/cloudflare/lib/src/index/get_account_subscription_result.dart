// ignore_for_file: unused_element, unnecessary_cast

import 'get_account_subscription_rate_plan.dart';

/// Result data returned by getAccountSubscription.
class GetAccountSubscriptionResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// The monetary unit in which pricing information is displayed.
  final String? currency;
  /// The end of the current period and also when the next billing is due.
  final String? currentPeriodEnd;
  /// When the current billing period started. May match initial*period*start if this is the first period.
  final String? currentPeriodStart;
  /// How often the subscription is renewed automatically.
  /// Available values: "weekly", "monthly", "quarterly", "yearly".
  final String? frequency;
  /// Subscription identifier tag.
  final String? id;
  /// The price of the subscription that will be billed, in US dollars.
  final double? price;
  /// The rate plan applied to the subscription.
  final GetAccountSubscriptionRatePlan? ratePlan;
  /// The state that the subscription is in.
  /// Available values: "Trial", "Provisioned", "Paid", "AwaitingPayment", "Cancelled", "Failed", "Expired".
  final String? state;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetAccountSubscriptionResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [currency] The monetary unit in which pricing information is displayed.
  /// [currentPeriodEnd] The end of the current period and also when the next billing is due.
  /// [currentPeriodStart] When the current billing period started. May match initial*period*start if this is the first period.
  /// [frequency] How often the subscription is renewed automatically.
  /// [id] Subscription identifier tag.
  /// [price] The price of the subscription that will be billed, in US dollars.
  /// [ratePlan] The rate plan applied to the subscription.
  /// [state] The state that the subscription is in.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetAccountSubscriptionResult({
    this.accountId,
    this.currency,
    this.currentPeriodEnd,
    this.currentPeriodStart,
    this.frequency,
    this.id,
    this.price,
    this.ratePlan,
    this.state,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'currency': ?currency,
      'currentPeriodEnd': ?currentPeriodEnd,
      'currentPeriodStart': ?currentPeriodStart,
      'frequency': ?frequency,
      'id': ?id,
      'price': ?price,
      'ratePlan': ?ratePlan?.toMap(),
      'state': ?state,
      'zoneId': ?zoneId,
    };
  }

  factory GetAccountSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetAccountSubscriptionResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentPeriodEnd: (() { final guardedValue = map['currentPeriodEnd']; if (guardedValue == null) return null; return guardedValue as String; })(),
      currentPeriodStart: (() { final guardedValue = map['currentPeriodStart']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      price: (() { final guardedValue = map['price']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      ratePlan: (() { final guardedValue = map['ratePlan']; if (guardedValue == null) return null; return GetAccountSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
