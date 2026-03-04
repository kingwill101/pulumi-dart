// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Published upcoming future maintenance schedule.
class MaintenanceSchedule {
  /// The scheduled end time for the maintenance.
  final pulumi.Input<String>? endTime;

  /// The scheduled start time for the maintenance.
  final pulumi.Input<String>? startTime;

  /// Creates a new [MaintenanceSchedule].
  /// [endTime] The scheduled end time for the maintenance.
  /// [startTime] The scheduled start time for the maintenance.
  MaintenanceSchedule({this.endTime, this.startTime});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endTime': ?endTime, 'startTime': ?startTime};
  }

  factory MaintenanceSchedule.fromMap(Map<String, dynamic> map) {
    return MaintenanceSchedule(
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
