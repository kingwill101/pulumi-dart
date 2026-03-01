// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_management_group_filter.dart';
import 'budget_management_group_notification.dart';
import 'budget_management_group_time_period.dart';

/// {@template pulumi_consumption_budget_management_group_budget_management_group_args_doc}
/// The set of arguments for BudgetManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_consumption_budget_management_group_budget_management_group_args_doc}
class BudgetManagementGroupArgs {
  /// The total amount of cost to track with the budget.
  final pulumi.Input<double> amount;
  /// (Optional) The ETag of the Management Group Consumption Budget.
  final pulumi.Input<String>? etag;
  /// A `filter` block as defined below.
  final pulumi.Input<BudgetManagementGroupFilter>? filter;
  /// The ID of the Management Group. Changing this forces a new resource to be created.
  final pulumi.Input<String> managementGroupId;
  /// The name which should be used for this Management Group Consumption Budget. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `notification` blocks as defined below.
  final pulumi.Input<List<BudgetManagementGroupNotification>> notifications;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? timeGrain;
  /// A `time_period` block as defined below.
  final pulumi.Input<BudgetManagementGroupTimePeriod> timePeriod;

  /// Creates a new [BudgetManagementGroupArgs].
  /// [amount] The total amount of cost to track with the budget.
  /// [etag] (Optional) The ETag of the Management Group Consumption Budget.
  /// [filter] A `filter` block as defined below.
  /// [managementGroupId] The ID of the Management Group. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Management Group Consumption Budget. Changing this forces a new resource to be created.
  /// [notifications] One or more `notification` blocks as defined below.
  /// [timeGrain] The time covered by a budget. Tracking of the amount will be reset based on the time grain. Must be one of `BillingAnnual`, `BillingMonth`, `BillingQuarter`, `Annually`, `Monthly` and `Quarterly`. Defaults to `Monthly`. Changing this forces a new resource to be created.
  /// [timePeriod] A `time_period` block as defined below.
  BudgetManagementGroupArgs({
    required pulumi.Output<double> amount,
    pulumi.Output<String>? etag,
    pulumi.Output<BudgetManagementGroupFilter>? filter,
    required pulumi.Output<String> managementGroupId,
    pulumi.Output<String>? name,
    required pulumi.Output<List<BudgetManagementGroupNotification>> notifications,
    pulumi.Output<String>? timeGrain,
    required pulumi.Output<BudgetManagementGroupTimePeriod> timePeriod,
  }) :
      amount = pulumi.Input.asInput<double>(amount),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      filter = pulumi.Input.asOptionalInput<BudgetManagementGroupFilter>(filter),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      notifications = pulumi.Input.asInput<List<BudgetManagementGroupNotification>>(notifications),
      timeGrain = pulumi.Input.asOptionalInput<String>(timeGrain),
      timePeriod = pulumi.Input.asInput<BudgetManagementGroupTimePeriod>(timePeriod);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'etag': ?etag,
      'filter': ?pulumi.Input.mapOptionalInputValue<BudgetManagementGroupFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'managementGroupId': managementGroupId,
      'name': ?name,
      'notifications': pulumi.Input.mapInputValue<List<BudgetManagementGroupNotification>, List<Map<String, dynamic>>>(notifications, (value) => pulumi.Input.encodeList<BudgetManagementGroupNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeGrain': ?timeGrain,
      'timePeriod': pulumi.Input.mapInputValue<BudgetManagementGroupTimePeriod, Map<String, dynamic>>(timePeriod, (value) => value.toMap()),
    };
  }

  factory BudgetManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return BudgetManagementGroupArgs(
      amount: pulumi.Output.create<double>(map['amount'] as double),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<BudgetManagementGroupFilter>(BudgetManagementGroupFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notifications: pulumi.Output.create<List<BudgetManagementGroupNotification>>(pulumi.Input.decodeList<BudgetManagementGroupNotification>(map['notifications'], (value) => BudgetManagementGroupNotification.fromMap((value as Map).cast<String, dynamic>()))),
      timeGrain: map['timeGrain'] == null ? null : pulumi.Output.create<String>(map['timeGrain'] as String),
      timePeriod: pulumi.Output.create<BudgetManagementGroupTimePeriod>(BudgetManagementGroupTimePeriod.fromMap((map['timePeriod'] as Map).cast<String, dynamic>())),
    );
  }
}

