// ignore_for_file: unused_element, unnecessary_cast


class GetAutonomousDatabaseLongTermBackupSchedule {
  /// A boolean value that indicates if long term backup is enabled/disabled.
  final bool enabled;
  /// The frequency for automated long-term backups.
  final String repeatCadence;
  /// The retention period in days for Autonomous database backup.
  final int retentionPeriodInDays;
  /// The date and time in which the backup would be made.
  final String timeOfBackup;

  /// Creates a new [GetAutonomousDatabaseLongTermBackupSchedule].
  /// [enabled] A boolean value that indicates if long term backup is enabled/disabled.
  /// [repeatCadence] The frequency for automated long-term backups.
  /// [retentionPeriodInDays] The retention period in days for Autonomous database backup.
  /// [timeOfBackup] The date and time in which the backup would be made.
  GetAutonomousDatabaseLongTermBackupSchedule({
    required this.enabled,
    required this.repeatCadence,
    required this.retentionPeriodInDays,
    required this.timeOfBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'repeatCadence': repeatCadence,
      'retentionPeriodInDays': retentionPeriodInDays,
      'timeOfBackup': timeOfBackup,
    };
  }

  factory GetAutonomousDatabaseLongTermBackupSchedule.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseLongTermBackupSchedule(
      enabled: map['enabled'] as bool,
      repeatCadence: map['repeatCadence'] as String,
      retentionPeriodInDays: map['retentionPeriodInDays'] as int,
      timeOfBackup: map['timeOfBackup'] as String,
    );
  }
}

