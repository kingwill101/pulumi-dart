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
  const BackupPlanBackupScheduleRpoConfigExclusionWindowStartTime({
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
      hours: (() { final guardedValue = map['hours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minutes: (() { final guardedValue = map['minutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nanos: (() { final guardedValue = map['nanos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      seconds: (() { final guardedValue = map['seconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

