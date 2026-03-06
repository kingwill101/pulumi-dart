// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_subscription_filter.dart';
import 'budget_subscription_notification.dart';
import 'budget_subscription_time_period.dart';

/// Input properties used for looking up and filtering BudgetSubscription resources.
class BudgetSubscriptionState {
  /// The total amount of cost to track with the budget.
  final pulumi.Input<double>? amount;
  /// (Optional) The ETag of the Subscription Consumption Budget.
  final pulumi.Input<String>? etag;
  /// A `filter` block as defined below.
  final pulumi.Input<BudgetSubscriptionFilter>? filter;
  /// The name which should be used for this Subscription Consumption Budget. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `notification` blocks as defined below.
  final pulumi.Input<List<BudgetSubscriptionNotification>>? notifications;
  /// The ID of the Subscription for which to create a Consumption Budget. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `subscription_id` property can accept a subscription ID e.g. `00000000-0000-0000-0000-000000000000` or the subscription resource ID e.g. `/subscriptions/00000000-0000-0000-0000-000000000000`. In version 3.0 this property will only accept the subscription resource ID.
  final pulumi.Input<String>? subscriptionId;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timeGrain;
  /// A `time_period` block as defined below.
  final pulumi.Input<BudgetSubscriptionTimePeriod>? timePeriod;

  /// Creates a new [BudgetSubscriptionState].
  /// [amount] The total amount of cost to track with the budget.
  /// [etag] (Optional) The ETag of the Subscription Consumption Budget.
  /// [filter] A `filter` block as defined below.
  /// [name] The name which should be used for this Subscription Consumption Budget. Changing this forces a new resource to be created.
  /// [notifications] One or more `notification` blocks as defined below.
  /// [subscriptionId] The ID of the Subscription for which to create a Consumption Budget. Changing this forces a new resource to be created.
  /// [timeGrain] The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  /// [timePeriod] A `time_period` block as defined below.
  const BudgetSubscriptionState({
    this.amount,
    this.etag,
    this.filter,
    this.name,
    this.notifications,
    this.subscriptionId,
    this.timeGrain,
    this.timePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'etag': ?etag,
      'filter': ?pulumi.Input.mapOptionalInputValue<BudgetSubscriptionFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<BudgetSubscriptionNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<BudgetSubscriptionNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriptionId': ?subscriptionId,
      'timeGrain': ?timeGrain,
      'timePeriod': ?pulumi.Input.mapOptionalInputValue<BudgetSubscriptionTimePeriod, Map<String, dynamic>>(timePeriod, (value) => value.toMap()),
    };
  }

  factory BudgetSubscriptionState.fromMap(Map<String, dynamic> map) {
    return BudgetSubscriptionState(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetSubscriptionFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetSubscriptionNotification>(guardedValue, (value) => BudgetSubscriptionNotification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeGrain: (() { final guardedValue = map['timeGrain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timePeriod: (() { final guardedValue = map['timePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetSubscriptionTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

