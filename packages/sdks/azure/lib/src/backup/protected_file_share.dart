import 'package:pulumi/pulumi.dart' as pulumi;
import 'protected_file_share_args.dart';
import 'protected_file_share_state.dart';

/// Manages an Azure Backup Protected File Share to enable backups for file shares within an Azure Storage Account
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-recovery_vault",
///     location: "West Europe",
/// });
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "tfex-recovery-vault",
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
/// const exampleShare = new azure.storage.Share("example", {
///     name: "example-share",
///     storageAccountName: sa.name,
///     quota: 1,
/// });
/// const protection_container = new azure.backup.ContainerStorageAccount("protection-container", {
///     resourceGroupName: example.name,
///     recoveryVaultName: vault.name,
///     storageAccountId: sa.id,
/// });
/// const examplePolicyFileShare = new azure.backup.PolicyFileShare("example", {
///     name: "tfex-recovery-vault-policy",
///     resourceGroupName: example.name,
///     recoveryVaultName: vault.name,
///     backup: {
///         frequency: "Daily",
///         time: "23:00",
///     },
///     retentionDaily: {
///         count: 10,
///     },
/// });
/// const share1 = new azure.backup.ProtectedFileShare("share1", {
///     resourceGroupName: example.name,
///     recoveryVaultName: vault.name,
///     sourceStorageAccountId: protection_container.storageAccountId,
///     sourceFileShareName: exampleShare.name,
///     backupPolicyId: examplePolicyFileShare.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-recovery_vault",
///     location="West Europe")
/// vault = azure.recoveryservices.Vault("vault",
///     name="tfex-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// sa = azure.storage.Account("sa",
///     name="examplesa",
///     location=example.location,
///     resource_group_name=example.name,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_share = azure.storage.Share("example",
///     name="example-share",
///     storage_account_name=sa.name,
///     quota=1)
/// protection_container = azure.backup.ContainerStorageAccount("protection-container",
///     resource_group_name=example.name,
///     recovery_vault_name=vault.name,
///     storage_account_id=sa.id)
/// example_policy_file_share = azure.backup.PolicyFileShare("example",
///     name="tfex-recovery-vault-policy",
///     resource_group_name=example.name,
///     recovery_vault_name=vault.name,
///     backup={
///         "frequency": "Daily",
///         "time": "23:00",
///     },
///     retention_daily={
///         "count": 10,
///     })
/// share1 = azure.backup.ProtectedFileShare("share1",
///     resource_group_name=example.name,
///     recovery_vault_name=vault.name,
///     source_storage_account_id=protection_container.storage_account_id,
///     source_file_share_name=example_share.name,
///     backup_policy_id=example_policy_file_share.id)
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
///         Name = "tfex-recovery_vault",
///         Location = "West Europe",
///     });
///
///     var vault = new Azure.RecoveryServices.Vault("vault", new()
///     {
///         Name = "tfex-recovery-vault",
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
///     var exampleShare = new Azure.Storage.Share("example", new()
///     {
///         Name = "example-share",
///         StorageAccountName = sa.Name,
///         Quota = 1,
///     });
///
///     var protection_container = new Azure.Backup.ContainerStorageAccount("protection-container", new()
///     {
///         ResourceGroupName = example.Name,
///         RecoveryVaultName = vault.Name,
///         StorageAccountId = sa.Id,
///     });
///
///     var examplePolicyFileShare = new Azure.Backup.PolicyFileShare("example", new()
///     {
///         Name = "tfex-recovery-vault-policy",
///         ResourceGroupName = example.Name,
///         RecoveryVaultName = vault.Name,
///         Backup = new Azure.Backup.Inputs.PolicyFileShareBackupArgs
///         {
///             Frequency = "Daily",
///             Time = "23:00",
///         },
///         RetentionDaily = new Azure.Backup.Inputs.PolicyFileShareRetentionDailyArgs
///         {
///             Count = 10,
///         },
///     });
///
///     var share1 = new Azure.Backup.ProtectedFileShare("share1", new()
///     {
///         ResourceGroupName = example.Name,
///         RecoveryVaultName = vault.Name,
///         SourceStorageAccountId = protection_container.StorageAccountId,
///         SourceFileShareName = exampleShare.Name,
///         BackupPolicyId = examplePolicyFileShare.Id,
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
/// 			Name:     pulumi.String("tfex-recovery_vault"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vault, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("tfex-recovery-vault"),
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
/// 		exampleShare, err := storage.NewShare(ctx, "example", &storage.ShareArgs{
/// 			Name:               pulumi.String("example-share"),
/// 			StorageAccountName: sa.Name,
/// 			Quota:              pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		protection_container, err := backup.NewContainerStorageAccount(ctx, "protection-container", &backup.ContainerStorageAccountArgs{
/// 			ResourceGroupName: example.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			StorageAccountId:  sa.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePolicyFileShare, err := backup.NewPolicyFileShare(ctx, "example", &backup.PolicyFileShareArgs{
/// 			Name:              pulumi.String("tfex-recovery-vault-policy"),
/// 			ResourceGroupName: example.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			Backup: &backup.PolicyFileShareBackupArgs{
/// 				Frequency: pulumi.String("Daily"),
/// 				Time:      pulumi.String("23:00"),
/// 			},
/// 			RetentionDaily: &backup.PolicyFileShareRetentionDailyArgs{
/// 				Count: pulumi.Int(10),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backup.NewProtectedFileShare(ctx, "share1", &backup.ProtectedFileShareArgs{
/// 			ResourceGroupName:      example.Name,
/// 			RecoveryVaultName:      vault.Name,
/// 			SourceStorageAccountId: protection_container.StorageAccountId,
/// 			SourceFileShareName:    exampleShare.Name,
/// 			BackupPolicyId:         examplePolicyFileShare.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "tfex-recovery_vault"
///   location = "West Europe"
/// }
/// resource "azure_recoveryservices_vault" "vault" {
///   name                = "tfex-recovery-vault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
/// }
/// resource "azure_storage_account" "sa" {
///   name                     = "examplesa"
///   location                 = azure_core_resourcegroup.example.location
///   resource_group_name      = azure_core_resourcegroup.example.name
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_storage_share" "example" {
///   name                 = "example-share"
///   storage_account_name = azure_storage_account.sa.name
///   quota                = 1
/// }
/// resource "azure_backup_containerstorageaccount" "protection-container" {
///   resource_group_name = azure_core_resourcegroup.example.name
///   recovery_vault_name = azure_recoveryservices_vault.vault.name
///   storage_account_id  = azure_storage_account.sa.id
/// }
/// resource "azure_backup_policyfileshare" "example" {
///   name                = "tfex-recovery-vault-policy"
///   resource_group_name = azure_core_resourcegroup.example.name
///   recovery_vault_name = azure_recoveryservices_vault.vault.name
///   backup = {
///     frequency = "Daily"
///     time      = "23:00"
///   }
///   retention_daily = {
///     count = 10
///   }
/// }
/// resource "azure_backup_protectedfileshare" "share1" {
///   resource_group_name       = azure_core_resourcegroup.example.name
///   recovery_vault_name       = azure_recoveryservices_vault.vault.name
///   source_storage_account_id = azure_backup_containerstorageaccount.protection-container.storage_account_id
///   source_file_share_name    = azure_storage_share.example.name
///   backup_policy_id          = azure_backup_policyfileshare.example.id
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
/// import com.pulumi.azure.storage.Share;
/// import com.pulumi.azure.storage.ShareArgs;
/// import com.pulumi.azure.backup.ContainerStorageAccount;
/// import com.pulumi.azure.backup.ContainerStorageAccountArgs;
/// import com.pulumi.azure.backup.PolicyFileShare;
/// import com.pulumi.azure.backup.PolicyFileShareArgs;
/// import com.pulumi.azure.backup.inputs.PolicyFileShareBackupArgs;
/// import com.pulumi.azure.backup.inputs.PolicyFileShareRetentionDailyArgs;
/// import com.pulumi.azure.backup.ProtectedFileShare;
/// import com.pulumi.azure.backup.ProtectedFileShareArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("tfex-recovery_vault")
///             .location("West Europe")
///             .build());
///
///         var vault = new Vault("vault", VaultArgs.builder()
///             .name("tfex-recovery-vault")
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
///         var exampleShare = new Share("exampleShare", ShareArgs.builder()
///             .name("example-share")
///             .storageAccountName(sa.name())
///             .quota(1)
///             .build());
///
///         var protection_container = new ContainerStorageAccount("protection-container", ContainerStorageAccountArgs.builder()
///             .resourceGroupName(example.name())
///             .recoveryVaultName(vault.name())
///             .storageAccountId(sa.id())
///             .build());
///
///         var examplePolicyFileShare = new PolicyFileShare("examplePolicyFileShare", PolicyFileShareArgs.builder()
///             .name("tfex-recovery-vault-policy")
///             .resourceGroupName(example.name())
///             .recoveryVaultName(vault.name())
///             .backup(PolicyFileShareBackupArgs.builder()
///                 .frequency("Daily")
///                 .time("23:00")
///                 .build())
///             .retentionDaily(PolicyFileShareRetentionDailyArgs.builder()
///                 .count(10)
///                 .build())
///             .build());
///
///         var share1 = new ProtectedFileShare("share1", ProtectedFileShareArgs.builder()
///             .resourceGroupName(example.name())
///             .recoveryVaultName(vault.name())
///             .sourceStorageAccountId(protection_container.storageAccountId())
///             .sourceFileShareName(exampleShare.name())
///             .backupPolicyId(examplePolicyFileShare.id())
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
///       name: tfex-recovery_vault
///       location: West Europe
///   vault:
///     type: azure:recoveryservices:Vault
///     properties:
///       name: tfex-recovery-vault
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
///   exampleShare:
///     type: azure:storage:Share
///     name: example
///     properties:
///       name: example-share
///       storageAccountName: ${sa.name}
///       quota: 1
///   protection-container:
///     type: azure:backup:ContainerStorageAccount
///     properties:
///       resourceGroupName: ${example.name}
///       recoveryVaultName: ${vault.name}
///       storageAccountId: ${sa.id}
///   examplePolicyFileShare:
///     type: azure:backup:PolicyFileShare
///     name: example
///     properties:
///       name: tfex-recovery-vault-policy
///       resourceGroupName: ${example.name}
///       recoveryVaultName: ${vault.name}
///       backup:
///         frequency: Daily
///         time: 23:00
///       retentionDaily:
///         count: 10
///   share1:
///     type: azure:backup:ProtectedFileShare
///     properties:
///       resourceGroupName: ${example.name}
///       recoveryVaultName: ${vault.name}
///       sourceStorageAccountId: ${["protection-container"].storageAccountId}
///       sourceFileShareName: ${exampleShare.name}
///       backupPolicyId: ${examplePolicyFileShare.id}
/// ```
///
///
/// ## Import
///
/// Azure Backup Protected File Shares can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:backup/protectedFileShare:ProtectedFileShare item1 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.RecoveryServices/vaults/example-recovery-vault/backupFabrics/Azure/protectionContainers/StorageContainer;storage;group2;example-storage-account/protectedItems/AzureFileShare;3f6e3108a45793581bcbd1c61c87a3b2ceeb4ff4bc02a95ce9d1022b23722935"
/// ```
///
/// &gt; **Note:** The ID requires quoting as there are semicolons. This user unfriendly ID can be found in the Deployments of the used resourcegroup, look for an Deployment which starts with `ConfigureAFSProtection-`, click then `Go to resource`.
class ProtectedFileShare extends pulumi.CustomResource {
  /// Specifies the ID of the backup policy to use. The policy must be an Azure File Share backup policy. Other types are not supported.
  late final pulumi.Output<String> backupPolicyId;
  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;
  /// The name of the resource group in which to create the Azure Backup Protected File Share. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the file share to backup. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceFileShareName;
  /// Specifies the ID of the storage account of the file share to backup. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The storage account must already be registered with the recovery vault in order to backup shares within the account. You can use the `azure.backup.ContainerStorageAccount` resource or the [Register-AzRecoveryServicesBackupContainer PowerShell cmdlet](https://docs.microsoft.com/powershell/module/az.recoveryservices/register-azrecoveryservicesbackupcontainer?view=azps-3.2.0) to register a storage account with a vault. When using the `azure.backup.ContainerStorageAccount` resource to register, you can use `dependsOn` to explicitly declare the dependency. It will make sure that the registration is completed before creating the `azure.backup.ProtectedFileShare` resource.
  late final pulumi.Output<String> sourceStorageAccountId;

  /// Creates a new [ProtectedFileShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectedFileShare]. {@macro pulumi_backup_protected_file_share_protected_file_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectedFileShare(
    String name, {
    ProtectedFileShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:backup/protectedFileShare:ProtectedFileShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    backupPolicyId = registerOutput<String>('backupPolicyId');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceFileShareName = registerOutput<String>('sourceFileShareName');
    sourceStorageAccountId = registerOutput<String>('sourceStorageAccountId');
  }

  /// Gets an existing [ProtectedFileShare] resource's state with the given [name] and [id].
  static ProtectedFileShare get(
    String name,
    pulumi.Input<String> id, {
    ProtectedFileShareState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProtectedFileShare._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProtectedFileShare._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:backup/protectedFileShare:ProtectedFileShare',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPolicyId = registerOutput<String>('backupPolicyId');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceFileShareName = registerOutput<String>('sourceFileShareName');
    sourceStorageAccountId = registerOutput<String>('sourceStorageAccountId');
  }

  /// Creates a typed reference to an existing [ProtectedFileShare] resource.
  ProtectedFileShare.reference(String urn)
    : super(
        'azure:backup/protectedFileShare:ProtectedFileShare',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    backupPolicyId = registerOutput<String>('backupPolicyId');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceFileShareName = registerOutput<String>('sourceFileShareName');
    sourceStorageAccountId = registerOutput<String>('sourceStorageAccountId');
  }
}
