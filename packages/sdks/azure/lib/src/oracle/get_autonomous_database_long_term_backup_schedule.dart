// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabaseLongTermBackupSchedule {
  /// A boolean value that indicates if long term backup is enabled/disabled.
  final pulumi.Input<bool> enabled;

  /// The frequency for automated long-term backups.
  final pulumi.Input<String> repeatCadence;

  /// The retention period in days for Autonomous database backup.
  final pulumi.Input<int> retentionPeriodInDays;

  /// The date and time in which the backup would be made.
  final pulumi.Input<String> timeOfBackup;

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

  factory GetAutonomousDatabaseLongTermBackupSchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAutonomousDatabaseLongTermBackupSchedule(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      repeatCadence: pulumi.Input.fromValue(map['repeatCadence'] as String),
      retentionPeriodInDays: pulumi.Input.fromValue(
        map['retentionPeriodInDays'] as int,
      ),
      timeOfBackup: pulumi.Input.fromValue(map['timeOfBackup'] as String),
    );
  }
}
