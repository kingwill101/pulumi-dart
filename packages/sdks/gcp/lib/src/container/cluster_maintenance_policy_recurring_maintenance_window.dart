// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_maintenance_policy_recurring_maintenance_window_delay_until.dart';
import 'cluster_maintenance_policy_recurring_maintenance_window_window_start_time.dart';

class ClusterMaintenancePolicyRecurringMaintenanceWindow {
  /// Specifies the initial date when the recurring window can start.
  final pulumi.Input<ClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil?>? delayUntil;
  /// Defines when the window recurs, using the [RFC5545](https://tools.ietf.org/html/rfc5545#section-3.8.5.3) RRULE format.
  ///
  /// Examples:
  /// ```
  /// maintenance_policy {
  /// recurring_maintenance_window {
  /// delay_until {
  /// day   = 1
  /// month = 8
  /// year  = 2019
  /// }
  /// window_start_time {
  /// hours   = 2
  /// minutes = 0
  /// seconds = 0
  /// }
  /// window_duration = "4h"
  /// recurrence      = "FREQ=DAILY"
  /// }
  /// }
  /// ```
  ///
  /// ```
  /// maintenance_policy {
  /// recurring_maintenance_window {
  /// delay_until {
  /// day   = 1
  /// month = 1
  /// year  = 2019
  /// }
  /// window_start_time {
  /// hours   = 9
  /// minutes = 0
  /// seconds = 0
  /// }
  /// window_duration = "8h"
  /// recurrence      = "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR"
  /// }
  /// }
  /// ```
  final pulumi.Input<String> recurrence;
  /// The length of each maintenance window instance. Specified as a sequence of decimal numbers, each with an optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`, and `"2h45m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  final pulumi.Input<String> windowDuration;
  /// The time of day when each maintenance window instance begins.
  final pulumi.Input<ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime> windowStartTime;

  /// Creates a new [ClusterMaintenancePolicyRecurringMaintenanceWindow].
  /// [delayUntil] Specifies the initial date when the recurring window can start.
  /// [recurrence] Defines when the window recurs, using the [RFC5545](https://tools.ietf.org/html/rfc5545#section-3.8.5.3) RRULE format.
  /// [windowDuration] The length of each maintenance window instance. Specified as a sequence of decimal numbers, each with an optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`, and `"2h45m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  /// [windowStartTime] The time of day when each maintenance window instance begins.
  const ClusterMaintenancePolicyRecurringMaintenanceWindow({
    this.delayUntil,
    required this.recurrence,
    required this.windowDuration,
    required this.windowStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delayUntil': ?pulumi.Input.mapOptionalInputValue<ClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil, Map<String, dynamic>>(delayUntil, (value) => value.toMap()),
      'recurrence': recurrence,
      'windowDuration': windowDuration,
      'windowStartTime': pulumi.Input.mapInputValue<ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime, Map<String, dynamic>>(windowStartTime, (value) => value.toMap()),
    };
  }

  factory ClusterMaintenancePolicyRecurringMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyRecurringMaintenanceWindow(
      delayUntil: (() { final guardedValue = map['delayUntil']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterMaintenancePolicyRecurringMaintenanceWindowDelayUntil.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recurrence: pulumi.Input.fromValue(map['recurrence'] as String),
      windowDuration: pulumi.Input.fromValue(map['windowDuration'] as String),
      windowStartTime: pulumi.Input.fromValue(ClusterMaintenancePolicyRecurringMaintenanceWindowWindowStartTime.fromMap((map['windowStartTime']! as Map).cast<String, dynamic>())),
    );
  }
}
