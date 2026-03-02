// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schedule info describing when the server should be started or stopped.
class ScheduleItem {
  /// Start day.
  final pulumi.Input<String> startDay;
  /// Start time.
  final pulumi.Input<String> startTime;
  /// Stop day.
  final pulumi.Input<String> stopDay;
  /// Stop time.
  final pulumi.Input<String> stopTime;

  /// Creates a new [ScheduleItem].
  /// [startDay] Start day.
  /// [startTime] Start time.
  /// [stopDay] Stop day.
  /// [stopTime] Stop time.
  ScheduleItem({
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

  factory ScheduleItem.fromMap(Map<String, dynamic> map) {
    return ScheduleItem(
      startDay: (map['startDay'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      stopDay: (map['stopDay'] as String).input(),
      stopTime: (map['stopTime'] as String).input(),
    );
  }
}

