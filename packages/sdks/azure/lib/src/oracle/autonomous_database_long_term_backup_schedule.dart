// ignore_for_file: unused_element, unnecessary_cast


class AutonomousDatabaseLongTermBackupSchedule {
  final bool enabled;
  final String repeatCadence;
  final int retentionPeriodInDays;
  final String timeOfBackup;

  /// Creates a new [AutonomousDatabaseLongTermBackupSchedule].
  /// [enabled] Required.
  /// [repeatCadence] Required.
  /// [retentionPeriodInDays] Required.
  /// [timeOfBackup] Required.
  AutonomousDatabaseLongTermBackupSchedule({
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

  factory AutonomousDatabaseLongTermBackupSchedule.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseLongTermBackupSchedule(
      enabled: map['enabled'] as bool,
      repeatCadence: map['repeatCadence'] as String,
      retentionPeriodInDays: map['retentionPeriodInDays'] as int,
      timeOfBackup: map['timeOfBackup'] as String,
    );
  }
}

