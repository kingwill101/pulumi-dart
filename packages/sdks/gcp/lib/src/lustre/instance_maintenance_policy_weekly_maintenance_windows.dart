// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_maintenance_policy_weekly_maintenance_windows_start_time.dart';

class InstanceMaintenancePolicyWeeklyMaintenanceWindows {
  /// Possible values:
  /// MONDAY
  /// TUESDAY
  /// WEDNESDAY
  /// THURSDAY
  /// FRIDAY
  /// SATURDAY
  /// SUNDAY
  final pulumi.Input<String> dayOfWeek;
  /// Represents a time of day. The date and time zone are either not significant
  /// or are specified elsewhere. An API may choose to allow leap seconds. Related
  /// types are google.type.Date and `google.protobuf.Timestamp`.
  /// Structure is documented below.
  final pulumi.Input<InstanceMaintenancePolicyWeeklyMaintenanceWindowsStartTime> startTime;

  /// Creates a new [InstanceMaintenancePolicyWeeklyMaintenanceWindows].
  /// [dayOfWeek] Possible values:
  /// [startTime] Represents a time of day. The date and time zone are either not significant
  const InstanceMaintenancePolicyWeeklyMaintenanceWindows({
    required this.dayOfWeek,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'startTime': pulumi.Input.mapInputValue<InstanceMaintenancePolicyWeeklyMaintenanceWindowsStartTime, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory InstanceMaintenancePolicyWeeklyMaintenanceWindows.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenancePolicyWeeklyMaintenanceWindows(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      startTime: pulumi.Input.fromValue(InstanceMaintenancePolicyWeeklyMaintenanceWindowsStartTime.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}
