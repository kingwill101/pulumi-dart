// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_subscription_filter.dart';
import 'get_budget_subscription_notification.dart';
import 'get_budget_subscription_time_period.dart';

/// Result data returned by getBudgetSubscription.
class GetBudgetSubscriptionResult {
  /// The total amount of cost to track with the budget.
  final double? amount;
  /// A `filter` block as defined below.
  final List<GetBudgetSubscriptionFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The name of the tag to use for the filter.
  final String? name;
  /// A `notification` block as defined below.
  final List<GetBudgetSubscriptionNotification>? notifications;
  final String? subscriptionId;
  /// The time covered by a budget.
  final String? timeGrain;
  /// A `timePeriod` block as defined below.
  final List<GetBudgetSubscriptionTimePeriod>? timePeriods;

  /// Creates a new [GetBudgetSubscriptionResult].
  /// [amount] The total amount of cost to track with the budget.
  /// [filters] A `filter` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the tag to use for the filter.
  /// [notifications] A `notification` block as defined below.
  /// [subscriptionId] Optional.
  /// [timeGrain] The time covered by a budget.
  /// [timePeriods] A `timePeriod` block as defined below.
  const GetBudgetSubscriptionResult({
    this.amount,
    this.filters,
    this.id,
    this.name,
    this.notifications,
    this.subscriptionId,
    this.timeGrain,
    this.timePeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetSubscriptionFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'notifications': ?(() { final guardedValue = notifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetSubscriptionNotification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subscriptionId': ?subscriptionId,
      'timeGrain': ?timeGrain,
      'timePeriods': ?(() { final guardedValue = timePeriods; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetSubscriptionTimePeriod, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBudgetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionResult(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetSubscriptionFilter>(guardedValue, (value) => GetBudgetSubscriptionFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetSubscriptionNotification>(guardedValue, (value) => GetBudgetSubscriptionNotification.fromMap((value as Map).cast<String, dynamic>())); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeGrain: (() { final guardedValue = map['timeGrain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timePeriods: (() { final guardedValue = map['timePeriods']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetSubscriptionTimePeriod>(guardedValue, (value) => GetBudgetSubscriptionTimePeriod.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
