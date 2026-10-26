// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SnoozeInterval {
  /// The end of the time interval.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String> endTime;
  /// The beginning of the time interval. The default value for the start time
  /// is the end time. The start time must not be later than the end time.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? startTime;

  /// Creates a new [SnoozeInterval].
  /// [endTime] The end of the time interval.
  /// [startTime] The beginning of the time interval. The default value for the start time
  const SnoozeInterval({
    required this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'startTime': ?startTime,
    };
  }

  factory SnoozeInterval.fromMap(Map<String, dynamic> map) {
    return SnoozeInterval(
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
