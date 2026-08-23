// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy_maintenance_window_recurring_time_window_window.dart';

class InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindow {
  /// An RRULE with format RFC-5545 for how this window reccurs. They go on for the span of time between the start and end time. The only supported FREQ value is "WEEKLY". To have something repeat every weekday, use: "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR".
  final pulumi.Input<String> recurrence;
  /// The window representing the start and end time of recurrences. This field ignores the date components of the provided timestamps. Only the time of day and duration between start and end time are relevant.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindowWindow> window;

  /// Creates a new [InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindow].
  /// [recurrence] An RRULE with format RFC-5545 for how this window reccurs. They go on for the span of time between the start and end time. The only supported FREQ value is "WEEKLY". To have something repeat every weekday, use: "FREQ=WEEKLY;BYDAY=MO,TU,WE,TH,FR".
  /// [window] The window representing the start and end time of recurrences. This field ignores the date components of the provided timestamps. Only the time of day and duration between start and end time are relevant.
  const InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindow({
    required this.recurrence,
    required this.window,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurrence': recurrence,
      'window': pulumi.Input.mapInputValue<InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindowWindow, Map<String, dynamic>>(window, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindow.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindow(
      recurrence: pulumi.Input.fromValue(map['recurrence'] as String),
      window: pulumi.Input.fromValue(InstanceMaintenancePolicyMaintenanceWindowRecurringTimeWindowWindow.fromMap((map['window']! as Map).cast<String, dynamic>())),
    );
  }
}
