// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_auto_backup_manual_schedule.dart';

class VirtualMachineAutoBackup {
  final bool? encryptionEnabled;
  /// Encryption password to use. Setting a password will enable encryption.
  final String? encryptionPassword;
  /// A `manual_schedule` block as documented below. When this block is present, the schedule type is set to `Manual`. Without this block, the schedule type is set to `Automated`.
  final VirtualMachineAutoBackupManualSchedule? manualSchedule;
  /// Retention period of backups, in days. Valid values are from `1` to `30`.
  final int retentionPeriodInDays;
  /// Access key for the storage account where backups will be kept.
  final String storageAccountAccessKey;
  /// Blob endpoint for the storage account where backups will be kept.
  final String storageBlobEndpoint;
  /// Include or exclude system databases from auto backup.
  final bool? systemDatabasesBackupEnabled;

  /// Creates a new [VirtualMachineAutoBackup].
  /// [encryptionEnabled] Optional.
  /// [encryptionPassword] Encryption password to use. Setting a password will enable encryption.
  /// [manualSchedule] A `manual_schedule` block as documented below. When this block is present, the schedule type is set to `Manual`. Without this block, the schedule type is set to `Automated`.
  /// [retentionPeriodInDays] Retention period of backups, in days. Valid values are from `1` to `30`.
  /// [storageAccountAccessKey] Access key for the storage account where backups will be kept.
  /// [storageBlobEndpoint] Blob endpoint for the storage account where backups will be kept.
  /// [systemDatabasesBackupEnabled] Include or exclude system databases from auto backup.
  VirtualMachineAutoBackup({
    this.encryptionEnabled,
    this.encryptionPassword,
    this.manualSchedule,
    required this.retentionPeriodInDays,
    required this.storageAccountAccessKey,
    required this.storageBlobEndpoint,
    this.systemDatabasesBackupEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionEnabled': ?encryptionEnabled,
      'encryptionPassword': ?encryptionPassword,
      'manualSchedule': ?manualSchedule == null ? null : manualSchedule!.toMap(),
      'retentionPeriodInDays': retentionPeriodInDays,
      'storageAccountAccessKey': storageAccountAccessKey,
      'storageBlobEndpoint': storageBlobEndpoint,
      'systemDatabasesBackupEnabled': ?systemDatabasesBackupEnabled,
    };
  }

  factory VirtualMachineAutoBackup.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAutoBackup(
      encryptionEnabled: map['encryptionEnabled'] == null ? null : map['encryptionEnabled'] as bool,
      encryptionPassword: map['encryptionPassword'] == null ? null : map['encryptionPassword'] as String,
      manualSchedule: map['manualSchedule'] == null ? null : VirtualMachineAutoBackupManualSchedule.fromMap((map['manualSchedule'] as Map).cast<String, dynamic>()),
      retentionPeriodInDays: map['retentionPeriodInDays'] as int,
      storageAccountAccessKey: map['storageAccountAccessKey'] as String,
      storageBlobEndpoint: map['storageBlobEndpoint'] as String,
      systemDatabasesBackupEnabled: map['systemDatabasesBackupEnabled'] == null ? null : map['systemDatabasesBackupEnabled'] as bool,
    );
  }
}

