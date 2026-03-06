// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule info describing when the server should be started or stopped.
class ScheduleItemResponse {
  /// Start day.
  final pulumi.Input<String> startDay;
  /// Start time.
  final pulumi.Input<String> startTime;
  /// Stop day.
  final pulumi.Input<String> stopDay;
  /// Stop time.
  final pulumi.Input<String> stopTime;

  /// Creates a new [ScheduleItemResponse].
  /// [startDay] Start day.
  /// [startTime] Start time.
  /// [stopDay] Stop day.
  /// [stopTime] Stop time.
  const ScheduleItemResponse({
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

  factory ScheduleItemResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleItemResponse(
      startDay: pulumi.Input.fromValue(map['startDay'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      stopDay: pulumi.Input.fromValue(map['stopDay'] as String),
      stopTime: pulumi.Input.fromValue(map['stopTime'] as String),
    );
  }
}

