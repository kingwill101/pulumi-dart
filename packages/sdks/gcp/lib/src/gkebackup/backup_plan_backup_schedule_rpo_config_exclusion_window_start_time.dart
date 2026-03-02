// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime {
  /// Hours of day in 24 hour format.
  final pulumi.Input<int>? hours;
  /// Minutes of hour of day.
  final pulumi.Input<int>? minutes;
  /// Fractions of seconds in nanoseconds.
  final pulumi.Input<int>? nanos;
  /// Seconds of minutes of the time.
  final pulumi.Input<int>? seconds;

  /// Creates a new [BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime].
  /// [hours] Hours of day in 24 hour format.
  /// [minutes] Minutes of hour of day.
  /// [nanos] Fractions of seconds in nanoseconds.
  /// [seconds] Seconds of minutes of the time.
  BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime({
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

  factory BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime(
      hours: map['hours'] == null ? null : (map['hours'] as int).input(),
      minutes: map['minutes'] == null ? null : (map['minutes'] as int).input(),
      nanos: map['nanos'] == null ? null : (map['nanos'] as int).input(),
      seconds: map['seconds'] == null ? null : (map['seconds'] as int).input(),
    );
  }
}

