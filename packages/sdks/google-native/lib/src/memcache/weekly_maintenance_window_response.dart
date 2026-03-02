// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_of_day_response.dart';

/// Time window specified for weekly operations.
class WeeklyMaintenanceWindowResponse {
  /// Allows to define schedule that runs specified day of the week.
  final pulumi.Input<String> day;
  /// Duration of the time window.
  final pulumi.Input<String> duration;
  /// Start time of the window in UTC.
  final pulumi.Input<TimeOfDayResponse> startTime;

  /// Creates a new [WeeklyMaintenanceWindowResponse].
  /// [day] Allows to define schedule that runs specified day of the week.
  /// [duration] Duration of the time window.
  /// [startTime] Start time of the window in UTC.
  WeeklyMaintenanceWindowResponse({
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
      day: (map['day'] as String).input(),
      duration: (map['duration'] as String).input(),
      startTime: (TimeOfDayResponse.fromMap((map['startTime'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

