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
  const ControlConditionActiveTimeRange({
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
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

