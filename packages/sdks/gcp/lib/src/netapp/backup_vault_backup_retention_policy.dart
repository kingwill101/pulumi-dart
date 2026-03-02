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
  BackupVaultBackupRetentionPolicy({
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
      backupMinimumEnforcedRetentionDays: (map['backupMinimumEnforcedRetentionDays'] as int).input(),
      dailyBackupImmutable: map['dailyBackupImmutable'] == null ? null : (map['dailyBackupImmutable'] as bool).input(),
      manualBackupImmutable: map['manualBackupImmutable'] == null ? null : (map['manualBackupImmutable'] as bool).input(),
      monthlyBackupImmutable: map['monthlyBackupImmutable'] == null ? null : (map['monthlyBackupImmutable'] as bool).input(),
      weeklyBackupImmutable: map['weeklyBackupImmutable'] == null ? null : (map['weeklyBackupImmutable'] as bool).input(),
    );
  }
}

