// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LinuxFunctionAppBackupSchedule {
  /// How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`).
  ///
  /// &gt; **Note:** Not all intervals are supported on all Linux Function App SKUs. Please refer to the official documentation for appropriate values.
  final pulumi.Input<int> frequencyInterval;
  /// The unit of time for how often the backup should take place. Possible values include: `Day` and `Hour`.
  final pulumi.Input<String> frequencyUnit;
  /// Should the service keep at least one backup, regardless of age of backup. Defaults to `false`.
  final pulumi.Input<bool>? keepAtLeastOneBackup;
  /// The time the backup was last attempted.
  final pulumi.Input<String>? lastExecutionTime;
  /// After how many days backups should be deleted. Defaults to `30`.
  final pulumi.Input<int>? retentionPeriodDays;
  /// When the schedule should start working in RFC-3339 format.
  final pulumi.Input<String>? startTime;

  /// Creates a new [LinuxFunctionAppBackupSchedule].
  /// [frequencyInterval] How often the backup should be executed (e.g. for weekly backup, this should be set to `7` and `frequency_unit` should be set to `Day`).
  /// [frequencyUnit] The unit of time for how often the backup should take place. Possible values include: `Day` and `Hour`.
  /// [keepAtLeastOneBackup] Should the service keep at least one backup, regardless of age of backup. Defaults to `false`.
  /// [lastExecutionTime] The time the backup was last attempted.
  /// [retentionPeriodDays] After how many days backups should be deleted. Defaults to `30`.
  /// [startTime] When the schedule should start working in RFC-3339 format.
  LinuxFunctionAppBackupSchedule({
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

  factory LinuxFunctionAppBackupSchedule.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppBackupSchedule(
      frequencyInterval: pulumi.Input.fromValue(map['frequencyInterval'] as int),
      frequencyUnit: pulumi.Input.fromValue(map['frequencyUnit'] as String),
      keepAtLeastOneBackup: (() { final guardedValue = map['keepAtLeastOneBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastExecutionTime: (() { final guardedValue = map['lastExecutionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionPeriodDays: (() { final guardedValue = map['retentionPeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

