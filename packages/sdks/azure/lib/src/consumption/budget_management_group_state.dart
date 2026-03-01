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
    pulumi.Output<double>? amount,
    pulumi.Output<String>? etag,
    pulumi.Output<BudgetManagementGroupFilter>? filter,
    pulumi.Output<String>? managementGroupId,
    pulumi.Output<String>? name,
    pulumi.Output<List<BudgetManagementGroupNotification>>? notifications,
    pulumi.Output<String>? timeGrain,
    pulumi.Output<BudgetManagementGroupTimePeriod>? timePeriod,
  }) :
      amount = pulumi.Input.asOptionalInput<double>(amount),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      filter = pulumi.Input.asOptionalInput<BudgetManagementGroupFilter>(filter),
      managementGroupId = pulumi.Input.asOptionalInput<String>(managementGroupId),
      name = pulumi.Input.asOptionalInput<String>(name),
      notifications = pulumi.Input.asOptionalInput<List<BudgetManagementGroupNotification>>(notifications),
      timeGrain = pulumi.Input.asOptionalInput<String>(timeGrain),
      timePeriod = pulumi.Input.asOptionalInput<BudgetManagementGroupTimePeriod>(timePeriod);

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
      amount: map['amount'] == null ? null : pulumi.Output.create<double>(map['amount'] as double),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<BudgetManagementGroupFilter>(BudgetManagementGroupFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      managementGroupId: map['managementGroupId'] == null ? null : pulumi.Output.create<String>(map['managementGroupId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notifications: map['notifications'] == null ? null : pulumi.Output.create<List<BudgetManagementGroupNotification>>(pulumi.Input.decodeList<BudgetManagementGroupNotification>(map['notifications'], (value) => BudgetManagementGroupNotification.fromMap((value as Map).cast<String, dynamic>()))),
      timeGrain: map['timeGrain'] == null ? null : pulumi.Output.create<String>(map['timeGrain'] as String),
      timePeriod: map['timePeriod'] == null ? null : pulumi.Output.create<BudgetManagementGroupTimePeriod>(BudgetManagementGroupTimePeriod.fromMap((map['timePeriod'] as Map).cast<String, dynamic>())),
    );
  }
}

