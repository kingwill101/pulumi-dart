// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMaintenancePolicyRecurringWindow {
  final pulumi.Input<String> endTime;
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
  final pulumi.Input<String> startTime;

  /// Creates a new [ClusterMaintenancePolicyRecurringWindow].
  /// [endTime] Required.
  /// [recurrence] Defines when the window recurs, using the [RFC5545](https://tools.ietf.org/html/rfc5545#section-3.8.5.3) RRULE format.
  /// [startTime] Required.
  const ClusterMaintenancePolicyRecurringWindow({
    required this.endTime,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'recurrence': recurrence,
      'startTime': startTime,
    };
  }

  factory ClusterMaintenancePolicyRecurringWindow.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyRecurringWindow(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      recurrence: pulumi.Input.fromValue(map['recurrence'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
