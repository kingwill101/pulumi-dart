// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedInstanceStartStopScheduleSchedule {
  /// Start day of the schedule. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  final pulumi.Input<String> startDay;
  /// Start time of the schedule in 24-hour format (e.g., `08:00`).
  final pulumi.Input<String> startTime;
  /// Stop day of the schedule. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  final pulumi.Input<String> stopDay;
  /// Stop time of the schedule in 24-hour format (e.g., `17:00`).
  final pulumi.Input<String> stopTime;

  /// Creates a new [ManagedInstanceStartStopScheduleSchedule].
  /// [startDay] Start day of the schedule. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  /// [startTime] Start time of the schedule in 24-hour format (e.g., `08:00`).
  /// [stopDay] Stop day of the schedule. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  /// [stopTime] Stop time of the schedule in 24-hour format (e.g., `17:00`).
  ManagedInstanceStartStopScheduleSchedule({
    required this.startDay,
    required this.startTime,
    required this.stopDay,
    required this.stopTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startDay': startDay,
      'startTime': startTime,
      'stopDay': stopDay,
      'stopTime': stopTime,
    };
  }

  factory ManagedInstanceStartStopScheduleSchedule.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceStartStopScheduleSchedule(
      startDay: (map['startDay'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      stopDay: (map['stopDay'] as String).input(),
      stopTime: (map['stopTime'] as String).input(),
    );
  }
}

