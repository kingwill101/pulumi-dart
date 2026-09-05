// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProtectedFileShare resources.
class ProtectedFileShareState {
  /// Specifies the ID of the backup policy to use. The policy must be an Azure File Share backup policy. Other types are not supported.
  final pulumi.Input<String?>? backupPolicyId;
  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? recoveryVaultName;
  /// The name of the resource group in which to create the Azure Backup Protected File Share. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// Specifies the name of the file share to backup. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sourceFileShareName;
  /// Specifies the ID of the storage account of the file share to backup. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The storage account must already be registered with the recovery vault in order to backup shares within the account. You can use the `azure.backup.ContainerStorageAccount` resource or the [Register-AzRecoveryServicesBackupContainer PowerShell cmdlet](https://docs.microsoft.com/powershell/module/az.recoveryservices/register-azrecoveryservicesbackupcontainer?view=azps-3.2.0) to register a storage account with a vault. When using the `azure.backup.ContainerStorageAccount` resource to register, you can use `dependsOn` to explicitly declare the dependency. It will make sure that the registration is completed before creating the `azure.backup.ProtectedFileShare` resource.
  final pulumi.Input<String?>? sourceStorageAccountId;

  /// Creates a new [ProtectedFileShareState].
  /// [backupPolicyId] Specifies the ID of the backup policy to use. The policy must be an Azure File Share backup policy. Other types are not supported.
  /// [recoveryVaultName] Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Azure Backup Protected File Share. Changing this forces a new resource to be created.
  /// [sourceFileShareName] Specifies the name of the file share to backup. Changing this forces a new resource to be created.
  /// [sourceStorageAccountId] Specifies the ID of the storage account of the file share to backup. Changing this forces a new resource to be created.
  const ProtectedFileShareState({
    this.backupPolicyId,
    this.recoveryVaultName,
    this.resourceGroupName,
    this.sourceFileShareName,
    this.sourceStorageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': ?backupPolicyId,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
      'sourceFileShareName': ?sourceFileShareName,
      'sourceStorageAccountId': ?sourceStorageAccountId,
    };
  }

  factory ProtectedFileShareState.fromMap(Map<String, dynamic> map) {
    return ProtectedFileShareState(
      backupPolicyId: (() { final guardedValue = map['backupPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryVaultName: (() { final guardedValue = map['recoveryVaultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceFileShareName: (() { final guardedValue = map['sourceFileShareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceStorageAccountId: (() { final guardedValue = map['sourceStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
