// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDayResponseRedisV1beta1 {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final pulumi.Input<int> hours;

  /// Minutes of hour of day. Must be from 0 to 59.
  final pulumi.Input<int> minutes;

  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  final pulumi.Input<int> nanos;

  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  final pulumi.Input<int> seconds;

  /// Creates a new [TimeOfDayResponseRedisV1beta1].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  /// [minutes] Minutes of hour of day. Must be from 0 to 59.
  /// [nanos] Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  /// [seconds] Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  TimeOfDayResponseRedisV1beta1({
    required this.hours,
    required this.minutes,
    required this.nanos,
    required this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': hours,
      'minutes': minutes,
      'nanos': nanos,
      'seconds': seconds,
    };
  }

  factory TimeOfDayResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return TimeOfDayResponseRedisV1beta1(
      hours: pulumi.Input.fromValue(map['hours'] as int),
      minutes: pulumi.Input.fromValue(map['minutes'] as int),
      nanos: pulumi.Input.fromValue(map['nanos'] as int),
      seconds: pulumi.Input.fromValue(map['seconds'] as int),
    );
  }
}
