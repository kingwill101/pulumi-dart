// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppBackupSchedule {
  /// How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`).
  ///
  /// > **Note:** Not all intervals are supported on all Windows Web App SKUs. Please refer to the official documentation for appropriate values.
  final pulumi.Input<int> frequencyInterval;
  /// The unit of time for how often the backup should take place. Possible values include: `Day`, `Hour`
  final pulumi.Input<String> frequencyUnit;
  /// Should the service keep at least one backup, regardless of age of backup. Defaults to `false`.
  final pulumi.Input<bool>? keepAtLeastOneBackup;
  /// The time the backup was last attempted.
  final pulumi.Input<String>? lastExecutionTime;
  /// After how many days backups should be deleted. Defaults to `30`.
  final pulumi.Input<int>? retentionPeriodDays;
  /// When the schedule should start working in RFC-3339 format.
  final pulumi.Input<String>? startTime;

  /// Creates a new [WindowsWebAppBackupSchedule].
  /// [frequencyInterval] How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`).
  /// [frequencyUnit] The unit of time for how often the backup should take place. Possible values include: `Day`, `Hour`
  /// [keepAtLeastOneBackup] Should the service keep at least one backup, regardless of age of backup. Defaults to `false`.
  /// [lastExecutionTime] The time the backup was last attempted.
  /// [retentionPeriodDays] After how many days backups should be deleted. Defaults to `30`.
  /// [startTime] When the schedule should start working in RFC-3339 format.
  WindowsWebAppBackupSchedule({
    required this.frequencyInterval,
    required this.frequencyUnit,
    this.keepAtLeastOneBackup,
    this.lastExecutionTime,
    this.retentionPeriodDays,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequencyInterval': frequencyInterval,
      'frequencyUnit': frequencyUnit,
      'keepAtLeastOneBackup': ?keepAtLeastOneBackup,
      'lastExecutionTime': ?lastExecutionTime,
      'retentionPeriodDays': ?retentionPeriodDays,
      'startTime': ?startTime,
    };
  }

  factory WindowsWebAppBackupSchedule.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppBackupSchedule(
      frequencyInterval: (map['frequencyInterval'] as int).input(),
      frequencyUnit: (map['frequencyUnit'] as String).input(),
      keepAtLeastOneBackup: map['keepAtLeastOneBackup'] == null ? null : (map['keepAtLeastOneBackup'] as bool).input(),
      lastExecutionTime: map['lastExecutionTime'] == null ? null : (map['lastExecutionTime'] as String).input(),
      retentionPeriodDays: map['retentionPeriodDays'] == null ? null : (map['retentionPeriodDays'] as int).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

