// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backup_container_storage_account_container_storage_account_args_doc}
/// The set of arguments for ContainerStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_backup_container_storage_account_container_storage_account_args_doc}
class ContainerStorageAccountArgs {
  /// The name of the vault where the storage account will be registered. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// Name of the resource group where the vault is located. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Storage Account to be registered Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Azure Backup places a Resource Lock on the storage account that will cause deletion to fail until the account is unregistered from Azure Backup
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [ContainerStorageAccountArgs].
  /// [recoveryVaultName] The name of the vault where the storage account will be registered. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault is located. Changing this forces a new resource to be created.
  /// [storageAccountId] The ID of the Storage Account to be registered Changing this forces a new resource to be created.
  const ContainerStorageAccountArgs({
    required this.recoveryVaultName,
    required this.resourceGroupName,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
      'storageAccountId': storageAccountId,
    };
  }

  factory ContainerStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return ContainerStorageAccountArgs(
      recoveryVaultName: pulumi.Input.fromValue(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}

