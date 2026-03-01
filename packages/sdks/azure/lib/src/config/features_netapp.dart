// ignore_for_file: unused_element, unnecessary_cast


class FeaturesNetapp {
  /// When enabled, backups will be deleted when the `azure.netapp.BackupVault` resource is destroyed
  final bool? deleteBackupsOnBackupVaultDestroy;
  /// When enabled, the volume will not be destroyed, safeguarding from severe data loss
  final bool? preventVolumeDestruction;

  /// Creates a new [FeaturesNetapp].
  /// [deleteBackupsOnBackupVaultDestroy] When enabled, backups will be deleted when the `azure.netapp.BackupVault` resource is destroyed
  /// [preventVolumeDestruction] When enabled, the volume will not be destroyed, safeguarding from severe data loss
  FeaturesNetapp({
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
      deleteBackupsOnBackupVaultDestroy: map['deleteBackupsOnBackupVaultDestroy'] == null ? null : map['deleteBackupsOnBackupVaultDestroy'] as bool,
      preventVolumeDestruction: map['preventVolumeDestruction'] == null ? null : map['preventVolumeDestruction'] as bool,
    );
  }
}

