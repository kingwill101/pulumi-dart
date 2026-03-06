// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Published upcoming future maintenance schedule.
class MaintenanceScheduleResponse {
  /// The scheduled end time for the maintenance.
  final pulumi.Input<String> endTime;
  /// The scheduled start time for the maintenance.
  final pulumi.Input<String> startTime;

  /// Creates a new [MaintenanceScheduleResponse].
  /// [endTime] The scheduled end time for the maintenance.
  /// [startTime] The scheduled start time for the maintenance.
  const MaintenanceScheduleResponse({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory MaintenanceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceScheduleResponse(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

