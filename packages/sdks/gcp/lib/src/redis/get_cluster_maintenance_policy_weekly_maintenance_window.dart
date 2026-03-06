// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_maintenance_policy_weekly_maintenance_window_start_time.dart';

class GetClusterMaintenancePolicyWeeklyMaintenanceWindow {
  /// Required. The day of week that maintenance updates occur.
  ///
  /// - DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.
  /// - MONDAY: Monday
  /// - TUESDAY: Tuesday
  /// - WEDNESDAY: Wednesday
  /// - THURSDAY: Thursday
  /// - FRIDAY: Friday
  /// - SATURDAY: Saturday
  /// - SUNDAY: Sunday Possible values: ["DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
  final pulumi.Input<String> day;
  /// Output only. Duration of the maintenance window.
  /// The current window is fixed at 1 hour.
  /// A duration in seconds with up to nine fractional digits,
  /// terminated by 's'. Example: "3.5s".
  final pulumi.Input<String> duration;
  /// Required. Start time of the window in UTC time.
  final pulumi.Input<List<GetClusterMaintenancePolicyWeeklyMaintenanceWindowStartTime>> startTimes;

  /// Creates a new [GetClusterMaintenancePolicyWeeklyMaintenanceWindow].
  /// [day] Required. The day of week that maintenance updates occur.
  /// [duration] Output only. Duration of the maintenance window.
  /// [startTimes] Required. Start time of the window in UTC time.
  const GetClusterMaintenancePolicyWeeklyMaintenanceWindow({
    required this.day,
    required this.duration,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'duration': duration,
      'startTimes': pulumi.Input.mapInputValue<List<GetClusterMaintenancePolicyWeeklyMaintenanceWindowStartTime>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GetClusterMaintenancePolicyWeeklyMaintenanceWindowStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterMaintenancePolicyWeeklyMaintenanceWindow.fromMap(Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyWeeklyMaintenanceWindow(
      day: pulumi.Input.fromValue(map['day'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterMaintenancePolicyWeeklyMaintenanceWindowStartTime>(map['startTimes']!, (value) => GetClusterMaintenancePolicyWeeklyMaintenanceWindowStartTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

