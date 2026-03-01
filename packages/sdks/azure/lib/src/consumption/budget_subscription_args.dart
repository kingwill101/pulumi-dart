// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_subscription_filter.dart';
import 'budget_subscription_notification.dart';
import 'budget_subscription_time_period.dart';

/// {@template pulumi_consumption_budget_subscription_budget_subscription_args_doc}
/// The set of arguments for BudgetSubscription.
/// {@endtemplate}
/// {@macro pulumi_consumption_budget_subscription_budget_subscription_args_doc}
class BudgetSubscriptionArgs {
  /// The total amount of cost to track with the budget.
  final pulumi.Input<double> amount;
  /// (Optional) The ETag of the Subscription Consumption Budget.
  final pulumi.Input<String>? etag;
  /// A `filter` block as defined below.
  final pulumi.Input<BudgetSubscriptionFilter>? filter;
  /// The name which should be used for this Subscription Consumption Budget. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `notification` blocks as defined below.
  final pulumi.Input<List<BudgetSubscriptionNotification>> notifications;
  /// The ID of the Subscription for which to create a Consumption Budget. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The `subscription_id` property can accept a subscription ID e.g. `00000000-0000-0000-0000-000000000000` or the subscription resource ID e.g. `/subscriptions/00000000-0000-0000-0000-000000000000`. In version 3.0 this property will only accept the subscription resource ID.
  final pulumi.Input<String> subscriptionId;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timeGrain;
  /// A `time_period` block as defined below.
  final pulumi.Input<BudgetSubscriptionTimePeriod> timePeriod;

  /// Creates a new [BudgetSubscriptionArgs].
  /// [amount] The total amount of cost to track with the budget.
  /// [etag] (Optional) The ETag of the Subscription Consumption Budget.
  /// [filter] A `filter` block as defined below.
  /// [name] The name which should be used for this Subscription Consumption Budget. Changing this forces a new resource to be created.
  /// [notifications] One or more `notification` blocks as defined below.
  /// [subscriptionId] The ID of the Subscription for which to create a Consumption Budget. Changing this forces a new resource to be created.
  /// [timeGrain] The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  /// [timePeriod] A `time_period` block as defined below.
  BudgetSubscriptionArgs({
    required pulumi.Output<double> amount,
    pulumi.Output<String>? etag,
    pulumi.Output<BudgetSubscriptionFilter>? filter,
    pulumi.Output<String>? name,
    required pulumi.Output<List<BudgetSubscriptionNotification>> notifications,
    required pulumi.Output<String> subscriptionId,
    pulumi.Output<String>? timeGrain,
    required pulumi.Output<BudgetSubscriptionTimePeriod> timePeriod,
  }) :
      amount = pulumi.Input.asInput<double>(amount),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      filter = pulumi.Input.asOptionalInput<BudgetSubscriptionFilter>(filter),
      name = pulumi.Input.asOptionalInput<String>(name),
      notifications = pulumi.Input.asInput<List<BudgetSubscriptionNotification>>(notifications),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId),
      timeGrain = pulumi.Input.asOptionalInput<String>(timeGrain),
      timePeriod = pulumi.Input.asInput<BudgetSubscriptionTimePeriod>(timePeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'etag': ?etag,
      'filter': ?pulumi.Input.mapOptionalInputValue<BudgetSubscriptionFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'notifications': pulumi.Input.mapInputValue<List<BudgetSubscriptionNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<BudgetSubscriptionNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subscriptionId': subscriptionId,
      'timeGrain': ?timeGrain,
      'timePeriod': pulumi.Input.mapInputValue<BudgetSubscriptionTimePeriod, Map<String, dynamic>>(timePeriod, (value) => value.toMap()),
    };
  }

  factory BudgetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return BudgetSubscriptionArgs(
      amount: pulumi.Output.create<double>(map['amount'] as double),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<BudgetSubscriptionFilter>(BudgetSubscriptionFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notifications: pulumi.Output.create<List<BudgetSubscriptionNotification>>(pulumi.Input.decodeList<BudgetSubscriptionNotification>(map['notifications'], (value) => BudgetSubscriptionNotification.fromMap((value as Map).cast<String, dynamic>()))),
      subscriptionId: pulumi.Output.create<String>(map['subscriptionId'] as String),
      timeGrain: map['timeGrain'] == null ? null : pulumi.Output.create<String>(map['timeGrain'] as String),
      timePeriod: pulumi.Output.create<BudgetSubscriptionTimePeriod>(BudgetSubscriptionTimePeriod.fromMap((map['timePeriod'] as Map).cast<String, dynamic>())),
    );
  }
}

