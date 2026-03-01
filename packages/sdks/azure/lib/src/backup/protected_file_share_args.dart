// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_protected_file_share_protected_file_share_args_doc}
/// The set of arguments for ProtectedFileShare.
/// {@endtemplate}
/// {@macro pulumi_backup_protected_file_share_protected_file_share_args_doc}
class ProtectedFileShareArgs {
  /// Specifies the ID of the backup policy to use. The policy must be an Azure File Share backup policy. Other types are not supported.
  final pulumi.Input<String> backupPolicyId;
  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// The name of the resource group in which to create the Azure Backup Protected File Share. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the file share to backup. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceFileShareName;
  /// Specifies the ID of the storage account of the file share to backup. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The storage account must already be registered with the recovery vault in order to backup shares within the account. You can use the `azure.backup.ContainerStorageAccount` resource or the [Register-AzRecoveryServicesBackupContainer PowerShell cmdlet](https://docs.microsoft.com/powershell/module/az.recoveryservices/register-azrecoveryservicesbackupcontainer?view=azps-3.2.0) to register a storage account with a vault. When using the `azure.backup.ContainerStorageAccount` resource to register, you can use `depends_on` to explicitly declare the dependency. It will make sure that the registration is completed before creating the `azure.backup.ProtectedFileShare` resource.
  final pulumi.Input<String> sourceStorageAccountId;

  /// Creates a new [ProtectedFileShareArgs].
  /// [backupPolicyId] Specifies the ID of the backup policy to use. The policy must be an Azure File Share backup policy. Other types are not supported.
  /// [recoveryVaultName] Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Azure Backup Protected File Share. Changing this forces a new resource to be created.
  /// [sourceFileShareName] Specifies the name of the file share to backup. Changing this forces a new resource to be created.
  /// [sourceStorageAccountId] Specifies the ID of the storage account of the file share to backup. Changing this forces a new resource to be created.
  ProtectedFileShareArgs({
    required pulumi.Output<String> backupPolicyId,
    required pulumi.Output<String> recoveryVaultName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceFileShareName,
    required pulumi.Output<String> sourceStorageAccountId,
  }) :
      backupPolicyId = pulumi.Input.asInput<String>(backupPolicyId),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceFileShareName = pulumi.Input.asInput<String>(sourceFileShareName),
      sourceStorageAccountId = pulumi.Input.asInput<String>(sourceStorageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': backupPolicyId,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
      'sourceFileShareName': sourceFileShareName,
      'sourceStorageAccountId': sourceStorageAccountId,
    };
  }

  factory ProtectedFileShareArgs.fromMap(Map<String, dynamic> map) {
    return ProtectedFileShareArgs(
      backupPolicyId: pulumi.Output.create<String>(map['backupPolicyId'] as String),
      recoveryVaultName: pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceFileShareName: pulumi.Output.create<String>(map['sourceFileShareName'] as String),
      sourceStorageAccountId: pulumi.Output.create<String>(map['sourceStorageAccountId'] as String),
    );
  }
}

