import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_postgresql_flexible_server_args.dart';
import 'backup_instance_postgresql_flexible_server_state.dart';

/// Manages a Backup Instance to back up PostgreSQL Flexible Server.
///
/// &gt; **Note:** Before using this resource, there are some prerequisite permissions for configure backup and restore. See more details from &lt;https://learn.microsoft.com/azure/backup/backup-azure-database-postgresql-flex-overview&gt;.
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
/// const exampleFlexibleServer = new azure.postgresql.FlexibleServer("example", {
///     name: "example-postgresqlfs",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLogin: "adminTerraform",
///     administratorPassword: "QAZwsx123",
///     storageMb: 32768,
///     version: "12",
///     skuName: "GP_Standard_D4s_v3",
///     zone: "2",
/// });
/// const exampleBackupVault = new azure.dataprotection.BackupVault("example", {
///     name: "example-backupvault",
///     resourceGroupName: example.name,
///     location: example.location,
///     datastoreType: "VaultStore",
///     redundancy: "LocallyRedundant",
///     softDelete: "Off",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleAssignment = new azure.authorization.Assignment("example", {
///     scope: example.id,
///     roleDefinitionName: "Reader",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const example2 = new azure.authorization.Assignment("example2", {
///     scope: exampleFlexibleServer.id,
///     roleDefinitionName: "PostgreSQL Flexible Server Long Term Retention Backup Role",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const exampleBackupPolicyPostgresqlFlexibleServer = new azure.dataprotection.BackupPolicyPostgresqlFlexibleServer("example", {
///     name: "example-dp",
///     vaultId: exampleBackupVault.id,
///     backupRepeatingTimeIntervals: ["R/2021-05-23T02:30:00+00:00/P1W"],
///     defaultRetentionRule: {
///         lifeCycles: [{
///             duration: "P4M",
///             dataStoreType: "VaultStore",
///         }],
///     },
/// }, {
///     dependsOn: [
///         exampleAssignment,
///         example2,
///     ],
/// });
/// const exampleBackupInstancePostgresqlFlexibleServer = new azure.dataprotection.BackupInstancePostgresqlFlexibleServer("example", {
///     name: "example-dbi",
///     location: example.location,
///     vaultId: exampleBackupVault.id,
///     serverId: exampleFlexibleServer.id,
///     backupPolicyId: exampleBackupPolicyPostgresqlFlexibleServer.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_flexible_server = azure.postgresql.FlexibleServer("example",
///     name="example-postgresqlfs",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login="adminTerraform",
///     administrator_password="QAZwsx123",
///     storage_mb=32768,
///     version="12",
///     sku_name="GP_Standard_D4s_v3",
///     zone="2")
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example-backupvault",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant",
///     soft_delete="Off",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_assignment = azure.authorization.Assignment("example",
///     scope=example.id,
///     role_definition_name="Reader",
///     principal_id=example_backup_vault.identity.principal_id)
/// example2 = azure.authorization.Assignment("example2",
///     scope=example_flexible_server.id,
///     role_definition_name="PostgreSQL Flexible Server Long Term Retention Backup Role",
///     principal_id=example_backup_vault.identity.principal_id)
/// example_backup_policy_postgresql_flexible_server = azure.dataprotection.BackupPolicyPostgresqlFlexibleServer("example",
///     name="example-dp",
///     vault_id=example_backup_vault.id,
///     backup_repeating_time_intervals=["R/2021-05-23T02:30:00+00:00/P1W"],
///     default_retention_rule={
///         "life_cycles": [{
///             "duration": "P4M",
///             "data_store_type": "VaultStore",
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             example_assignment,
///             example2,
///         ]))
/// example_backup_instance_postgresql_flexible_server = azure.dataprotection.BackupInstancePostgresqlFlexibleServer("example",
///     name="example-dbi",
///     location=example.location,
///     vault_id=example_backup_vault.id,
///     server_id=example_flexible_server.id,
///     backup_policy_id=example_backup_policy_postgresql_flexible_server.id)
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
///     var exampleFlexibleServer = new Azure.PostgreSql.FlexibleServer("example", new()
///     {
///         Name = "example-postgresqlfs",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLogin = "adminTerraform",
///         AdministratorPassword = "QAZwsx123",
///         StorageMb = 32768,
///         Version = "12",
///         SkuName = "GP_Standard_D4s_v3",
///         Zone = "2",
///     });
///
///     var exampleBackupVault = new Azure.DataProtection.BackupVault("example", new()
///     {
///         Name = "example-backupvault",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DatastoreType = "VaultStore",
///         Redundancy = "LocallyRedundant",
///         SoftDelete = "Off",
///         Identity = new Azure.DataProtection.Inputs.BackupVaultIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleAssignment = new Azure.Authorization.Assignment("example", new()
///     {
///         Scope = example.Id,
///         RoleDefinitionName = "Reader",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var example2 = new Azure.Authorization.Assignment("example2", new()
///     {
///         Scope = exampleFlexibleServer.Id,
///         RoleDefinitionName = "PostgreSQL Flexible Server Long Term Retention Backup Role",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var exampleBackupPolicyPostgresqlFlexibleServer = new Azure.DataProtection.BackupPolicyPostgresqlFlexibleServer("example", new()
///     {
///         Name = "example-dp",
///         VaultId = exampleBackupVault.Id,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2021-05-23T02:30:00+00:00/P1W",
///         },
///         DefaultRetentionRule = new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleArgs
///         {
///             LifeCycles = new[]
///             {
///                 new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycleArgs
///                 {
///                     Duration = "P4M",
///                     DataStoreType = "VaultStore",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAssignment,
///             example2,
///         },
///     });
///
///     var exampleBackupInstancePostgresqlFlexibleServer = new Azure.DataProtection.BackupInstancePostgresqlFlexibleServer("example", new()
///     {
///         Name = "example-dbi",
///         Location = example.Location,
///         VaultId = exampleBackupVault.Id,
///         ServerId = exampleFlexibleServer.Id,
///         BackupPolicyId = exampleBackupPolicyPostgresqlFlexibleServer.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/postgresql"
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
/// 		exampleFlexibleServer, err := postgresql.NewFlexibleServer(ctx, "example", &postgresql.FlexibleServerArgs{
/// 			Name:                  pulumi.String("example-postgresqlfs"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorLogin:    pulumi.String("adminTerraform"),
/// 			AdministratorPassword: pulumi.String("QAZwsx123"),
/// 			StorageMb:             pulumi.Int(32768),
/// 			Version:               pulumi.String("12"),
/// 			SkuName:               pulumi.String("GP_Standard_D4s_v3"),
/// 			Zone:                  pulumi.String("2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupVault, err := dataprotection.NewBackupVault(ctx, "example", &dataprotection.BackupVaultArgs{
/// 			Name:              pulumi.String("example-backupvault"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DatastoreType:     pulumi.String("VaultStore"),
/// 			Redundancy:        pulumi.String("LocallyRedundant"),
/// 			SoftDelete:        pulumi.String("Off"),
/// 			Identity: &dataprotection.BackupVaultIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssignment, err := authorization.NewAssignment(ctx, "example", &authorization.AssignmentArgs{
/// 			Scope:              example.ID(),
/// 			RoleDefinitionName: pulumi.String("Reader"),
/// 			PrincipalId: pulumi.String(exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 				return identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := authorization.NewAssignment(ctx, "example2", &authorization.AssignmentArgs{
/// 			Scope:              exampleFlexibleServer.ID(),
/// 			RoleDefinitionName: pulumi.String("PostgreSQL Flexible Server Long Term Retention Backup Role"),
/// 			PrincipalId: pulumi.String(exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 				return identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupPolicyPostgresqlFlexibleServer, err := dataprotection.NewBackupPolicyPostgresqlFlexibleServer(ctx, "example", &dataprotection.BackupPolicyPostgresqlFlexibleServerArgs{
/// 			Name:    pulumi.String("example-dp"),
/// 			VaultId: exampleBackupVault.ID(),
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			DefaultRetentionRule: &dataprotection.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleArgs{
/// 				LifeCycles: dataprotection.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycleArray{
/// 					&dataprotection.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycleArgs{
/// 						Duration:      pulumi.String("P4M"),
/// 						DataStoreType: pulumi.String("VaultStore"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAssignment,
/// 			example2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupInstancePostgresqlFlexibleServer(ctx, "example", &dataprotection.BackupInstancePostgresqlFlexibleServerArgs{
/// 			Name:           pulumi.String("example-dbi"),
/// 			Location:       example.Location,
/// 			VaultId:        exampleBackupVault.ID(),
/// 			ServerId:       exampleFlexibleServer.ID(),
/// 			BackupPolicyId: exampleBackupPolicyPostgresqlFlexibleServer.ID(),
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
/// resource "azure_postgresql_flexibleserver" "example" {
///   name                   = "example-postgresqlfs"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   administrator_login    = "adminTerraform"
///   administrator_password = "QAZwsx123"
///   storage_mb             = 32768
///   version                = "12"
///   sku_name               = "GP_Standard_D4s_v3"
///   zone                   = "2"
/// }
/// resource "azure_dataprotection_backupvault" "example" {
///   name                = "example-backupvault"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   datastore_type      = "VaultStore"
///   redundancy          = "LocallyRedundant"
///   soft_delete         = "Off"
///   identity = {
///     type = "SystemAssigned"
///   }
/// }
/// resource "azure_authorization_assignment" "example" {
///   scope                = azure_core_resourcegroup.example.id
///   role_definition_name = "Reader"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_authorization_assignment" "example2" {
///   scope                = azure_postgresql_flexibleserver.example.id
///   role_definition_name = "PostgreSQL Flexible Server Long Term Retention Backup Role"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_dataprotection_backuppolicypostgresqlflexibleserver" "example" {
///   depends_on                      = [azure_authorization_assignment.example, azure_authorization_assignment.example2]
///   name                            = "example-dp"
///   vault_id                        = azure_dataprotection_backupvault.example.id
///   backup_repeating_time_intervals = ["R/2021-05-23T02:30:00+00:00/P1W"]
///   default_retention_rule = {
///     life_cycles = [{
///       "duration"      = "P4M"
///       "dataStoreType" = "VaultStore"
///     }]
///   }
/// }
/// resource "azure_dataprotection_backupinstancepostgresqlflexibleserver" "example" {
///   name             = "example-dbi"
///   location         = azure_core_resourcegroup.example.location
///   vault_id         = azure_dataprotection_backupvault.example.id
///   server_id        = azure_postgresql_flexibleserver.example.id
///   backup_policy_id = azure_dataprotection_backuppolicypostgresqlflexibleserver.example.id
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
/// import com.pulumi.azure.postgresql.FlexibleServer;
/// import com.pulumi.azure.postgresql.FlexibleServerArgs;
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupVaultIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.dataprotection.BackupPolicyPostgresqlFlexibleServer;
/// import com.pulumi.azure.dataprotection.BackupPolicyPostgresqlFlexibleServerArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycleArgs;
/// import com.pulumi.azure.dataprotection.BackupInstancePostgresqlFlexibleServer;
/// import com.pulumi.azure.dataprotection.BackupInstancePostgresqlFlexibleServerArgs;
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
///         var exampleFlexibleServer = new FlexibleServer("exampleFlexibleServer", FlexibleServerArgs.builder()
///             .name("example-postgresqlfs")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLogin("adminTerraform")
///             .administratorPassword("QAZwsx123")
///             .storageMb(32768)
///             .version("12")
///             .skuName("GP_Standard_D4s_v3")
///             .zone("2")
///             .build());
///
///         var exampleBackupVault = new BackupVault("exampleBackupVault", BackupVaultArgs.builder()
///             .name("example-backupvault")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datastoreType("VaultStore")
///             .redundancy("LocallyRedundant")
///             .softDelete("Off")
///             .identity(BackupVaultIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleAssignment = new Assignment("exampleAssignment", AssignmentArgs.builder()
///             .scope(example.id())
///             .roleDefinitionName("Reader")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var example2 = new Assignment("example2", AssignmentArgs.builder()
///             .scope(exampleFlexibleServer.id())
///             .roleDefinitionName("PostgreSQL Flexible Server Long Term Retention Backup Role")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleBackupPolicyPostgresqlFlexibleServer = new BackupPolicyPostgresqlFlexibleServer("exampleBackupPolicyPostgresqlFlexibleServer", BackupPolicyPostgresqlFlexibleServerArgs.builder()
///             .name("example-dp")
///             .vaultId(exampleBackupVault.id())
///             .backupRepeatingTimeIntervals("R/2021-05-23T02:30:00+00:00/P1W")
///             .defaultRetentionRule(BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleArgs.builder()
///                 .lifeCycles(BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycleArgs.builder()
///                     .duration("P4M")
///                     .dataStoreType("VaultStore")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     exampleAssignment,
///                     example2)
///                 .build());
///
///         var exampleBackupInstancePostgresqlFlexibleServer = new BackupInstancePostgresqlFlexibleServer("exampleBackupInstancePostgresqlFlexibleServer", BackupInstancePostgresqlFlexibleServerArgs.builder()
///             .name("example-dbi")
///             .location(example.location())
///             .vaultId(exampleBackupVault.id())
///             .serverId(exampleFlexibleServer.id())
///             .backupPolicyId(exampleBackupPolicyPostgresqlFlexibleServer.id())
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
///   exampleFlexibleServer:
///     type: azure:postgresql:FlexibleServer
///     name: example
///     properties:
///       name: example-postgresqlfs
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLogin: adminTerraform
///       administratorPassword: QAZwsx123
///       storageMb: 32768
///       version: '12'
///       skuName: GP_Standard_D4s_v3
///       zone: '2'
///   exampleBackupVault:
///     type: azure:dataprotection:BackupVault
///     name: example
///     properties:
///       name: example-backupvault
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       datastoreType: VaultStore
///       redundancy: LocallyRedundant
///       softDelete: Off
///       identity:
///         type: SystemAssigned
///   exampleAssignment:
///     type: azure:authorization:Assignment
///     name: example
///     properties:
///       scope: ${example.id}
///       roleDefinitionName: Reader
///       principalId: ${exampleBackupVault.identity.principalId}
///   example2:
///     type: azure:authorization:Assignment
///     properties:
///       scope: ${exampleFlexibleServer.id}
///       roleDefinitionName: PostgreSQL Flexible Server Long Term Retention Backup Role
///       principalId: ${exampleBackupVault.identity.principalId}
///   exampleBackupPolicyPostgresqlFlexibleServer:
///     type: azure:dataprotection:BackupPolicyPostgresqlFlexibleServer
///     name: example
///     properties:
///       name: example-dp
///       vaultId: ${exampleBackupVault.id}
///       backupRepeatingTimeIntervals:
///         - R/2021-05-23T02:30:00+00:00/P1W
///       defaultRetentionRule:
///         lifeCycles:
///           - duration: P4M
///             dataStoreType: VaultStore
///     options:
///       dependsOn:
///         - ${exampleAssignment}
///         - ${example2}
///   exampleBackupInstancePostgresqlFlexibleServer:
///     type: azure:dataprotection:BackupInstancePostgresqlFlexibleServer
///     name: example
///     properties:
///       name: example-dbi
///       location: ${example.location}
///       vaultId: ${exampleBackupVault.id}
///       serverId: ${exampleFlexibleServer.id}
///       backupPolicyId: ${exampleBackupPolicyPostgresqlFlexibleServer.id}
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
/// Backup Instance PostgreSQL Flexible Servers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupInstancePostgresqlFlexibleServer:BackupInstancePostgresqlFlexibleServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupInstances/backupInstance1
/// ```
class BackupInstancePostgresqlFlexibleServer extends pulumi.CustomResource {
  /// The ID of the Backup Policy.
  late final pulumi.Output<String> backupPolicyId;
  /// The location of the source database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Backup Instance for the PostgreSQL Flexible Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The protection state of the Backup Instance PostgreSQL Flexible Server.
  late final pulumi.Output<String> protectionState;
  /// The ID of the source server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverId;
  /// The ID of the Backup Vault within which the PostgreSQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupInstancePostgresqlFlexibleServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupInstancePostgresqlFlexibleServer]. {@macro pulumi_dataprotection_backup_instance_postgresql_flexible_server_backup_instance_postgresql_flexible_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupInstancePostgresqlFlexibleServer(
    String name, {
    BackupInstancePostgresqlFlexibleServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstancePostgresqlFlexibleServer:BackupInstancePostgresqlFlexibleServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPolicyId = registerOutput<String>('backupPolicyId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    serverId = registerOutput<String>('serverId');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [BackupInstancePostgresqlFlexibleServer] resource's state with the given [name] and [id].
  static BackupInstancePostgresqlFlexibleServer get(
    String name,
    pulumi.Input<String> id, {
    BackupInstancePostgresqlFlexibleServerState? state,
  }) {
    return BackupInstancePostgresqlFlexibleServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupInstancePostgresqlFlexibleServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstancePostgresqlFlexibleServer:BackupInstancePostgresqlFlexibleServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPolicyId = registerOutput<String>('backupPolicyId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    protectionState = registerOutput<String>('protectionState');
    serverId = registerOutput<String>('serverId');
    vaultId = registerOutput<String>('vaultId');
  }
}
