// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_auto_backup_manual_schedule.dart';

class VirtualMachineAutoBackup {
  final pulumi.Input<bool>? encryptionEnabled;
  /// Encryption password to use. Setting a password will enable encryption.
  final pulumi.Input<String>? encryptionPassword;
  /// A `manualSchedule` block as documented below. When this block is present, the schedule type is set to `Manual`. Without this block, the schedule type is set to `Automated`.
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
  /// [manualSchedule] A `manualSchedule` block as documented below. When this block is present, the schedule type is set to `Manual`. Without this block, the schedule type is set to `Automated`.
  /// [retentionPeriodInDays] Retention period of backups, in days. Valid values are from `1` to `30`.
  /// [storageAccountAccessKey] Access key for the storage account where backups will be kept.
  /// [storageBlobEndpoint] Blob endpoint for the storage account where backups will be kept.
  /// [systemDatabasesBackupEnabled] Include or exclude system databases from auto backup.
  const VirtualMachineAutoBackup({
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
      encryptionEnabled: (() { final guardedValue = map['encryptionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionPassword: (() { final guardedValue = map['encryptionPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualSchedule: (() { final guardedValue = map['manualSchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineAutoBackupManualSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionPeriodInDays: pulumi.Input.fromValue(map['retentionPeriodInDays'] as int),
      storageAccountAccessKey: pulumi.Input.fromValue(map['storageAccountAccessKey'] as String),
      storageBlobEndpoint: pulumi.Input.fromValue(map['storageBlobEndpoint'] as String),
      systemDatabasesBackupEnabled: (() { final guardedValue = map['systemDatabasesBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
