// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceUpcomingMaintenanceSchedule {
  /// (Output)
  /// The scheduled end time for the maintenance.
  final pulumi.Input<String?>? endTime;
  /// (Output)
  /// The scheduled start time for the maintenance.
  final pulumi.Input<String?>? startTime;

  /// Creates a new [InstanceUpcomingMaintenanceSchedule].
  /// [endTime] (Output)
  /// [startTime] (Output)
  const InstanceUpcomingMaintenanceSchedule({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory InstanceUpcomingMaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return InstanceUpcomingMaintenanceSchedule(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
