// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterAutomatedBackupPolicyWeeklyScheduleStartTime {
  /// Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  final pulumi.Input<int>? hours;
  /// Minutes of hour of day. Currently, only the value 0 is supported.
  final pulumi.Input<int>? minutes;
  /// Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  final pulumi.Input<int>? nanos;
  /// Seconds of minutes of the time. Currently, only the value 0 is supported.
  final pulumi.Input<int>? seconds;

  /// Creates a new [ClusterAutomatedBackupPolicyWeeklyScheduleStartTime].
  /// [hours] Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  /// [minutes] Minutes of hour of day. Currently, only the value 0 is supported.
  /// [nanos] Fractions of seconds in nanoseconds. Currently, only the value 0 is supported.
  /// [seconds] Seconds of minutes of the time. Currently, only the value 0 is supported.
  ClusterAutomatedBackupPolicyWeeklyScheduleStartTime({
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

  factory ClusterAutomatedBackupPolicyWeeklyScheduleStartTime.fromMap(Map<String, dynamic> map) {
    return ClusterAutomatedBackupPolicyWeeklyScheduleStartTime(
      hours: map['hours'] == null ? null : (map['hours']! as int).input(),
      minutes: map['minutes'] == null ? null : (map['minutes']! as int).input(),
      nanos: map['nanos'] == null ? null : (map['nanos']! as int).input(),
      seconds: map['seconds'] == null ? null : (map['seconds']! as int).input(),
    );
  }
}

