// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeBackupConfig {
  /// Specify a single backup policy ID for scheduled backups. Format: `projects/{{projectId}}/locations/{{location}}/backupPolicies/{{backupPolicyName}}`
  final pulumi.Input<List<String>>? backupPolicies;
  /// ID of the backup vault to use. A backup vault is reqired to create manual or scheduled backups.
  /// Format: `projects/{{projectId}}/locations/{{location}}/backupVaults/{{backupVaultName}}`
  final pulumi.Input<String>? backupVault;
  /// When set to true, scheduled backup is enabled on the volume. Omit if no backup_policy is specified.
  final pulumi.Input<bool>? scheduledBackupEnabled;

  /// Creates a new [VolumeBackupConfig].
  /// [backupPolicies] Specify a single backup policy ID for scheduled backups. Format: `projects/{{projectId}}/locations/{{location}}/backupPolicies/{{backupPolicyName}}`
  /// [backupVault] ID of the backup vault to use. A backup vault is reqired to create manual or scheduled backups.
  /// [scheduledBackupEnabled] When set to true, scheduled backup is enabled on the volume. Omit if no backup_policy is specified.
  const VolumeBackupConfig({
    this.backupPolicies,
    this.backupVault,
    this.scheduledBackupEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicies': ?backupPolicies,
      'backupVault': ?backupVault,
      'scheduledBackupEnabled': ?scheduledBackupEnabled,
    };
  }

  factory VolumeBackupConfig.fromMap(Map<String, dynamic> map) {
    return VolumeBackupConfig(
      backupPolicies: (() { final guardedValue = map['backupPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backupVault: (() { final guardedValue = map['backupVault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledBackupEnabled: (() { final guardedValue = map['scheduledBackupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

