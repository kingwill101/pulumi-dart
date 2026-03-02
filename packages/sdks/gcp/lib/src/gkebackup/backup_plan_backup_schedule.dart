// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_schedule_rpo_config.dart';

class BackupPlanBackupSchedule {
  /// A standard cron string that defines a repeating schedule for
  /// creating Backups via this BackupPlan.
  /// This is mutually exclusive with the rpoConfig field since at most one
  /// schedule can be defined for a BackupPlan.
  /// If this is defined, then backupRetainDays must also be defined.
  final pulumi.Input<String>? cronSchedule;
  /// This flag denotes whether automatic Backup creation is paused for this BackupPlan.
  final pulumi.Input<bool>? paused;
  /// Defines the RPO schedule configuration for this BackupPlan. This is mutually
  /// exclusive with the cronSchedule field since at most one schedule can be defined
  /// for a BackupPLan. If this is defined, then backupRetainDays must also be defined.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupScheduleRpoConfig>? rpoConfig;

  /// Creates a new [BackupPlanBackupSchedule].
  /// [cronSchedule] A standard cron string that defines a repeating schedule for
  /// [paused] This flag denotes whether automatic Backup creation is paused for this BackupPlan.
  /// [rpoConfig] Defines the RPO schedule configuration for this BackupPlan. This is mutually
  BackupPlanBackupSchedule({
    this.cronSchedule,
    this.paused,
    this.rpoConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronSchedule': ?cronSchedule,
      'paused': ?paused,
      'rpoConfig': ?pulumi.Input.mapOptionalInputValue<BackupPlanBackupScheduleRpoConfig, Map<String, dynamic>>(rpoConfig, (value) => value.toMap()),
    };
  }

  factory BackupPlanBackupSchedule.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupSchedule(
      cronSchedule: map['cronSchedule'] == null ? null : (map['cronSchedule'] as String).input(),
      paused: map['paused'] == null ? null : (map['paused'] as bool).input(),
      rpoConfig: map['rpoConfig'] == null ? null : (BackupPlanBackupScheduleRpoConfig.fromMap((map['rpoConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

