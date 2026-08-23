// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesNetapp {
  /// When enabled, backups will be deleted when the `azure.netapp.BackupVault` resource is destroyed
  final pulumi.Input<bool>? deleteBackupsOnBackupVaultDestroy;
  /// When enabled, the volume will not be destroyed, safeguarding from severe data loss
  final pulumi.Input<bool>? preventVolumeDestruction;

  /// Creates a new [FeaturesNetapp].
  /// [deleteBackupsOnBackupVaultDestroy] When enabled, backups will be deleted when the `azure.netapp.BackupVault` resource is destroyed
  /// [preventVolumeDestruction] When enabled, the volume will not be destroyed, safeguarding from severe data loss
  const FeaturesNetapp({
    this.deleteBackupsOnBackupVaultDestroy,
    this.preventVolumeDestruction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteBackupsOnBackupVaultDestroy': ?deleteBackupsOnBackupVaultDestroy,
      'preventVolumeDestruction': ?preventVolumeDestruction,
    };
  }

  factory FeaturesNetapp.fromMap(Map<String, dynamic> map) {
    return FeaturesNetapp(
      deleteBackupsOnBackupVaultDestroy: (() { final guardedValue = map['deleteBackupsOnBackupVaultDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      preventVolumeDestruction: (() { final guardedValue = map['preventVolumeDestruction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
