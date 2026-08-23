// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_of_day_memcache_v1beta2.dart';
import 'weekly_maintenance_window_day_memcache_v1beta2.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindowMemcacheV1beta2 {
  /// Allows to define schedule that runs specified day of the week.
  final pulumi.Input<WeeklyMaintenanceWindowDayMemcacheV1beta2> day;
  /// Duration of the time window.
  final pulumi.Input<String> duration;
  /// Start time of the window in UTC.
  final pulumi.Input<TimeOfDayMemcacheV1beta2> startTime;

  /// Creates a new [WeeklyMaintenanceWindowMemcacheV1beta2].
  /// [day] Allows to define schedule that runs specified day of the week.
  /// [duration] Duration of the time window.
  /// [startTime] Start time of the window in UTC.
  const WeeklyMaintenanceWindowMemcacheV1beta2({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': pulumi.Input.mapInputValue<WeeklyMaintenanceWindowDayMemcacheV1beta2, String>(day, (value) => value.wireValue),
      'duration': duration,
      'startTime': pulumi.Input.mapInputValue<TimeOfDayMemcacheV1beta2, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory WeeklyMaintenanceWindowMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowMemcacheV1beta2(
      day: pulumi.Input.fromValue(WeeklyMaintenanceWindowDayMemcacheV1beta2.fromValue(map['day']! as String)),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTime: pulumi.Input.fromValue(TimeOfDayMemcacheV1beta2.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}
