// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeDataProtectionBackupPolicy {
  /// The Resource ID of the backup policy.
  final pulumi.Input<String> backupPolicyId;

  /// The Resource ID of the backup backup vault.
  final pulumi.Input<String> backupVaultId;

  /// Backup policy is enabled or not.
  final pulumi.Input<bool> policyEnabled;

  /// Creates a new [GetVolumeDataProtectionBackupPolicy].
  /// [backupPolicyId] The Resource ID of the backup policy.
  /// [backupVaultId] The Resource ID of the backup backup vault.
  /// [policyEnabled] Backup policy is enabled or not.
  GetVolumeDataProtectionBackupPolicy({
    required this.backupPolicyId,
    required this.backupVaultId,
    required this.policyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': backupPolicyId,
      'backupVaultId': backupVaultId,
      'policyEnabled': policyEnabled,
    };
  }

  factory GetVolumeDataProtectionBackupPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVolumeDataProtectionBackupPolicy(
      backupPolicyId: pulumi.Input.fromValue(map['backupPolicyId'] as String),
      backupVaultId: pulumi.Input.fromValue(map['backupVaultId'] as String),
      policyEnabled: pulumi.Input.fromValue(map['policyEnabled'] as bool),
    );
  }
}
