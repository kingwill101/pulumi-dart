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
  const GetLinuxFunctionAppBackupSchedule({
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
      frequencyInterval: pulumi.Input.fromValue(map['frequencyInterval'] as int),
      frequencyUnit: pulumi.Input.fromValue(map['frequencyUnit'] as String),
      keepAtLeastOneBackup: pulumi.Input.fromValue(map['keepAtLeastOneBackup'] as bool),
      lastExecutionTime: pulumi.Input.fromValue(map['lastExecutionTime'] as String),
      retentionPeriodDays: pulumi.Input.fromValue(map['retentionPeriodDays'] as int),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}
