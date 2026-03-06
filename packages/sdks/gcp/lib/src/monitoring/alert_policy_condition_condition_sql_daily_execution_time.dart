// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConditionConditionSqlDailyExecutionTime {
  /// Hours of a day in 24 hour format. Must be greater than or equal
  /// to 0 and typically must be less than or equal to 23. An API may
  /// choose to allow the value "24:00:00" for scenarios like business
  /// closing time.
  final pulumi.Input<int>? hours;
  /// Minutes of an hour. Must be greater than or equal to 0 and
  /// less than or equal to 59.
  final pulumi.Input<int>? minutes;
  /// Fractions of seconds, in nanoseconds. Must be greater than or
  /// equal to 0 and less than or equal to 999,999,999.
  final pulumi.Input<int>? nanos;
  /// Seconds of a minute. Must be greater than or equal to 0 and
  /// typically must be less than or equal to 59. An API may allow the
  /// value 60 if it allows leap-seconds.
  final pulumi.Input<int>? seconds;

  /// Creates a new [AlertPolicyConditionConditionSqlDailyExecutionTime].
  /// [hours] Hours of a day in 24 hour format. Must be greater than or equal
  /// [minutes] Minutes of an hour. Must be greater than or equal to 0 and
  /// [nanos] Fractions of seconds, in nanoseconds. Must be greater than or
  /// [seconds] Seconds of a minute. Must be greater than or equal to 0 and
  const AlertPolicyConditionConditionSqlDailyExecutionTime({
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

  factory AlertPolicyConditionConditionSqlDailyExecutionTime.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlDailyExecutionTime(
      hours: (() { final guardedValue = map['hours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      seconds: (() { final guardedValue = map['seconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

