// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupVaultBackupRetentionPolicy {
  /// Minimum retention duration in days for backups in the backup vault.
  final pulumi.Input<int> backupMinimumEnforcedRetentionDays;
  /// Indicates if the daily backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  final pulumi.Input<bool>? dailyBackupImmutable;
  /// Indicates if the manual backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  final pulumi.Input<bool>? manualBackupImmutable;
  /// Indicates if the monthly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  final pulumi.Input<bool>? monthlyBackupImmutable;
  /// Indicates if the weekly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  final pulumi.Input<bool>? weeklyBackupImmutable;

  /// Creates a new [BackupVaultBackupRetentionPolicy].
  /// [backupMinimumEnforcedRetentionDays] Minimum retention duration in days for backups in the backup vault.
  /// [dailyBackupImmutable] Indicates if the daily backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  /// [manualBackupImmutable] Indicates if the manual backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  /// [monthlyBackupImmutable] Indicates if the monthly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  /// [weeklyBackupImmutable] Indicates if the weekly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  const BackupVaultBackupRetentionPolicy({
    required this.backupMinimumEnforcedRetentionDays,
    this.dailyBackupImmutable,
    this.manualBackupImmutable,
    this.monthlyBackupImmutable,
    this.weeklyBackupImmutable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupMinimumEnforcedRetentionDays': backupMinimumEnforcedRetentionDays,
      'dailyBackupImmutable': ?dailyBackupImmutable,
      'manualBackupImmutable': ?manualBackupImmutable,
      'monthlyBackupImmutable': ?monthlyBackupImmutable,
      'weeklyBackupImmutable': ?weeklyBackupImmutable,
    };
  }

  factory BackupVaultBackupRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return BackupVaultBackupRetentionPolicy(
      backupMinimumEnforcedRetentionDays: pulumi.Input.fromValue(map['backupMinimumEnforcedRetentionDays'] as int),
      dailyBackupImmutable: (() { final guardedValue = map['dailyBackupImmutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manualBackupImmutable: (() { final guardedValue = map['manualBackupImmutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      monthlyBackupImmutable: (() { final guardedValue = map['monthlyBackupImmutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      weeklyBackupImmutable: (() { final guardedValue = map['weeklyBackupImmutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

