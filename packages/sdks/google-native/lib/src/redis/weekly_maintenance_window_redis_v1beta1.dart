// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_of_day_redis_v1beta1.dart';
import 'weekly_maintenance_window_day_redis_v1beta1.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindowRedisV1beta1 {
  /// The day of week that maintenance updates occur.
  final pulumi.Input<WeeklyMaintenanceWindowDayRedisV1beta1> day;
  /// Start time of the window in UTC time.
  final pulumi.Input<TimeOfDayRedisV1beta1> startTime;

  /// Creates a new [WeeklyMaintenanceWindowRedisV1beta1].
  /// [day] The day of week that maintenance updates occur.
  /// [startTime] Start time of the window in UTC time.
  const WeeklyMaintenanceWindowRedisV1beta1({
    required this.day,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': pulumi.Input.mapInputValue<WeeklyMaintenanceWindowDayRedisV1beta1, String>(day, (value) => value.wireValue),
      'startTime': pulumi.Input.mapInputValue<TimeOfDayRedisV1beta1, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory WeeklyMaintenanceWindowRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowRedisV1beta1(
      day: pulumi.Input.fromValue(WeeklyMaintenanceWindowDayRedisV1beta1.fromValue(map['day']! as String)),
      startTime: pulumi.Input.fromValue(TimeOfDayRedisV1beta1.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}

