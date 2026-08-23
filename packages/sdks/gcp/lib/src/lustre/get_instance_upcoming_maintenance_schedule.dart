// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceUpcomingMaintenanceSchedule {
  /// The scheduled end time for the maintenance.
  final pulumi.Input<String> endTime;
  /// The scheduled start time for the maintenance.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetInstanceUpcomingMaintenanceSchedule].
  /// [endTime] The scheduled end time for the maintenance.
  /// [startTime] The scheduled start time for the maintenance.
  const GetInstanceUpcomingMaintenanceSchedule({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': startTime,
    };
  }

  factory GetInstanceUpcomingMaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return GetInstanceUpcomingMaintenanceSchedule(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
