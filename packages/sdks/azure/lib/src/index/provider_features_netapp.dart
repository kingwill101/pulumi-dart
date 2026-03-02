// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesNetapp {
  /// When enabled, backups will be deleted when the `azure.netapp.BackupVault` resource is destroyed
  final pulumi.Input<bool>? deleteBackupsOnBackupVaultDestroy;
  /// When enabled, the volume will not be destroyed, safeguarding from severe data loss
  final pulumi.Input<bool>? preventVolumeDestruction;

  /// Creates a new [ProviderFeaturesNetapp].
  /// [deleteBackupsOnBackupVaultDestroy] When enabled, backups will be deleted when the `azure.netapp.BackupVault` resource is destroyed
  /// [preventVolumeDestruction] When enabled, the volume will not be destroyed, safeguarding from severe data loss
  ProviderFeaturesNetapp({
    this.deleteBackupsOnBackupVaultDestroy,
    this.preventVolumeDestruction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteBackupsOnBackupVaultDestroy': ?deleteBackupsOnBackupVaultDestroy,
      'preventVolumeDestruction': ?preventVolumeDestruction,
    };
  }

  factory ProviderFeaturesNetapp.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesNetapp(
      deleteBackupsOnBackupVaultDestroy: map['deleteBackupsOnBackupVaultDestroy'] == null ? null : (map['deleteBackupsOnBackupVaultDestroy'] as bool).input(),
      preventVolumeDestruction: map['preventVolumeDestruction'] == null ? null : (map['preventVolumeDestruction'] as bool).input(),
    );
  }
}

