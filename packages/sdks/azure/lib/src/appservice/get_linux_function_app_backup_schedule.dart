// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxFunctionAppBackupSchedule {
  /// How often the backup is executed.
  final pulumi.Input<int> frequencyInterval;
  /// The unit of time for how often the backup takes place.
  final pulumi.Input<String> frequencyUnit;
  /// Does the service keep at least one backup, regardless of age of backup?
  final pulumi.Input<bool> keepAtLeastOneBackup;
  /// The time the backup was last attempted.
  final pulumi.Input<String> lastExecutionTime;
  /// After how many days backups are deleted.
  final pulumi.Input<int> retentionPeriodDays;
  /// When the schedule starts working in RFC-3339 format.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetLinuxFunctionAppBackupSchedule].
  /// [frequencyInterval] How often the backup is executed.
  /// [frequencyUnit] The unit of time for how often the backup takes place.
  /// [keepAtLeastOneBackup] Does the service keep at least one backup, regardless of age of backup?
  /// [lastExecutionTime] The time the backup was last attempted.
  /// [retentionPeriodDays] After how many days backups are deleted.
  /// [startTime] When the schedule starts working in RFC-3339 format.
  GetLinuxFunctionAppBackupSchedule({
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

  factory GetLinuxFunctionAppBackupSchedule.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppBackupSchedule(
      frequencyInterval: (map['frequencyInterval'] as int).input(),
      frequencyUnit: (map['frequencyUnit'] as String).input(),
      keepAtLeastOneBackup: (map['keepAtLeastOneBackup'] as bool).input(),
      lastExecutionTime: (map['lastExecutionTime'] as String).input(),
      retentionPeriodDays: (map['retentionPeriodDays'] as int).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

