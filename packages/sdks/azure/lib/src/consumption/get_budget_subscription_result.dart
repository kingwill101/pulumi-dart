// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_subscription_filter.dart';
import 'get_budget_subscription_notification.dart';
import 'get_budget_subscription_time_period.dart';

/// Result data returned by getBudgetSubscription.
class GetBudgetSubscriptionResult {
  /// The total amount of cost to track with the budget.
  final double amount;
  /// A `filter` block as defined below.
  final List<GetBudgetSubscriptionFilter> filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the tag to use for the filter.
  final String name;
  /// A `notification` block as defined below.
  final List<GetBudgetSubscriptionNotification> notifications;
  final String subscriptionId;
  /// The time covered by a budget.
  final String timeGrain;
  /// A `time_period` block as defined below.
  final List<GetBudgetSubscriptionTimePeriod> timePeriods;

  /// Creates a new [GetBudgetSubscriptionResult].
  /// [amount] The total amount of cost to track with the budget.
  /// [filters] A `filter` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the tag to use for the filter.
  /// [notifications] A `notification` block as defined below.
  /// [subscriptionId] Required.
  /// [timeGrain] The time covered by a budget.
  /// [timePeriods] A `time_period` block as defined below.
  GetBudgetSubscriptionResult({
    required this.amount,
    required this.filters,
    required this.id,
    required this.name,
    required this.notifications,
    required this.subscriptionId,
    required this.timeGrain,
    required this.timePeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'filters': pulumi.Input.encodeList<GetBudgetSubscriptionFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'id': id,
      'name': name,
      'notifications': pulumi.Input.encodeList<GetBudgetSubscriptionNotification, Map<String, dynamic>>(notifications, (value) => value.toMap()),
      'subscriptionId': subscriptionId,
      'timeGrain': timeGrain,
      'timePeriods': pulumi.Input.encodeList<GetBudgetSubscriptionTimePeriod, Map<String, dynamic>>(timePeriods, (value) => value.toMap()),
    };
  }

  factory GetBudgetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionResult(
      amount: map['amount'] as double,
      filters: pulumi.Input.decodeList<GetBudgetSubscriptionFilter>(map['filters']!, (value) => GetBudgetSubscriptionFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      notifications: pulumi.Input.decodeList<GetBudgetSubscriptionNotification>(map['notifications']!, (value) => GetBudgetSubscriptionNotification.fromMap((value as Map).cast<String, dynamic>())),
      subscriptionId: map['subscriptionId'] as String,
      timeGrain: map['timeGrain'] as String,
      timePeriods: pulumi.Input.decodeList<GetBudgetSubscriptionTimePeriod>(map['timePeriods']!, (value) => GetBudgetSubscriptionTimePeriod.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

