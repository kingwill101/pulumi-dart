import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_storage_account_args.dart';
import 'container_storage_account_state.dart';

/// Manages registration of a storage account with Azure Backup. Storage accounts must be registered with an Azure Recovery Vault in order to backup file shares within the storage account. Registering a storage account with a vault creates what is known as a protection container within Azure Recovery Services. Once the container is created, Azure file shares within the storage account can be backed up using the `azure.backup.ProtectedFileShare` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-network-mapping-primary",
///     location: "West Europe",
/// });
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "example-recovery-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const sa = new azure.storage.Account("sa", {
///     name: "examplesa",
///     location: example.location,
///     resourceGroupName: example.name,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const container = new azure.backup.ContainerStorageAccount("container", {
///     resourceGroupName: example.name,
///     recoveryVaultName: vault.name,
///     storageAccountId: sa.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-network-mapping-primary",
///     location="West Europe")
/// vault = azure.recoveryservices.Vault("vault",
///     name="example-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// sa = azure.storage.Account("sa",
///     name="examplesa",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// container = azure.backup.ContainerStorageAccount("container",
///     resource_group_name=example.name,
///     recovery_vault_name=vault.name,
///     storage_account_id=sa.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "tfex-network-mapping-primary",
///         Location = "West Europe",
///     });
///
///     var vault = new Azure.RecoveryServices.Vault("vault", new()
///     {
///         Name = "example-recovery-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var sa = new Azure.Storage.Account("sa", new()
///     {
///         Name = "examplesa",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var container = new Azure.Backup.ContainerStorageAccount("container", new()
///     {
///         ResourceGroupName = example.Name,
///         RecoveryVaultName = vault.Name,
///         StorageAccountId = sa.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/backup"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-network-mapping-primary"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vault, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := storage.NewAccount(ctx, "sa", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			Location:               example.Location,
/// 			ResourceGroupName:      example.Name,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backup.NewContainerStorageAccount(ctx, "container", &backup.ContainerStorageAccountArgs{
/// 			ResourceGroupName: example.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			StorageAccountId:  sa.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.recoveryservices.Vault;
/// import com.pulumi.azure.recoveryservices.VaultArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.backup.ContainerStorageAccount;
/// import com.pulumi.azure.backup.ContainerStorageAccountArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("tfex-network-mapping-primary")
///             .location("West Europe")
///             .build());
///
///         var vault = new Vault("vault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .name("examplesa")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var container = new ContainerStorageAccount("container", ContainerStorageAccountArgs.builder()
///             .resourceGroupName(example.name())
///             .recoveryVaultName(vault.name())
///             .storageAccountId(sa.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tfex-network-mapping-primary
///       location: West Europe
///   vault:
///     type: azure:recoveryservices:Vault
///     properties:
///       name: example-recovery-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   sa:
///     type: azure:storage:Account
///     properties:
///       name: examplesa
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       accountTier: Standard
///       accountReplicationType: LRS
///   container:
///     type: azure:backup:ContainerStorageAccount
///     properties:
///       resourceGroupName: ${example.name}
///       recoveryVaultName: ${vault.name}
///       storageAccountId: ${sa.id}
/// ```
///
///
/// ## Import
///
/// Backup Storage Account Containers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:backup/containerStorageAccount:ContainerStorageAccount mycontainer "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/backupFabrics/Azure/protectionContainers/StorageContainer;storage;storage-rg-name;storage-account"
/// ```
///
/// Note the ID requires quoting as there are semicolons
class ContainerStorageAccount extends pulumi.CustomResource {
  /// The name of the vault where the storage account will be registered. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;
  /// Name of the resource group where the vault is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Storage Account to be registered Changing this forces a new resource to be created.
  ///
  /// > **Note:** Azure Backup places a Resource Lock on the storage account that will cause deletion to fail until the account is unregistered from Azure Backup
  late final pulumi.Output<String> storageAccountId;

  /// Creates a new [ContainerStorageAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerStorageAccount]. {@macro pulumi_backup_container_storage_account_container_storage_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerStorageAccount(
    String name, {
    ContainerStorageAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:backup/containerStorageAccount:ContainerStorageAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.recoveryVaultName = registerOutput<String>('recoveryVaultName');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }

  /// Gets an existing [ContainerStorageAccount] resource's state with the given [name] and [id].
  static ContainerStorageAccount get(
    String name,
    pulumi.Input<String> id, {
    ContainerStorageAccountState? state,
  }) {
    return ContainerStorageAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContainerStorageAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:backup/containerStorageAccount:ContainerStorageAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.recoveryVaultName = registerOutput<String>('recoveryVaultName');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.storageAccountId = registerOutput<String>('storageAccountId');
  }
}
