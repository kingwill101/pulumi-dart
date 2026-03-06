// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_of_day_response.dart';

/// Time window in which disruptive maintenance updates occur. Non-disruptive updates can occur inside or outside this window.
class WeeklyMaintenanceWindowResponse {
  /// The day of week that maintenance updates occur.
  final pulumi.Input<String> day;
  /// Duration of the maintenance window. The current window is fixed at 1 hour.
  final pulumi.Input<String> duration;
  /// Start time of the window in UTC time.
  final pulumi.Input<TimeOfDayResponse> startTime;

  /// Creates a new [WeeklyMaintenanceWindowResponse].
  /// [day] The day of week that maintenance updates occur.
  /// [duration] Duration of the maintenance window. The current window is fixed at 1 hour.
  /// [startTime] Start time of the window in UTC time.
  const WeeklyMaintenanceWindowResponse({
    required this.day,
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'duration': duration,
      'startTime': pulumi.Input.mapInputValue<TimeOfDayResponse, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory WeeklyMaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return WeeklyMaintenanceWindowResponse(
      day: pulumi.Input.fromValue(map['day'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      startTime: pulumi.Input.fromValue(TimeOfDayResponse.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}

