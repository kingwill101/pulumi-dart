// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobScheduleStartTimeOfDay {
  /// Hours of day in 24 hour format. Should be from 0 to 23.
  final pulumi.Input<int> hours;
  /// Minutes of hour of day. Must be from 0 to 59.
  final pulumi.Input<int> minutes;
  /// Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  final pulumi.Input<int> nanos;
  /// Seconds of minutes of the time. Must normally be from 0 to 59.
  final pulumi.Input<int> seconds;

  /// Creates a new [TransferJobScheduleStartTimeOfDay].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23.
  /// [minutes] Minutes of hour of day. Must be from 0 to 59.
  /// [nanos] Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  /// [seconds] Seconds of minutes of the time. Must normally be from 0 to 59.
  const TransferJobScheduleStartTimeOfDay({
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

  factory TransferJobScheduleStartTimeOfDay.fromMap(Map<String, dynamic> map) {
    return TransferJobScheduleStartTimeOfDay(
      hours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['hours'])),
      minutes: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minutes'])),
      nanos: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['nanos'])),
      seconds: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['seconds'])),
    );
  }
}
