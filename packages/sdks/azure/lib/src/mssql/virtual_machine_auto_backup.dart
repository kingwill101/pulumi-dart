// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_auto_backup_manual_schedule.dart';

class VirtualMachineAutoBackup {
  final pulumi.Input<bool>? encryptionEnabled;
  /// Encryption password to use. Setting a password will enable encryption.
  final pulumi.Input<String>? encryptionPassword;
  /// A `manual_schedule` block as documented below. When this block is present, the schedule type is set to `Manual`. Without this block, the schedule type is set to `Automated`.
  final pulumi.Input<VirtualMachineAutoBackupManualSchedule>? manualSchedule;
  /// Retention period of backups, in days. Valid values are from `1` to `30`.
  final pulumi.Input<int> retentionPeriodInDays;
  /// Access key for the storage account where backups will be kept.
  final pulumi.Input<String> storageAccountAccessKey;
  /// Blob endpoint for the storage account where backups will be kept.
  final pulumi.Input<String> storageBlobEndpoint;
  /// Include or exclude system databases from auto backup.
  final pulumi.Input<bool>? systemDatabasesBackupEnabled;

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
      'manualSchedule': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAutoBackupManualSchedule, Map<String, dynamic>>(manualSchedule, (value) => value.toMap()),
      'retentionPeriodInDays': retentionPeriodInDays,
      'storageAccountAccessKey': storageAccountAccessKey,
      'storageBlobEndpoint': storageBlobEndpoint,
      'systemDatabasesBackupEnabled': ?systemDatabasesBackupEnabled,
    };
  }

  factory VirtualMachineAutoBackup.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAutoBackup(
      encryptionEnabled: map['encryptionEnabled'] == null ? null : (map['encryptionEnabled'] as bool).input(),
      encryptionPassword: map['encryptionPassword'] == null ? null : (map['encryptionPassword'] as String).input(),
      manualSchedule: map['manualSchedule'] == null ? null : (VirtualMachineAutoBackupManualSchedule.fromMap((map['manualSchedule'] as Map).cast<String, dynamic>())).input(),
      retentionPeriodInDays: (map['retentionPeriodInDays'] as int).input(),
      storageAccountAccessKey: (map['storageAccountAccessKey'] as String).input(),
      storageBlobEndpoint: (map['storageBlobEndpoint'] as String).input(),
      systemDatabasesBackupEnabled: map['systemDatabasesBackupEnabled'] == null ? null : (map['systemDatabasesBackupEnabled'] as bool).input(),
    );
  }
}

