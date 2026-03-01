// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_get_backup_vault_get_backup_vault_args_doc}
/// Arguments for getBackupVault.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_get_backup_vault_get_backup_vault_args_doc}
class GetBackupVaultArgs {
  /// Specifies the name of the Backup Vault.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Backup Vault exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBackupVaultArgs].
  /// [name] Specifies the name of the Backup Vault.
  /// [resourceGroupName] The name of the Resource Group where the Backup Vault exists.
  GetBackupVaultArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

