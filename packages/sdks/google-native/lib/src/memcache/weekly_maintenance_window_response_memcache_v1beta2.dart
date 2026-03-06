// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_of_day_response_memcache_v1beta2.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindowResponseMemcacheV1beta2 {
  /// Allows to define schedule that runs specified day of the week.
  final pulumi.Input<String> day;
  /// Duration of the time window.
  final pulumi.Input<String> duration;
  /// Start time of the window in UTC.
  final pulumi.Input<TimeOfDayResponseMemcacheV1beta2> startTime;

  /// Creates a new [WeeklyMaintenanceWindowResponseMemcacheV1beta2].
  /// [day] Allows to define schedule that runs specified day of the week.
  /// [duration] Duration of the time window.
  /// [startTime] Start time of the window in UTC.
  const WeeklyMaintenanceWindowResponseMemcacheV1beta2({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'duration': duration,
      'startTime': pulumi.Input.mapInputValue<TimeOfDayResponseMemcacheV1beta2, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory WeeklyMaintenanceWindowResponseMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowResponseMemcacheV1beta2(
      day: pulumi.Input.fromValue(map['day'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTime: pulumi.Input.fromValue(TimeOfDayResponseMemcacheV1beta2.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}

