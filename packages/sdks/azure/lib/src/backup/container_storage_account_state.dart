// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContainerStorageAccount resources.
class ContainerStorageAccountState {
  /// The name of the vault where the storage account will be registered. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultName;
  /// Name of the resource group where the vault is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Storage Account to be registered Changing this forces a new resource to be created.
  ///
  /// > **Note:** Azure Backup places a Resource Lock on the storage account that will cause deletion to fail until the account is unregistered from Azure Backup
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [ContainerStorageAccountState].
  /// [recoveryVaultName] The name of the vault where the storage account will be registered. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault is located. Changing this forces a new resource to be created.
  /// [storageAccountId] The ID of the Storage Account to be registered Changing this forces a new resource to be created.
  ContainerStorageAccountState({
    pulumi.Output<String>? recoveryVaultName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? storageAccountId,
  }) :
      recoveryVaultName = pulumi.Input.asOptionalInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory ContainerStorageAccountState.fromMap(Map<String, dynamic> map) {
    return ContainerStorageAccountState(
      recoveryVaultName: map['recoveryVaultName'] == null ? null : pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

