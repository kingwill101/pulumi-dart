// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_schedule_rpo_config_exclusion_window.dart';

class BackupPlanBackupScheduleRpoConfig {
  /// User specified time windows during which backup can NOT happen for this BackupPlan.
  /// Backups should start and finish outside of any given exclusion window. Note: backup
  /// jobs will be scheduled to start and finish outside the duration of the window as
  /// much as possible, but running jobs will not get canceled when it runs into the window.
  /// All the time and date values in exclusionWindows entry in the API are in UTC. We
  /// only allow &lt;=1 recurrence (daily or weekly) exclusion window for a BackupPlan while no
  /// restriction on number of single occurrence windows.
  /// Structure is documented below.
  final pulumi.Input<List<BackupPlanBackupScheduleRpoConfigExclusionWindow>>? exclusionWindows;
  /// Defines the target RPO for the BackupPlan in minutes, which means the target
  /// maximum data loss in time that is acceptable for this BackupPlan. This must be
  /// at least 60, i.e., 1 hour, and at most 86400, i.e., 60 days.
  final pulumi.Input<int> targetRpoMinutes;

  /// Creates a new [BackupPlanBackupScheduleRpoConfig].
  /// [exclusionWindows] User specified time windows during which backup can NOT happen for this BackupPlan.
  /// [targetRpoMinutes] Defines the target RPO for the BackupPlan in minutes, which means the target
  const BackupPlanBackupScheduleRpoConfig({
    this.exclusionWindows,
    required this.targetRpoMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusionWindows': ?pulumi.Input.mapOptionalInputValue<List<BackupPlanBackupScheduleRpoConfigExclusionWindow>, List<Map<String, dynamic>>>(exclusionWindows, (value) => pulumi.Input.encodeList<BackupPlanBackupScheduleRpoConfigExclusionWindow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetRpoMinutes': targetRpoMinutes,
    };
  }

  factory BackupPlanBackupScheduleRpoConfig.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupScheduleRpoConfig(
      exclusionWindows: (() { final guardedValue = map['exclusionWindows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackupPlanBackupScheduleRpoConfigExclusionWindow>(guardedValue, (value) => BackupPlanBackupScheduleRpoConfigExclusionWindow.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetRpoMinutes: pulumi.Input.fromValue(map['targetRpoMinutes'] as int),
    );
  }
}
