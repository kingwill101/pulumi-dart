// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy_weekly_maintenance_window_start_time.dart';

class InstanceMaintenancePolicyWeeklyMaintenanceWindow {
  /// Required. The day of week that maintenance updates occur.
  /// - DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.
  /// - MONDAY: Monday
  /// - TUESDAY: Tuesday
  /// - WEDNESDAY: Wednesday
  /// - THURSDAY: Thursday
  /// - FRIDAY: Friday
  /// - SATURDAY: Saturday
  /// - SUNDAY: Sunday
  /// Possible values are: `DAY_OF_WEEK_UNSPECIFIED`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final pulumi.Input<String> day;
  /// (Output)
  /// Output only. Duration of the maintenance window.
  /// The current window is fixed at 1 hour.
  /// A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s".
  final pulumi.Input<String?>? duration;
  /// Required. Start time of the window in UTC time.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime> startTime;

  /// Creates a new [InstanceMaintenancePolicyWeeklyMaintenanceWindow].
  /// [day] Required. The day of week that maintenance updates occur.
  /// [duration] (Output)
  /// [startTime] Required. Start time of the window in UTC time.
  const InstanceMaintenancePolicyWeeklyMaintenanceWindow({
    required this.day,
    this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'duration': ?duration,
      'startTime': pulumi.Input.mapInputValue<InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenancePolicyWeeklyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicyWeeklyMaintenanceWindow(
      day: pulumi.Input.fromValue(map['day'] as String),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: pulumi.Input.fromValue(InstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}
