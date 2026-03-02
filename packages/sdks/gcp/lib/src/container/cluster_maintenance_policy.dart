// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_policy_daily_maintenance_window.dart';
import 'cluster_maintenance_policy_maintenance_exclusion.dart';
import 'cluster_maintenance_policy_recurring_window.dart';

class ClusterMaintenancePolicy {
  /// Time window specified for daily maintenance operations.
  /// Specify `start_time` in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "HH:MM”,
  /// where HH : \[00-23\] and MM : \[00-59\] GMT. For example:
  ///
  /// Examples:
  final pulumi.Input<ClusterMaintenancePolicyDailyMaintenanceWindow>? dailyMaintenanceWindow;
  /// Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows. A cluster can have up to 20 maintenance exclusions at a time [Maintenance Window and Exclusions](https://cloud.google.com/kubernetes-engine/docs/concepts/maintenance-windows-and-exclusions)
  final pulumi.Input<List<ClusterMaintenancePolicyMaintenanceExclusion>>? maintenanceExclusions;
  /// Time window for recurring maintenance operations.
  ///
  /// Specify `start_time` and `end_time` in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) "Zulu" date format.  The start time's date is
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
  final pulumi.Input<ClusterMaintenancePolicyRecurringWindow>? recurringWindow;

  /// Creates a new [ClusterMaintenancePolicy].
  /// [dailyMaintenanceWindow] Time window specified for daily maintenance operations.
  /// [maintenanceExclusions] Exceptions to maintenance window. Non-emergency maintenance should not occur in these windows. A cluster can have up to 20 maintenance exclusions at a time [Maintenance Window and Exclusions](https://cloud.google.com/kubernetes-engine/docs/concepts/maintenance-windows-and-exclusions)
  /// [recurringWindow] Time window for recurring maintenance operations.
  ClusterMaintenancePolicy({
    this.dailyMaintenanceWindow,
    this.maintenanceExclusions,
    this.recurringWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailyMaintenanceWindow': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicyDailyMaintenanceWindow, Map<String, dynamic>>(dailyMaintenanceWindow, (value) => value.toMap()),
      'maintenanceExclusions': ?pulumi.Input.mapOptionalInputValue<List<ClusterMaintenancePolicyMaintenanceExclusion>, List<Map<String, dynamic>>>(maintenanceExclusions, (value) => pulumi.Input.encodeList<ClusterMaintenancePolicyMaintenanceExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recurringWindow': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicyRecurringWindow, Map<String, dynamic>>(recurringWindow, (value) => value.toMap()),
    };
  }

  factory ClusterMaintenancePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicy(
      dailyMaintenanceWindow: map['dailyMaintenanceWindow'] == null ? null : (ClusterMaintenancePolicyDailyMaintenanceWindow.fromMap((map['dailyMaintenanceWindow']! as Map).cast<String, dynamic>())).input(),
      maintenanceExclusions: map['maintenanceExclusions'] == null ? null : (pulumi.Input.decodeList<ClusterMaintenancePolicyMaintenanceExclusion>(map['maintenanceExclusions']!, (value) => ClusterMaintenancePolicyMaintenanceExclusion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      recurringWindow: map['recurringWindow'] == null ? null : (ClusterMaintenancePolicyRecurringWindow.fromMap((map['recurringWindow']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

