// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_resource_group_filter.dart';
import 'budget_resource_group_notification.dart';
import 'budget_resource_group_time_period.dart';

/// {@template pulumi_consumption_budget_resource_group_budget_resource_group_args_doc}
/// The set of arguments for BudgetResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_consumption_budget_resource_group_budget_resource_group_args_doc}
class BudgetResourceGroupArgs {
  /// The total amount of cost to track with the budget.
  final pulumi.Input<double> amount;

  /// (Optional) The ETag of the Resource Group Consumption Budget
  final pulumi.Input<String>? etag;

  /// A `filter` block as defined below.
  final pulumi.Input<BudgetResourceGroupFilter>? filter;

  /// The name which should be used for this Resource Group Consumption Budget. Changing this forces a new Resource Group Consumption Budget to be created.
  final pulumi.Input<String>? name;

  /// One or more `notification` blocks as defined below.
  final pulumi.Input<List<BudgetResourceGroupNotification>> notifications;

  /// The ID of the Resource Group to create the consumption budget for in the form of /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1. Changing this forces a new Resource Group Consumption Budget to be created.
  final pulumi.Input<String> resourceGroupId;

  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timeGrain;

  /// A `time_period` block as defined below.
  final pulumi.Input<BudgetResourceGroupTimePeriod> timePeriod;

  /// Creates a new [BudgetResourceGroupArgs].
  /// [amount] The total amount of cost to track with the budget.
  /// [etag] (Optional) The ETag of the Resource Group Consumption Budget
  /// [filter] A `filter` block as defined below.
  /// [name] The name which should be used for this Resource Group Consumption Budget. Changing this forces a new Resource Group Consumption Budget to be created.
  /// [notifications] One or more `notification` blocks as defined below.
  /// [resourceGroupId] The ID of the Resource Group to create the consumption budget for in the form of /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1. Changing this forces a new Resource Group Consumption Budget to be created.
  /// [timeGrain] The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  /// [timePeriod] A `time_period` block as defined below.
  BudgetResourceGroupArgs({
    required this.amount,
    this.etag,
    this.filter,
    this.name,
    required this.notifications,
    required this.resourceGroupId,
    this.timeGrain,
    required this.timePeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'etag': ?etag,
      'filter':
          ?pulumi.Input.mapOptionalInputValue<
            BudgetResourceGroupFilter,
            Map<String, dynamic>
          >(filter, (value) => value.toMap()),
      'name': ?name,
      'notifications':
          pulumi.Input.mapInputValue<
            List<BudgetResourceGroupNotification>,
            List<Map<String, dynamic>>
          >(
            notifications,
            (value) =>
                pulumi.Input.encodeList<
                  BudgetResourceGroupNotification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceGroupId': resourceGroupId,
      'timeGrain': ?timeGrain,
      'timePeriod':
          pulumi.Input.mapInputValue<
            BudgetResourceGroupTimePeriod,
            Map<String, dynamic>
          >(timePeriod, (value) => value.toMap()),
    };
  }

  factory BudgetResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return BudgetResourceGroupArgs(
      amount: pulumi.Input.fromValue(map['amount'] as double),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BudgetResourceGroupFilter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notifications: pulumi.Input.fromValue(
        pulumi.Input.decodeList<BudgetResourceGroupNotification>(
          map['notifications']!,
          (value) => BudgetResourceGroupNotification.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      timeGrain: (() {
        final guardedValue = map['timeGrain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timePeriod: pulumi.Input.fromValue(
        BudgetResourceGroupTimePeriod.fromMap(
          (map['timePeriod']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
