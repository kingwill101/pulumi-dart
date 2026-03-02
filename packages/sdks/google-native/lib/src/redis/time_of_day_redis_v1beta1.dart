// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.
class TimeOfDayRedisV1beta1 {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final pulumi.Input<int>? hours;
  /// Minutes of hour of day. Must be from 0 to 59.
  final pulumi.Input<int>? minutes;
  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  final pulumi.Input<int>? nanos;
  /// Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  final pulumi.Input<int>? seconds;

  /// Creates a new [TimeOfDayRedisV1beta1].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  /// [minutes] Minutes of hour of day. Must be from 0 to 59.
  /// [nanos] Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  /// [seconds] Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  TimeOfDayRedisV1beta1({
    this.hours,
    this.minutes,
    this.nanos,
    this.seconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hours': ?hours,
      'minutes': ?minutes,
      'nanos': ?nanos,
      'seconds': ?seconds,
    };
  }

  factory TimeOfDayRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return TimeOfDayRedisV1beta1(
      hours: map['hours'] == null ? null : (map['hours'] as int).input(),
      minutes: map['minutes'] == null ? null : (map['minutes'] as int).input(),
      nanos: map['nanos'] == null ? null : (map['nanos'] as int).input(),
      seconds: map['seconds'] == null ? null : (map['seconds'] as int).input(),
    );
  }
}

