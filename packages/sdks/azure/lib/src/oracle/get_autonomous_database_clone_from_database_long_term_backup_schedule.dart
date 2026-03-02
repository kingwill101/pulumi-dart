// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabaseCloneFromDatabaseLongTermBackupSchedule {
  /// A boolean value that indicates if long-term backup is enabled/disabled.
  final pulumi.Input<bool> enabled;
  /// The frequency for automated long-term backups.
  final pulumi.Input<String> repeatCadence;
  /// The retention period in days for Autonomous database backup.
  final pulumi.Input<int> retentionPeriodInDays;
  /// The timestamp in which the backup would be made.
  final pulumi.Input<String> timeOfBackupInUtc;

  /// Creates a new [GetAutonomousDatabaseCloneFromDatabaseLongTermBackupSchedule].
  /// [enabled] A boolean value that indicates if long-term backup is enabled/disabled.
  /// [repeatCadence] The frequency for automated long-term backups.
  /// [retentionPeriodInDays] The retention period in days for Autonomous database backup.
  /// [timeOfBackupInUtc] The timestamp in which the backup would be made.
  GetAutonomousDatabaseCloneFromDatabaseLongTermBackupSchedule({
    required this.enabled,
    required this.repeatCadence,
    required this.retentionPeriodInDays,
    required this.timeOfBackupInUtc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'repeatCadence': repeatCadence,
      'retentionPeriodInDays': retentionPeriodInDays,
      'timeOfBackupInUtc': timeOfBackupInUtc,
    };
  }

  factory GetAutonomousDatabaseCloneFromDatabaseLongTermBackupSchedule.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseCloneFromDatabaseLongTermBackupSchedule(
      enabled: (map['enabled'] as bool).input(),
      repeatCadence: (map['repeatCadence'] as String).input(),
      retentionPeriodInDays: (map['retentionPeriodInDays'] as int).input(),
      timeOfBackupInUtc: (map['timeOfBackupInUtc'] as String).input(),
    );
  }
}

