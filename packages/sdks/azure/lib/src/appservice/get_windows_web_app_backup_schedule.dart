// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppBackupSchedule {
  /// How often the backup will be executed.
  final int frequencyInterval;
  /// The unit of time for how often the backup should take place.
  final String frequencyUnit;
  /// Will the service keep at least one backup, regardless of age of backup.
  final bool keepAtLeastOneBackup;
  /// The time of the last backup attempt.
  final String lastExecutionTime;
  /// After how many days backups should be deleted.
  final int retentionPeriodDays;
  /// When the schedule should start in RFC-3339 format.
  final String startTime;

  /// Creates a new [GetWindowsWebAppBackupSchedule].
  /// [frequencyInterval] How often the backup will be executed.
  /// [frequencyUnit] The unit of time for how often the backup should take place.
  /// [keepAtLeastOneBackup] Will the service keep at least one backup, regardless of age of backup.
  /// [lastExecutionTime] The time of the last backup attempt.
  /// [retentionPeriodDays] After how many days backups should be deleted.
  /// [startTime] When the schedule should start in RFC-3339 format.
  GetWindowsWebAppBackupSchedule({
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
      frequencyInterval: map['frequencyInterval'] as int,
      frequencyUnit: map['frequencyUnit'] as String,
      keepAtLeastOneBackup: map['keepAtLeastOneBackup'] as bool,
      lastExecutionTime: map['lastExecutionTime'] as String,
      retentionPeriodDays: map['retentionPeriodDays'] as int,
      startTime: map['startTime'] as String,
    );
  }
}

