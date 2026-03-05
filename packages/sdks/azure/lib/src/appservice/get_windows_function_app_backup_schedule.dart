// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsFunctionAppBackupSchedule {
  /// How often the backup is executed.
  final pulumi.Input<int> frequencyInterval;
  /// The unit of time the backup should take place.
  final pulumi.Input<String> frequencyUnit;
  /// Should the service keep at least one backup.
  final pulumi.Input<bool> keepAtLeastOneBackup;
  /// The time the backup was last attempted.
  final pulumi.Input<String> lastExecutionTime;
  /// After how many days backups is deleted.
  final pulumi.Input<int> retentionPeriodDays;
  /// When the schedule should start working in RFC-3339 format.
  final pulumi.Input<String> startTime;

  /// Creates a new [GetWindowsFunctionAppBackupSchedule].
  /// [frequencyInterval] How often the backup is executed.
  /// [frequencyUnit] The unit of time the backup should take place.
  /// [keepAtLeastOneBackup] Should the service keep at least one backup.
  /// [lastExecutionTime] The time the backup was last attempted.
  /// [retentionPeriodDays] After how many days backups is deleted.
  /// [startTime] When the schedule should start working in RFC-3339 format.
  GetWindowsFunctionAppBackupSchedule({
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

  factory GetWindowsFunctionAppBackupSchedule.fromMap(Map<String, dynamic> map) {
    return GetWindowsFunctionAppBackupSchedule(
      frequencyInterval: pulumi.Input.fromValue(map['frequencyInterval'] as int),
      frequencyUnit: pulumi.Input.fromValue(map['frequencyUnit'] as String),
      keepAtLeastOneBackup: pulumi.Input.fromValue(map['keepAtLeastOneBackup'] as bool),
      lastExecutionTime: pulumi.Input.fromValue(map['lastExecutionTime'] as String),
      retentionPeriodDays: pulumi.Input.fromValue(map['retentionPeriodDays'] as int),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
    );
  }
}

