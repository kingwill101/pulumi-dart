// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseLongTermBackupSchedule {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> repeatCadence;
  final pulumi.Input<int> retentionPeriodInDays;
  final pulumi.Input<String> timeOfBackup;

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
      enabled: (map['enabled'] as bool).input(),
      repeatCadence: (map['repeatCadence'] as String).input(),
      retentionPeriodInDays: (map['retentionPeriodInDays'] as int).input(),
      timeOfBackup: (map['timeOfBackup'] as String).input(),
    );
  }
}

