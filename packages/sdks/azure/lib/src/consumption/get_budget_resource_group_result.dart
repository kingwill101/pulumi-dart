// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_resource_group_filter.dart';
import 'get_budget_resource_group_notification.dart';
import 'get_budget_resource_group_time_period.dart';

/// Result data returned by getBudgetResourceGroup.
class GetBudgetResourceGroupResult {
  /// The total amount of cost to track with the budget.
  final double amount;
  /// A `filter` block as defined below.
  final List<GetBudgetResourceGroupFilter> filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the tag used for the filter.
  final String name;
  /// A `notification` block as defined below.
  final List<GetBudgetResourceGroupNotification> notifications;
  final String resourceGroupId;
  /// The time covered by a budget.
  final String timeGrain;
  /// A `time_period` block as defined below.
  final List<GetBudgetResourceGroupTimePeriod> timePeriods;

  /// Creates a new [GetBudgetResourceGroupResult].
  /// [amount] The total amount of cost to track with the budget.
  /// [filters] A `filter` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the tag used for the filter.
  /// [notifications] A `notification` block as defined below.
  /// [resourceGroupId] Required.
  /// [timeGrain] The time covered by a budget.
  /// [timePeriods] A `time_period` block as defined below.
  GetBudgetResourceGroupResult({
    required this.amount,
    required this.filters,
    required this.id,
    required this.name,
    required this.notifications,
    required this.resourceGroupId,
    required this.timeGrain,
    required this.timePeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'filters': pulumi.Input.encodeList<GetBudgetResourceGroupFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'id': id,
      'name': name,
      'notifications': pulumi.Input.encodeList<GetBudgetResourceGroupNotification, Map<String, dynamic>>(notifications, (value) => value.toMap()),
      'resourceGroupId': resourceGroupId,
      'timeGrain': timeGrain,
      'timePeriods': pulumi.Input.encodeList<GetBudgetResourceGroupTimePeriod, Map<String, dynamic>>(timePeriods, (value) => value.toMap()),
    };
  }

  factory GetBudgetResourceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetResourceGroupResult(
      amount: map['amount'] as double,
      filters: pulumi.Input.decodeList<GetBudgetResourceGroupFilter>(map['filters']!, (value) => GetBudgetResourceGroupFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      notifications: pulumi.Input.decodeList<GetBudgetResourceGroupNotification>(map['notifications']!, (value) => GetBudgetResourceGroupNotification.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] as String,
      timeGrain: map['timeGrain'] as String,
      timePeriods: pulumi.Input.decodeList<GetBudgetResourceGroupTimePeriod>(map['timePeriods']!, (value) => GetBudgetResourceGroupTimePeriod.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

