// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_resource_group_filter.dart';
import 'get_budget_resource_group_notification.dart';
import 'get_budget_resource_group_time_period.dart';

/// Result data returned by getBudgetResourceGroup.
class GetBudgetResourceGroupResult {
  /// The total amount of cost to track with the budget.
  final double? amount;
  /// A `filter` block as defined below.
  final List<GetBudgetResourceGroupFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The name of the tag used for the filter.
  final String? name;
  /// A `notification` block as defined below.
  final List<GetBudgetResourceGroupNotification>? notifications;
  final String? resourceGroupId;
  /// The time covered by a budget.
  final String? timeGrain;
  /// A `timePeriod` block as defined below.
  final List<GetBudgetResourceGroupTimePeriod>? timePeriods;

  /// Creates a new [GetBudgetResourceGroupResult].
  /// [amount] The total amount of cost to track with the budget.
  /// [filters] A `filter` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the tag used for the filter.
  /// [notifications] A `notification` block as defined below.
  /// [resourceGroupId] Optional.
  /// [timeGrain] The time covered by a budget.
  /// [timePeriods] A `timePeriod` block as defined below.
  const GetBudgetResourceGroupResult({
    this.amount,
    this.filters,
    this.id,
    this.name,
    this.notifications,
    this.resourceGroupId,
    this.timeGrain,
    this.timePeriods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetResourceGroupFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'notifications': ?(() { final guardedValue = notifications; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetResourceGroupNotification, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupId': ?resourceGroupId,
      'timeGrain': ?timeGrain,
      'timePeriods': ?(() { final guardedValue = timePeriods; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBudgetResourceGroupTimePeriod, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBudgetResourceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetBudgetResourceGroupResult(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetResourceGroupFilter>(guardedValue, (value) => GetBudgetResourceGroupFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetResourceGroupNotification>(guardedValue, (value) => GetBudgetResourceGroupNotification.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeGrain: (() { final guardedValue = map['timeGrain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timePeriods: (() { final guardedValue = map['timePeriods']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBudgetResourceGroupTimePeriod>(guardedValue, (value) => GetBudgetResourceGroupTimePeriod.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
