// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlConditionActiveTimeRange {
  /// The end time of the active time range.
  final pulumi.Input<String>? endTime;
  /// The start time of the active time range.
  final pulumi.Input<String>? startTime;

  /// Creates a new [ControlConditionActiveTimeRange].
  /// [endTime] The end time of the active time range.
  /// [startTime] The start time of the active time range.
  ControlConditionActiveTimeRange({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory ControlConditionActiveTimeRange.fromMap(Map<String, dynamic> map) {
    return ControlConditionActiveTimeRange(
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

