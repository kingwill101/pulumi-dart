// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_subscription_rate_plan.dart';

/// Input properties used for looking up and filtering AccountSubscription resources.
class AccountSubscriptionState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The monetary unit in which pricing information is displayed.
  final pulumi.Input<String?>? currency;
  /// The end of the current period and also when the next billing is due.
  final pulumi.Input<String?>? currentPeriodEnd;
  /// When the current billing period started. May match initial*period*start if this is the first period.
  final pulumi.Input<String?>? currentPeriodStart;
  /// How often the subscription is renewed automatically.
  /// Available values: "weekly", "monthly", "quarterly", "yearly".
  final pulumi.Input<String?>? frequency;
  /// The price of the subscription that will be billed, in US dollars.
  final pulumi.Input<double?>? price;
  /// The rate plan applied to the subscription.
  final pulumi.Input<AccountSubscriptionRatePlan?>? ratePlan;
  /// The state that the subscription is in.
  /// Available values: "Trial", "Provisioned", "Paid", "AwaitingPayment", "Cancelled", "Failed", "Expired".
  final pulumi.Input<String?>? state;

  /// Creates a new [AccountSubscriptionState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [currency] The monetary unit in which pricing information is displayed.
  /// [currentPeriodEnd] The end of the current period and also when the next billing is due.
  /// [currentPeriodStart] When the current billing period started. May match initial*period*start if this is the first period.
  /// [frequency] How often the subscription is renewed automatically.
  /// [price] The price of the subscription that will be billed, in US dollars.
  /// [ratePlan] The rate plan applied to the subscription.
  /// [state] The state that the subscription is in.
  const AccountSubscriptionState({
    this.accountId,
    this.currency,
    this.currentPeriodEnd,
    this.currentPeriodStart,
    this.frequency,
    this.price,
    this.ratePlan,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'currency': ?currency,
      'currentPeriodEnd': ?currentPeriodEnd,
      'currentPeriodStart': ?currentPeriodStart,
      'frequency': ?frequency,
      'price': ?price,
      'ratePlan': ?pulumi.Input.mapOptionalInputValue<AccountSubscriptionRatePlan, Map<String, dynamic>>(ratePlan, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory AccountSubscriptionState.fromMap(Map<String, dynamic> map) {
    return AccountSubscriptionState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currency: (() { final guardedValue = map['currency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentPeriodEnd: (() { final guardedValue = map['currentPeriodEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      currentPeriodStart: (() { final guardedValue = map['currentPeriodStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      price: (() { final guardedValue = map['price']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      ratePlan: (() { final guardedValue = map['ratePlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSubscriptionRatePlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
