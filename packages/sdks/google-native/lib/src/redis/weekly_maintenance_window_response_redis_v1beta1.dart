// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_of_day_response_redis_v1beta1.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindowResponseRedisV1beta1 {
  /// The day of week that maintenance updates occur.
  final pulumi.Input<String> day;

  /// Duration of the maintenance window. The current window is fixed at 1 hour.
  final pulumi.Input<String> duration;

  /// Start time of the window in UTC time.
  final pulumi.Input<TimeOfDayResponseRedisV1beta1> startTime;

  /// Creates a new [WeeklyMaintenanceWindowResponseRedisV1beta1].
  /// [day] The day of week that maintenance updates occur.
  /// [duration] Duration of the maintenance window. The current window is fixed at 1 hour.
  /// [startTime] Start time of the window in UTC time.
  WeeklyMaintenanceWindowResponseRedisV1beta1({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'duration': duration,
      'startTime':
          pulumi.Input.mapInputValue<
            TimeOfDayResponseRedisV1beta1,
            Map<String, dynamic>
          >(startTime, (value) => value.toMap()),
    };
  }

  factory WeeklyMaintenanceWindowResponseRedisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return WeeklyMaintenanceWindowResponseRedisV1beta1(
      day: pulumi.Input.fromValue(map['day'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTime: pulumi.Input.fromValue(
        TimeOfDayResponseRedisV1beta1.fromMap(
          (map['startTime']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
