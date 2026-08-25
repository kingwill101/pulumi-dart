// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_policy_daily_maintenance_window.dart';
import 'cluster_maintenance_policy_disruption_budget.dart';
import 'cluster_maintenance_policy_maintenance_exclusion.dart';
import 'cluster_maintenance_policy_recurring_maintenance_window.dart';
import 'cluster_maintenance_policy_recurring_window.dart';

class ClusterMaintenancePolicy {
  /// Time window specified for daily maintenance operations.
  /// Specify `startTime` in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "HH:MM”,
  /// where HH : \[00-23\] and MM : \[00-59\] GMT. For example:
  ///
  /// Examples:
  final pulumi.Input<ClusterMaintenancePolicyDailyMaintenanceWindow?>? dailyMaintenanceWindow;
  /// structure documented below
  ///
  /// In beta, one of `recurringWindow`, `recurringMaintenanceWindow` and `dailyMaintenanceWindow` is required if a `maintenancePolicy` block is supplied.
  final pulumi.Input<ClusterMaintenancePolicyDisruptionBudget?>? disruptionBudget;
  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows. A cluster can have up to 20 maintenance exclusions at a time [Maintenance Window and Exclusions](https://cloud.google.com/kubernetes-engine/docs/concepts/maintenance-windows-and-exclusions)
  final pulumi.Input<List<ClusterMaintenancePolicyMaintenanceExclusion>?>? maintenanceExclusions;
  /// Defines a recurring window for maintenance operations.
  final pulumi.Input<ClusterMaintenancePolicyRecurringMaintenanceWindow?>? recurringMaintenanceWindow;
  /// Time window for recurring maintenance operations.
  ///
  /// Specify `startTime` and `endTime` in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) "Zulu" date format.  The start time's date is
  /// the initial date that the window starts, and the end time is used for calculating duration.  Specify `recurrence` in
  /// [RFC5545](https://tools.ietf.org/html/rfc5545#section-3.8.5.3) RRULE format, to specify when this recurs.
  /// Note that GKE may accept other formats, but will return values in UTC, causing a permanent diff.
  ///
  /// Examples:
  /// ```
  /// maintenance_policy {
  /// recurring_window {
  /// start_time = "2019-08-01T02:00:00Z"
  /// end_time = "2019-08-01T06:00:00Z"
  /// recurrence = "FREQ=DAILY"
  /// }
  /// }
  /// ```
  ///
  /// ```
  /// maintenance_policy {
  /// recurring_window {
  /// start_time = "2019-01-01T09:00:00Z"
  /// end_time = "2019-01-01T17:00:00Z"
  /// recurrence = "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR"
  /// }
  /// }
  /// ```
  final pulumi.Input<ClusterMaintenancePolicyRecurringWindow?>? recurringWindow;

  /// Creates a new [ClusterMaintenancePolicy].
  /// [dailyMaintenanceWindow] Time window specified for daily maintenance operations.
  /// [disruptionBudget] structure documented below
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows. A cluster can have up to 20 maintenance exclusions at a time [Maintenance Window and Exclusions](https://cloud.google.com/kubernetes-engine/docs/concepts/maintenance-windows-and-exclusions)
  /// [recurringMaintenanceWindow] Defines a recurring window for maintenance operations.
  /// [recurringWindow] Time window for recurring maintenance operations.
  const ClusterMaintenancePolicy({
    this.dailyMaintenanceWindow,
    this.disruptionBudget,
    this.maintenanceExclusions,
    this.recurringMaintenanceWindow,
    this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicyDailyMaintenanceWindow, Map<String, dynamic>>(dailyMaintenanceWindow, (value) => value.toMap()),
      'disruptionBudget': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicyDisruptionBudget, Map<String, dynamic>>(disruptionBudget, (value) => value.toMap()),
      'maintenanceExclusions': ?pulumi.Input.mapOptionalInputValue<List<ClusterMaintenancePolicyMaintenanceExclusion>, List<Map<String, dynamic>>>(maintenanceExclusions, (value) => pulumi.Input.encodeList<ClusterMaintenancePolicyMaintenanceExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recurringMaintenanceWindow': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicyRecurringMaintenanceWindow, Map<String, dynamic>>(recurringMaintenanceWindow, (value) => value.toMap()),
      'recurringWindow': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicyRecurringWindow, Map<String, dynamic>>(recurringWindow, (value) => value.toMap()),
    };
  }

  factory ClusterMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicy(
      dailyMaintenanceWindow: (() { final guardedValue = map['dailyMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicyDailyMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disruptionBudget: (() { final guardedValue = map['disruptionBudget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicyDisruptionBudget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceExclusions: (() { final guardedValue = map['maintenanceExclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterMaintenancePolicyMaintenanceExclusion>(guardedValue, (value) => ClusterMaintenancePolicyMaintenanceExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recurringMaintenanceWindow: (() { final guardedValue = map['recurringMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicyRecurringMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recurringWindow: (() { final guardedValue = map['recurringWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicyRecurringWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
