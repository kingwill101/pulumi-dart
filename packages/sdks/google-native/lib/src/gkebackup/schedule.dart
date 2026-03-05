// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines scheduling parameters for automatically creating Backups via this BackupPlan.
class Schedule {
  /// Optional. A standard [cron](https://wikipedia.com/wiki/cron) string that defines a repeating schedule for creating Backups via this BackupPlan. This is mutually exclusive with the rpo_config field since at most one schedule can be defined for a BackupPlan. If this is defined, then backup_retain_days must also be defined. Default (empty): no automatic backup creation will occur.
  final pulumi.Input<String>? cronSchedule;
  /// Optional. This flag denotes whether automatic Backup creation is paused for this BackupPlan. Default: False
  final pulumi.Input<bool>? paused;

  /// Creates a new [Schedule].
  /// [cronSchedule] Optional. A standard [cron](https://wikipedia.com/wiki/cron) string that defines a repeating schedule for creating Backups via this BackupPlan. This is mutually exclusive with the rpo_config field since at most one schedule can be defined for a BackupPlan. If this is defined, then backup_retain_days must also be defined. Default (empty): no automatic backup creation will occur.
  /// [paused] Optional. This flag denotes whether automatic Backup creation is paused for this BackupPlan. Default: False
  Schedule({
    this.cronSchedule,
    this.paused,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronSchedule': ?cronSchedule,
      'paused': ?paused,
    };
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      cronSchedule: (() { final guardedValue = map['cronSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

