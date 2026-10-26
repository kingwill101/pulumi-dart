// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppBackupSchedule {
  /// How often the backup will be executed.
  final pulumi.Input<int> frequencyInterval;
  /// The unit of time for how often the backup should take place.
  final pulumi.Input<String> frequencyUnit;
  /// Will the service keep at least one backup, regardless of age of backup.
  final pulumi.Input<bool> keepAtLeastOneBackup;
  /// The time of the last backup attempt.
  final pulumi.Input<String> lastExecutionTime;
  /// After how many days backups should be deleted.
  final pulumi.Input<int> retentionPeriodDays;
  /// When the schedule should start in RFC-3339 format.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetWindowsWebAppBackupSchedule].
  /// [frequencyInterval] How often the backup will be executed.
  /// [frequencyUnit] The unit of time for how often the backup should take place.
  /// [keepAtLeastOneBackup] Will the service keep at least one backup, regardless of age of backup.
  /// [lastExecutionTime] The time of the last backup attempt.
  /// [retentionPeriodDays] After how many days backups should be deleted.
  /// [startTime] When the schedule should start in RFC-3339 format.
  const GetWindowsWebAppBackupSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    required this.keepAtLeastOneBackup,
    required this.lastExecutionTime,
    required this.retentionPeriodDays,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequencyInterval': frequencyInterval,
      'frequencyUnit': frequencyUnit,
      'keepAtLeastOneBackup': keepAtLeastOneBackup,
      'lastExecutionTime': lastExecutionTime,
      'retentionPeriodDays': retentionPeriodDays,
      'startTime': startTime,
    };
  }

  factory GetWindowsWebAppBackupSchedule.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppBackupSchedule(
      frequencyInterval: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['frequencyInterval'])),
      frequencyUnit: pulumi.Input.fromValue(map['frequencyUnit'] as String),
      keepAtLeastOneBackup: pulumi.Input.fromValue(map['keepAtLeastOneBackup'] as bool),
      lastExecutionTime: pulumi.Input.fromValue(map['lastExecutionTime'] as String),
      retentionPeriodDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['retentionPeriodDays'])),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
