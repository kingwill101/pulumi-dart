import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_disk_args.dart';
import 'backup_instance_disk_state.dart';

/// Manages a Backup Instance to back up Disk.
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
/// const exampleManagedDisk = new azure.compute.ManagedDisk("example", {
///     name: "example-disk",
///     location: example.location,
///     resourceGroupName: example.name,
///     storageAccountType: "Standard_LRS",
///     createOption: "Empty",
///     diskSizeGb: 1,
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
/// const example1 = new azure.authorization.Assignment("example1", {
///     scope: example.id,
///     roleDefinitionName: "Disk Snapshot Contributor",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const example2 = new azure.authorization.Assignment("example2", {
///     scope: exampleManagedDisk.id,
///     roleDefinitionName: "Disk Backup Reader",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const exampleBackupPolicyDisk = new azure.dataprotection.BackupPolicyDisk("example", {
///     name: "example-backup-policy",
///     vaultId: exampleBackupVault.id,
///     backupRepeatingTimeIntervals: ["R/2021-05-19T06:33:16+00:00/PT4H"],
///     defaultRetentionDuration: "P7D",
/// });
/// const exampleBackupInstanceDisk = new azure.dataprotection.BackupInstanceDisk("example", {
///     name: "example-backup-instance",
///     location: exampleBackupVault.location,
///     vaultId: exampleBackupVault.id,
///     diskId: exampleManagedDisk.id,
///     snapshotResourceGroupName: example.name,
///     backupPolicyId: exampleBackupPolicyDisk.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_managed_disk = azure.compute.ManagedDisk("example",
///     name="example-disk",
///     location=example.location,
///     resource_group_name=example.name,
///     storage_account_type="Standard_LRS",
///     create_option="Empty",
///     disk_size_gb=1)
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example-backup-vault",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example1 = azure.authorization.Assignment("example1",
///     scope=example.id,
///     role_definition_name="Disk Snapshot Contributor",
///     principal_id=example_backup_vault.identity.principal_id)
/// example2 = azure.authorization.Assignment("example2",
///     scope=example_managed_disk.id,
///     role_definition_name="Disk Backup Reader",
///     principal_id=example_backup_vault.identity.principal_id)
/// example_backup_policy_disk = azure.dataprotection.BackupPolicyDisk("example",
///     name="example-backup-policy",
///     vault_id=example_backup_vault.id,
///     backup_repeating_time_intervals=["R/2021-05-19T06:33:16+00:00/PT4H"],
///     default_retention_duration="P7D")
/// example_backup_instance_disk = azure.dataprotection.BackupInstanceDisk("example",
///     name="example-backup-instance",
///     location=example_backup_vault.location,
///     vault_id=example_backup_vault.id,
///     disk_id=example_managed_disk.id,
///     snapshot_resource_group_name=example.name,
///     backup_policy_id=example_backup_policy_disk.id)
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
///     var exampleManagedDisk = new Azure.Compute.ManagedDisk("example", new()
///     {
///         Name = "example-disk",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         StorageAccountType = "Standard_LRS",
///         CreateOption = "Empty",
///         DiskSizeGb = 1,
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
///     var example1 = new Azure.Authorization.Assignment("example1", new()
///     {
///         Scope = example.Id,
///         RoleDefinitionName = "Disk Snapshot Contributor",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var example2 = new Azure.Authorization.Assignment("example2", new()
///     {
///         Scope = exampleManagedDisk.Id,
///         RoleDefinitionName = "Disk Backup Reader",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var exampleBackupPolicyDisk = new Azure.DataProtection.BackupPolicyDisk("example", new()
///     {
///         Name = "example-backup-policy",
///         VaultId = exampleBackupVault.Id,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2021-05-19T06:33:16+00:00/PT4H",
///         },
///         DefaultRetentionDuration = "P7D",
///     });
///
///     var exampleBackupInstanceDisk = new Azure.DataProtection.BackupInstanceDisk("example", new()
///     {
///         Name = "example-backup-instance",
///         Location = exampleBackupVault.Location,
///         VaultId = exampleBackupVault.Id,
///         DiskId = exampleManagedDisk.Id,
///         SnapshotResourceGroupName = example.Name,
///         BackupPolicyId = exampleBackupPolicyDisk.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
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
/// 		exampleManagedDisk, err := compute.NewManagedDisk(ctx, "example", &compute.ManagedDiskArgs{
/// 			Name:               pulumi.String("example-disk"),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			StorageAccountType: pulumi.String("Standard_LRS"),
/// 			CreateOption:       pulumi.String("Empty"),
/// 			DiskSizeGb:         pulumi.Int(1),
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
/// 		_, err = authorization.NewAssignment(ctx, "example1", &authorization.AssignmentArgs{
/// 			Scope:              example.ID(),
/// 			RoleDefinitionName: pulumi.String("Disk Snapshot Contributor"),
/// 			PrincipalId: pulumi.String(exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 				return identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewAssignment(ctx, "example2", &authorization.AssignmentArgs{
/// 			Scope:              exampleManagedDisk.ID(),
/// 			RoleDefinitionName: pulumi.String("Disk Backup Reader"),
/// 			PrincipalId: pulumi.String(exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 				return identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupPolicyDisk, err := dataprotection.NewBackupPolicyDisk(ctx, "example", &dataprotection.BackupPolicyDiskArgs{
/// 			Name:    pulumi.String("example-backup-policy"),
/// 			VaultId: exampleBackupVault.ID(),
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-19T06:33:16+00:00/PT4H"),
/// 			},
/// 			DefaultRetentionDuration: pulumi.String("P7D"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupInstanceDisk(ctx, "example", &dataprotection.BackupInstanceDiskArgs{
/// 			Name:                      pulumi.String("example-backup-instance"),
/// 			Location:                  exampleBackupVault.Location,
/// 			VaultId:                   exampleBackupVault.ID(),
/// 			DiskId:                    exampleManagedDisk.ID(),
/// 			SnapshotResourceGroupName: example.Name,
/// 			BackupPolicyId:            exampleBackupPolicyDisk.ID(),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_compute_manageddisk" "example" {
///   name                 = "example-disk"
///   location             = azure_core_resourcegroup.example.location
///   resource_group_name  = azure_core_resourcegroup.example.name
///   storage_account_type = "Standard_LRS"
///   create_option        = "Empty"
///   disk_size_gb         = "1"
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
/// resource "azure_authorization_assignment" "example1" {
///   scope                = azure_core_resourcegroup.example.id
///   role_definition_name = "Disk Snapshot Contributor"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_authorization_assignment" "example2" {
///   scope                = azure_compute_manageddisk.example.id
///   role_definition_name = "Disk Backup Reader"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_dataprotection_backuppolicydisk" "example" {
///   name                            = "example-backup-policy"
///   vault_id                        = azure_dataprotection_backupvault.example.id
///   backup_repeating_time_intervals = ["R/2021-05-19T06:33:16+00:00/PT4H"]
///   default_retention_duration      = "P7D"
/// }
/// resource "azure_dataprotection_backupinstancedisk" "example" {
///   name                         = "example-backup-instance"
///   location                     = azure_dataprotection_backupvault.example.location
///   vault_id                     = azure_dataprotection_backupvault.example.id
///   disk_id                      = azure_compute_manageddisk.example.id
///   snapshot_resource_group_name = azure_core_resourcegroup.example.name
///   backup_policy_id             = azure_dataprotection_backuppolicydisk.example.id
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
/// import com.pulumi.azure.compute.ManagedDisk;
/// import com.pulumi.azure.compute.ManagedDiskArgs;
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupVaultIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.dataprotection.BackupPolicyDisk;
/// import com.pulumi.azure.dataprotection.BackupPolicyDiskArgs;
/// import com.pulumi.azure.dataprotection.BackupInstanceDisk;
/// import com.pulumi.azure.dataprotection.BackupInstanceDiskArgs;
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
///         var exampleManagedDisk = new ManagedDisk("exampleManagedDisk", ManagedDiskArgs.builder()
///             .name("example-disk")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .storageAccountType("Standard_LRS")
///             .createOption("Empty")
///             .diskSizeGb(1)
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
///         var example1 = new Assignment("example1", AssignmentArgs.builder()
///             .scope(example.id())
///             .roleDefinitionName("Disk Snapshot Contributor")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var example2 = new Assignment("example2", AssignmentArgs.builder()
///             .scope(exampleManagedDisk.id())
///             .roleDefinitionName("Disk Backup Reader")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleBackupPolicyDisk = new BackupPolicyDisk("exampleBackupPolicyDisk", BackupPolicyDiskArgs.builder()
///             .name("example-backup-policy")
///             .vaultId(exampleBackupVault.id())
///             .backupRepeatingTimeIntervals("R/2021-05-19T06:33:16+00:00/PT4H")
///             .defaultRetentionDuration("P7D")
///             .build());
///
///         var exampleBackupInstanceDisk = new BackupInstanceDisk("exampleBackupInstanceDisk", BackupInstanceDiskArgs.builder()
///             .name("example-backup-instance")
///             .location(exampleBackupVault.location())
///             .vaultId(exampleBackupVault.id())
///             .diskId(exampleManagedDisk.id())
///             .snapshotResourceGroupName(example.name())
///             .backupPolicyId(exampleBackupPolicyDisk.id())
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
///       name: example-resources
///       location: West Europe
///   exampleManagedDisk:
///     type: azure:compute:ManagedDisk
///     name: example
///     properties:
///       name: example-disk
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       storageAccountType: Standard_LRS
///       createOption: Empty
///       diskSizeGb: '1'
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
///   example1:
///     type: azure:authorization:Assignment
///     properties:
///       scope: ${example.id}
///       roleDefinitionName: Disk Snapshot Contributor
///       principalId: ${exampleBackupVault.identity.principalId}
///   example2:
///     type: azure:authorization:Assignment
///     properties:
///       scope: ${exampleManagedDisk.id}
///       roleDefinitionName: Disk Backup Reader
///       principalId: ${exampleBackupVault.identity.principalId}
///   exampleBackupPolicyDisk:
///     type: azure:dataprotection:BackupPolicyDisk
///     name: example
///     properties:
///       name: example-backup-policy
///       vaultId: ${exampleBackupVault.id}
///       backupRepeatingTimeIntervals:
///         - R/2021-05-19T06:33:16+00:00/PT4H
///       defaultRetentionDuration: P7D
///   exampleBackupInstanceDisk:
///     type: azure:dataprotection:BackupInstanceDisk
///     name: example
///     properties:
///       name: example-backup-instance
///       location: ${exampleBackupVault.location}
///       vaultId: ${exampleBackupVault.id}
///       diskId: ${exampleManagedDisk.id}
///       snapshotResourceGroupName: ${example.name}
///       backupPolicyId: ${exampleBackupPolicyDisk.id}
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
/// Backup Instance Disks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupInstanceDisk:BackupInstanceDisk example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupInstances/backupInstance1
/// ```
class BackupInstanceDisk extends pulumi.CustomResource {
  /// The ID of the Backup Policy.
  late final pulumi.Output<String> backupPolicyId;
  /// The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created.
  late final pulumi.Output<String> diskId;
  /// The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created.
  late final pulumi.Output<String> name;
  /// The protection state of the Backup Instance Disk.
  late final pulumi.Output<String> protectionState;
  /// The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created.
  late final pulumi.Output<String> snapshotResourceGroupName;
  /// The subscription ID of the Resource Group where snapshots are stored. The default value is the subscription ID of the Backup Vault. Changing this forces a new Backup Instance Disk to be created.
  late final pulumi.Output<String?> snapshotSubscriptionId;
  /// The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupInstanceDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupInstanceDisk]. {@macro pulumi_dataprotection_backup_instance_disk_backup_instance_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupInstanceDisk(
    String name, {
    BackupInstanceDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstanceDisk:BackupInstanceDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPolicyId = registerOutput<String>('backupPolicyId');
    diskId = registerOutput<String>('diskId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    snapshotResourceGroupName = registerOutput<String>('snapshotResourceGroupName');
    snapshotSubscriptionId = registerOutput<String?>('snapshotSubscriptionId');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [BackupInstanceDisk] resource's state with the given [name] and [id].
  static BackupInstanceDisk get(
    String name,
    pulumi.Input<String> id, {
    BackupInstanceDiskState? state,
  }) {
    return BackupInstanceDisk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupInstanceDisk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstanceDisk:BackupInstanceDisk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPolicyId = registerOutput<String>('backupPolicyId');
    diskId = registerOutput<String>('diskId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    snapshotResourceGroupName = registerOutput<String>('snapshotResourceGroupName');
    snapshotSubscriptionId = registerOutput<String?>('snapshotSubscriptionId');
    vaultId = registerOutput<String>('vaultId');
  }
}
