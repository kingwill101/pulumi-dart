import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_data_lake_storage_args.dart';
import 'backup_instance_data_lake_storage_state.dart';

/// Manages a Backup Instance to back up Data Lake Storage.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "storageaccountname",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
///     isHnsEnabled: true,
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example-container",
///     storageAccountId: exampleAccount.id,
/// });
/// const example2 = new azure.storage.Container("example2", {
///     name: "example-container2",
///     storageAccountId: exampleAccount.id,
/// });
/// const exampleBackupVault = new azure.dataprotection.BackupVault("example", {
///     name: "example-backup-vault",
///     resourceGroupName: example.name,
///     location: example.location,
///     datastoreType: "VaultStore",
///     redundancy: "LocallyRedundant",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: exampleAccount.id,
///     roleDefinitionName: "Storage Account Backup Contributor",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const exampleBackupPolicyDataLakeStorage = new azure.dataprotection.BackupPolicyDataLakeStorage("example", {
///     name: "example-backup-policy",
///     dataProtectionBackupVaultId: exampleBackupVault.id,
///     backupSchedules: ["R/2021-05-23T02:30:00+00:00/P1W"],
///     defaultRetentionDuration: "P4M",
/// });
/// const exampleBackupInstanceDataLakeStorage = new azure.dataprotection.BackupInstanceDataLakeStorage("example", {
///     name: "example-data-protection-backup-instance-data-lake-storage",
///     dataProtectionBackupVaultId: exampleBackupVault.id,
///     location: example.location,
///     storageAccountId: exampleAccount.id,
///     backupPolicyDataLakeStorageId: exampleBackupPolicyDataLakeStorage.id,
///     storageContainerNames: [
///         exampleContainer.name,
///         example2.name,
///     ],
/// }, {
///     dependsOn: [exampleAssignment],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="storageaccountname",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS",
///     is_hns_enabled=True)
/// example_container = azure.storage.Container("example",
///     name="example-container",
///     storage_account_id=example_account.id)
/// example2 = azure.storage.Container("example2",
///     name="example-container2",
///     storage_account_id=example_account.id)
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example-backup-vault",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example_account.id,
///     role_definition_name="Storage Account Backup Contributor",
///     principal_id=example_backup_vault.identity.principal_id)
/// example_backup_policy_data_lake_storage = azure.dataprotection.BackupPolicyDataLakeStorage("example",
///     name="example-backup-policy",
///     data_protection_backup_vault_id=example_backup_vault.id,
///     backup_schedules=["R/2021-05-23T02:30:00+00:00/P1W"],
///     default_retention_duration="P4M")
/// example_backup_instance_data_lake_storage = azure.dataprotection.BackupInstanceDataLakeStorage("example",
///     name="example-data-protection-backup-instance-data-lake-storage",
///     data_protection_backup_vault_id=example_backup_vault.id,
///     location=example.location,
///     storage_account_id=example_account.id,
///     backup_policy_data_lake_storage_id=example_backup_policy_data_lake_storage.id,
///     storage_container_names=[
///         example_container.name,
///         example2.name,
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[example_assignment]))
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "storageaccountname",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///         IsHnsEnabled = true,
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example-container",
///         StorageAccountId = exampleAccount.Id,
///     });
///
///     var example2 = new Azure.Storage.Container("example2", new()
///     {
///         Name = "example-container2",
///         StorageAccountId = exampleAccount.Id,
///     });
///
///     var exampleBackupVault = new Azure.DataProtection.BackupVault("example", new()
///     {
///         Name = "example-backup-vault",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DatastoreType = "VaultStore",
///         Redundancy = "LocallyRedundant",
///         Identity = new Azure.DataProtection.Inputs.BackupVaultIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = exampleAccount.Id,
///         RoleDefinitionName = "Storage Account Backup Contributor",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var exampleBackupPolicyDataLakeStorage = new Azure.DataProtection.BackupPolicyDataLakeStorage("example", new()
///     {
///         Name = "example-backup-policy",
///         DataProtectionBackupVaultId = exampleBackupVault.Id,
///         BackupSchedules = new[]
///         {
///             "R/2021-05-23T02:30:00+00:00/P1W",
///         },
///         DefaultRetentionDuration = "P4M",
///     });
///
///     var exampleBackupInstanceDataLakeStorage = new Azure.DataProtection.BackupInstanceDataLakeStorage("example", new()
///     {
///         Name = "example-data-protection-backup-instance-data-lake-storage",
///         DataProtectionBackupVaultId = exampleBackupVault.Id,
///         Location = example.Location,
///         StorageAccountId = exampleAccount.Id,
///         BackupPolicyDataLakeStorageId = exampleBackupPolicyDataLakeStorage.Id,
///         StorageContainerNames = new[]
///         {
///             exampleContainer.Name,
///             example2.Name,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("storageaccountname"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 			IsHnsEnabled:           pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:             pulumi.String("example-container"),
/// 			StorageAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := storage.NewContainer(ctx, "example2", &storage.ContainerArgs{
/// 			Name:             pulumi.String("example-container2"),
/// 			StorageAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupVault, err := dataprotection.NewBackupVault(ctx, "example", &dataprotection.BackupVaultArgs{
/// 			Name:              pulumi.String("example-backup-vault"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DatastoreType:     pulumi.String("VaultStore"),
/// 			Redundancy:        pulumi.String("LocallyRedundant"),
/// 			Identity: &dataprotection.BackupVaultIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			RoleDefinitionName: pulumi.String("Storage Account Backup Contributor"),
/// 			PrincipalId:        exampleBackupVault.Identity.PrincipalId(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupPolicyDataLakeStorage, err := dataprotection.NewBackupPolicyDataLakeStorage(ctx, "example", &dataprotection.BackupPolicyDataLakeStorageArgs{
/// 			Name:                        pulumi.String("example-backup-policy"),
/// 			DataProtectionBackupVaultId: exampleBackupVault.ID().ToIDOutput().ToStringOutput(),
/// 			BackupSchedules: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			DefaultRetentionDuration: pulumi.String("P4M"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupInstanceDataLakeStorage(ctx, "example", &dataprotection.BackupInstanceDataLakeStorageArgs{
/// 			Name:                          pulumi.String("example-data-protection-backup-instance-data-lake-storage"),
/// 			DataProtectionBackupVaultId:   exampleBackupVault.ID().ToIDOutput().ToStringOutput(),
/// 			Location:                      example.Location,
/// 			StorageAccountId:              exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 			BackupPolicyDataLakeStorageId: exampleBackupPolicyDataLakeStorage.ID().ToIDOutput().ToStringOutput(),
/// 			StorageContainerNames: pulumi.StringArray{
/// 				exampleContainer.Name,
/// 				example2.Name,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
/// 		}))
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "storageaccountname"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
///   is_hns_enabled           = true
/// }
/// resource "azure_storage_container" "example" {
///   name               = "example-container"
///   storage_account_id = azure_storage_account.example.id
/// }
/// resource "azure_storage_container" "example2" {
///   name               = "example-container2"
///   storage_account_id = azure_storage_account.example.id
/// }
/// resource "azure_dataprotection_backupvault" "example" {
///   name                = "example-backup-vault"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   datastore_type      = "VaultStore"
///   redundancy          = "LocallyRedundant"
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_authorization_assignment" "example" {
///   scope                = azure_storage_account.example.id
///   role_definition_name = "Storage Account Backup Contributor"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_dataprotection_backuppolicydatalakestorage" "example" {
///   name                            = "example-backup-policy"
///   data_protection_backup_vault_id = azure_dataprotection_backupvault.example.id
///   backup_schedules                = ["R/2021-05-23T02:30:00+00:00/P1W"]
///   default_retention_duration      = "P4M"
/// }
/// resource "azure_dataprotection_backupinstancedatalakestorage" "example" {
///   depends_on                         = [azure_authorization_assignment.example]
///   name                               = "example-data-protection-backup-instance-data-lake-storage"
///   data_protection_backup_vault_id    = azure_dataprotection_backupvault.example.id
///   location                           = azure_core_resourcegroup.example.location
///   storage_account_id                 = azure_storage_account.example.id
///   backup_policy_data_lake_storage_id = azure_dataprotection_backuppolicydatalakestorage.example.id
///   storage_container_names            = [azure_storage_container.example.name, azure_storage_container.example2.name]
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupVaultIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.dataprotection.BackupPolicyDataLakeStorage;
/// import com.pulumi.azure.dataprotection.BackupPolicyDataLakeStorageArgs;
/// import com.pulumi.azure.dataprotection.BackupInstanceDataLakeStorage;
/// import com.pulumi.azure.dataprotection.BackupInstanceDataLakeStorageArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("storageaccountname")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .isHnsEnabled(true)
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example-container")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         var example2 = new Container("example2", ContainerArgs.builder()
///             .name("example-container2")
///             .storageAccountId(exampleAccount.id())
///             .build());
///
///         var exampleBackupVault = new BackupVault("exampleBackupVault", BackupVaultArgs.builder()
///             .name("example-backup-vault")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datastoreType("VaultStore")
///             .redundancy("LocallyRedundant")
///             .identity(BackupVaultIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(exampleAccount.id())
///             .roleDefinitionName("Storage Account Backup Contributor")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleBackupPolicyDataLakeStorage = new BackupPolicyDataLakeStorage("exampleBackupPolicyDataLakeStorage", BackupPolicyDataLakeStorageArgs.builder()
///             .name("example-backup-policy")
///             .dataProtectionBackupVaultId(exampleBackupVault.id())
///             .backupSchedules("R/2021-05-23T02:30:00+00:00/P1W")
///             .defaultRetentionDuration("P4M")
///             .build());
///
///         var exampleBackupInstanceDataLakeStorage = new BackupInstanceDataLakeStorage("exampleBackupInstanceDataLakeStorage", BackupInstanceDataLakeStorageArgs.builder()
///             .name("example-data-protection-backup-instance-data-lake-storage")
///             .dataProtectionBackupVaultId(exampleBackupVault.id())
///             .location(example.location())
///             .storageAccountId(exampleAccount.id())
///             .backupPolicyDataLakeStorageId(exampleBackupPolicyDataLakeStorage.id())
///             .storageContainerNames(
///                 exampleContainer.name(),
///                 example2.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAssignment)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: storageaccountname
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///       isHnsEnabled: true
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example-container
///       storageAccountId: ${exampleAccount.id}
///   example2:
///     type: azure:storage:Container
///     properties:
///       name: example-container2
///       storageAccountId: ${exampleAccount.id}
///   exampleBackupVault:
///     type: azure:dataprotection:BackupVault
///     name: example
///     properties:
///       name: example-backup-vault
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       datastoreType: VaultStore
///       redundancy: LocallyRedundant
///       identity:
///         type: SystemAssigned
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${exampleAccount.id}
///       roleDefinitionName: Storage Account Backup Contributor
///       principalId: ${exampleBackupVault.identity.principalId}
///   exampleBackupPolicyDataLakeStorage:
///     type: azure:dataprotection:BackupPolicyDataLakeStorage
///     name: example
///     properties:
///       name: example-backup-policy
///       dataProtectionBackupVaultId: ${exampleBackupVault.id}
///       backupSchedules:
///         - R/2021-05-23T02:30:00+00:00/P1W
///       defaultRetentionDuration: P4M
///   exampleBackupInstanceDataLakeStorage:
///     type: azure:dataprotection:BackupInstanceDataLakeStorage
///     name: example
///     properties:
///       name: example-data-protection-backup-instance-data-lake-storage
///       dataProtectionBackupVaultId: ${exampleBackupVault.id}
///       location: ${example.location}
///       storageAccountId: ${exampleAccount.id}
///       backupPolicyDataLakeStorageId: ${exampleBackupPolicyDataLakeStorage.id}
///       storageContainerNames:
///         - ${exampleContainer.name}
///         - ${example2.name}
///     options:
///       dependsOn:
///         - ${exampleAssignment}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataProtection` - 2025-07-01
///
/// ## Import
///
/// Backup Instance Data Lake Storages can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupInstanceDataLakeStorage:BackupInstanceDataLakeStorage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupInstances/backupInstance1
/// ```
class BackupInstanceDataLakeStorage extends pulumi.CustomResource {
  /// The ID of the Backup Policy.
  late final pulumi.Output<String> backupPolicyDataLakeStorageId;
  /// The ID of the Backup Vault within which the Backup Instance Data Lake Storage should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataProtectionBackupVaultId;
  /// The location of the source Storage Account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Backup Instance Data Lake Storage. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The protection state of the Backup Instance Data Lake Storage.
  late final pulumi.Output<String> protectionState;
  /// The ID of the source Storage Account. The Storage Account must have Hierarchical Namespace enabled. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountId;
  /// The names of the storage containers of the source Storage Account.
  late final pulumi.Output<List<String>> storageContainerNames;

  /// Creates a new [BackupInstanceDataLakeStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupInstanceDataLakeStorage]. {@macro pulumi_dataprotection_backup_instance_data_lake_storage_backup_instance_data_lake_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupInstanceDataLakeStorage(
    String name, {
    BackupInstanceDataLakeStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstanceDataLakeStorage:BackupInstanceDataLakeStorage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    backupPolicyDataLakeStorageId = registerOutput<String>('backupPolicyDataLakeStorageId');
    dataProtectionBackupVaultId = registerOutput<String>('dataProtectionBackupVaultId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    storageAccountId = registerOutput<String>('storageAccountId');
    storageContainerNames = registerOutput<List<String>>('storageContainerNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [BackupInstanceDataLakeStorage] resource's state with the given [name] and [id].
  static BackupInstanceDataLakeStorage get(
    String name,
    pulumi.Input<String> id, {
    BackupInstanceDataLakeStorageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BackupInstanceDataLakeStorage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BackupInstanceDataLakeStorage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstanceDataLakeStorage:BackupInstanceDataLakeStorage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPolicyDataLakeStorageId = registerOutput<String>('backupPolicyDataLakeStorageId');
    dataProtectionBackupVaultId = registerOutput<String>('dataProtectionBackupVaultId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    storageAccountId = registerOutput<String>('storageAccountId');
    storageContainerNames = registerOutput<List<String>>('storageContainerNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [BackupInstanceDataLakeStorage] resource.
  BackupInstanceDataLakeStorage.reference(String urn)
    : super(
        'azure:dataprotection/backupInstanceDataLakeStorage:BackupInstanceDataLakeStorage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    backupPolicyDataLakeStorageId = registerOutput<String>('backupPolicyDataLakeStorageId');
    dataProtectionBackupVaultId = registerOutput<String>('dataProtectionBackupVaultId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    storageAccountId = registerOutput<String>('storageAccountId');
    storageContainerNames = registerOutput<List<String>>('storageContainerNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
