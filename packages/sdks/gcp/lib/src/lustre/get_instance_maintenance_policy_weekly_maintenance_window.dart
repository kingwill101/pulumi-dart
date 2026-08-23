// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_maintenance_policy_weekly_maintenance_window_start_time.dart';

class GetInstanceMaintenancePolicyWeeklyMaintenanceWindow {
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
  /// types are google.type.Date and 'google.protobuf.Timestamp'.
  final pulumi.Input<List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime>> startTimes;

  /// Creates a new [GetInstanceMaintenancePolicyWeeklyMaintenanceWindow].
  /// [dayOfWeek] Possible values:
  /// [startTimes] Represents a time of day. The date and time zone are either not significant
  const GetInstanceMaintenancePolicyWeeklyMaintenanceWindow({
    required this.dayOfWeek,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'startTimes': pulumi.Input.mapInputValue<List<GetInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GetInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceMaintenancePolicyWeeklyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetInstanceMaintenancePolicyWeeklyMaintenanceWindow(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      startTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime>(map['startTimes']!, (value) => GetInstanceMaintenancePolicyWeeklyMaintenanceWindowStartTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
