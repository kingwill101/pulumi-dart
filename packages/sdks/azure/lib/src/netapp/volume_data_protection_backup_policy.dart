// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeDataProtectionBackupPolicy {
  /// Resource ID of the backup policy to apply to the volume.
  final pulumi.Input<String> backupPolicyId;
  /// Resource ID of the backup backup vault to associate this volume to.
  final pulumi.Input<String> backupVaultId;
  /// Enables the backup policy on the volume, defaults to `true`.
  ///
  /// For more information on Azure NetApp Files Backup feature please see [Understand Azure NetApp Files backup](https://learn.microsoft.com/en-us/azure/azure-netapp-files/backup-introduction)
  final pulumi.Input<bool>? policyEnabled;

  /// Creates a new [VolumeDataProtectionBackupPolicy].
  /// [backupPolicyId] Resource ID of the backup policy to apply to the volume.
  /// [backupVaultId] Resource ID of the backup backup vault to associate this volume to.
  /// [policyEnabled] Enables the backup policy on the volume, defaults to `true`.
  VolumeDataProtectionBackupPolicy({
    required this.backupPolicyId,
    required this.backupVaultId,
    this.policyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': backupPolicyId,
      'backupVaultId': backupVaultId,
      'policyEnabled': ?policyEnabled,
    };
  }

  factory VolumeDataProtectionBackupPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeDataProtectionBackupPolicy(
      backupPolicyId: (map['backupPolicyId'] as String).input(),
      backupVaultId: (map['backupVaultId'] as String).input(),
      policyEnabled: map['policyEnabled'] == null ? null : (map['policyEnabled'] as bool).input(),
    );
  }
}

