// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_management_group_filter.dart';
import 'budget_management_group_notification.dart';
import 'budget_management_group_time_period.dart';

/// Input properties used for looking up and filtering BudgetManagementGroup resources.
class BudgetManagementGroupState {
  /// The total amount of cost to track with the budget.
  final pulumi.Input<double>? amount;
  /// (Optional) The ETag of the Management Group Consumption Budget.
  final pulumi.Input<String>? etag;
  /// A `filter` block as defined below.
  final pulumi.Input<BudgetManagementGroupFilter>? filter;
  /// The ID of the Management Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managementGroupId;
  /// The name which should be used for this Management Group Consumption Budget. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `notification` blocks as defined below.
  final pulumi.Input<List<BudgetManagementGroupNotification>>? notifications;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timeGrain;
  /// A `time_period` block as defined below.
  final pulumi.Input<BudgetManagementGroupTimePeriod>? timePeriod;

  /// Creates a new [BudgetManagementGroupState].
  /// [amount] The total amount of cost to track with the budget.
  /// [etag] (Optional) The ETag of the Management Group Consumption Budget.
  /// [filter] A `filter` block as defined below.
  /// [managementGroupId] The ID of the Management Group. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Management Group Consumption Budget. Changing this forces a new resource to be created.
  /// [notifications] One or more `notification` blocks as defined below.
  /// [timeGrain] The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  /// [timePeriod] A `time_period` block as defined below.
  BudgetManagementGroupState({
    this.amount,
    this.etag,
    this.filter,
    this.managementGroupId,
    this.name,
    this.notifications,
    this.timeGrain,
    this.timePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'etag': ?etag,
      'filter': ?pulumi.Input.mapOptionalInputValue<BudgetManagementGroupFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'managementGroupId': ?managementGroupId,
      'name': ?name,
      'notifications': ?pulumi.Input.mapOptionalInputValue<List<BudgetManagementGroupNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<BudgetManagementGroupNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeGrain': ?timeGrain,
      'timePeriod': ?pulumi.Input.mapOptionalInputValue<BudgetManagementGroupTimePeriod, Map<String, dynamic>>(timePeriod, (value) => value.toMap()),
    };
  }

  factory BudgetManagementGroupState.fromMap(Map<String, dynamic> map) {
    return BudgetManagementGroupState(
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetManagementGroupFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managementGroupId: (() { final guardedValue = map['managementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notifications: (() { final guardedValue = map['notifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BudgetManagementGroupNotification>(guardedValue, (value) => BudgetManagementGroupNotification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeGrain: (() { final guardedValue = map['timeGrain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timePeriod: (() { final guardedValue = map['timePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetManagementGroupTimePeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

