// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.
class Interval {
  /// Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will have to be before the end.
  final pulumi.Input<String>? endTime;
  /// Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will have to be the same or after the start.
  final pulumi.Input<String>? startTime;

  /// Creates a new [Interval].
  /// [endTime] Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will have to be before the end.
  /// [startTime] Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will have to be the same or after the start.
  const Interval({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory Interval.fromMap(Map<String, dynamic> map) {
    return Interval(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
