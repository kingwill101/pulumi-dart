// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'time_of_day_response.dart';

/// Specifies the recurring maintenance window.
class MaintenanceWindowResponse {
  /// Day of the week for this MaintenanceWindow (in UTC).
  final pulumi.Input<String> dayOfWeek;
  /// Time in UTC when the period starts. Maintenance will be scheduled within 60 minutes.
  final pulumi.Input<TimeOfDayResponse> startTime;

  /// Creates a new [MaintenanceWindowResponse].
  /// [dayOfWeek] Day of the week for this MaintenanceWindow (in UTC).
  /// [startTime] Time in UTC when the period starts. Maintenance will be scheduled within 60 minutes.
  MaintenanceWindowResponse({
    required this.dayOfWeek,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
      'startTime': pulumi.Input.mapInputValue<TimeOfDayResponse, Map<String, dynamic>>(startTime, (value) => value.toMap()),
    };
  }

  factory MaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowResponse(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
      startTime: pulumi.Input.fromValue(TimeOfDayResponse.fromMap((map['startTime']! as Map).cast<String, dynamic>())),
    );
  }
}

