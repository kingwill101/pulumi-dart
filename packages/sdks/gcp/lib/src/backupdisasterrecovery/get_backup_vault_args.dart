// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_backup_vault_get_backup_vault_args_doc}
/// Arguments for getBackupVault.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_backup_vault_get_backup_vault_args_doc}
class GetBackupVaultArgs {
  /// The id of Backup Vault resource.
  ///
  /// - - -
  final pulumi.Input<String> backupVaultId;
  /// The location in which the Backup Vault resource belongs.
  final pulumi.Input<String> location;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupVaultArgs].
  /// [backupVaultId] The id of Backup Vault resource.
  /// [location] The location in which the Backup Vault resource belongs.
  /// [project] The project in which the resource belongs. If it
  GetBackupVaultArgs({
    required pulumi.Output<String> backupVaultId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      backupVaultId = pulumi.Input.asInput<String>(backupVaultId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupVaultId': backupVaultId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetBackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultArgs(
      backupVaultId: pulumi.Output.create<String>(map['backupVaultId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

