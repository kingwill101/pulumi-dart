import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_mysql_flexible_server_args.dart';
import 'backup_instance_mysql_flexible_server_state.dart';

/// Manages a Backup Instance to back up MySQL Flexible Server.
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
/// const exampleFlexibleServer = new azure.mysql.FlexibleServer("example", {
///     name: "example-mysqlfs",
///     resourceGroupName: example.name,
///     location: example.location,
///     administratorLogin: "adminTerraform",
///     administratorPassword: "QAZwsx123",
///     version: "8.0.21",
///     skuName: "B_Standard_B1ms",
///     zone: "1",
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
///     roleDefinitionName: "MySQL Backup And Export Operator",
///     principalId: exampleBackupVault.identity.apply(identity => identity?.principalId),
/// });
/// const exampleBackupPolicyMysqlFlexibleServer = new azure.dataprotection.BackupPolicyMysqlFlexibleServer("example", {
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
/// const exampleBackupInstanceMysqlFlexibleServer = new azure.dataprotection.BackupInstanceMysqlFlexibleServer("example", {
///     name: "example-dbi",
///     location: example.location,
///     vaultId: exampleBackupVault.id,
///     serverId: exampleFlexibleServer.id,
///     backupPolicyId: exampleBackupPolicyMysqlFlexibleServer.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_flexible_server = azure.mysql.FlexibleServer("example",
///     name="example-mysqlfs",
///     resource_group_name=example.name,
///     location=example.location,
///     administrator_login="adminTerraform",
///     administrator_password="QAZwsx123",
///     version="8.0.21",
///     sku_name="B_Standard_B1ms",
///     zone="1")
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
///     role_definition_name="MySQL Backup And Export Operator",
///     principal_id=example_backup_vault.identity.principal_id)
/// example_backup_policy_mysql_flexible_server = azure.dataprotection.BackupPolicyMysqlFlexibleServer("example",
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
/// example_backup_instance_mysql_flexible_server = azure.dataprotection.BackupInstanceMysqlFlexibleServer("example",
///     name="example-dbi",
///     location=example.location,
///     vault_id=example_backup_vault.id,
///     server_id=example_flexible_server.id,
///     backup_policy_id=example_backup_policy_mysql_flexible_server.id)
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
///     var exampleFlexibleServer = new Azure.MySql.FlexibleServer("example", new()
///     {
///         Name = "example-mysqlfs",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AdministratorLogin = "adminTerraform",
///         AdministratorPassword = "QAZwsx123",
///         Version = "8.0.21",
///         SkuName = "B_Standard_B1ms",
///         Zone = "1",
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
///         RoleDefinitionName = "MySQL Backup And Export Operator",
///         PrincipalId = exampleBackupVault.Identity.Apply(identity => identity?.PrincipalId),
///     });
///
///     var exampleBackupPolicyMysqlFlexibleServer = new Azure.DataProtection.BackupPolicyMysqlFlexibleServer("example", new()
///     {
///         Name = "example-dp",
///         VaultId = exampleBackupVault.Id,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2021-05-23T02:30:00+00:00/P1W",
///         },
///         DefaultRetentionRule = new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleArgs
///         {
///             LifeCycles = new[]
///             {
///                 new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycleArgs
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
///     var exampleBackupInstanceMysqlFlexibleServer = new Azure.DataProtection.BackupInstanceMysqlFlexibleServer("example", new()
///     {
///         Name = "example-dbi",
///         Location = example.Location,
///         VaultId = exampleBackupVault.Id,
///         ServerId = exampleFlexibleServer.Id,
///         BackupPolicyId = exampleBackupPolicyMysqlFlexibleServer.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/mysql"
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
/// 		exampleFlexibleServer, err := mysql.NewFlexibleServer(ctx, "example", &mysql.FlexibleServerArgs{
/// 			Name:                  pulumi.String("example-mysqlfs"),
/// 			ResourceGroupName:     example.Name,
/// 			Location:              example.Location,
/// 			AdministratorLogin:    pulumi.String("adminTerraform"),
/// 			AdministratorPassword: pulumi.String("QAZwsx123"),
/// 			Version:               pulumi.String("8.0.21"),
/// 			SkuName:               pulumi.String("B_Standard_B1ms"),
/// 			Zone:                  pulumi.String("1"),
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
/// 			RoleDefinitionName: pulumi.String("MySQL Backup And Export Operator"),
/// 			PrincipalId: pulumi.String(exampleBackupVault.Identity.ApplyT(func(identity dataprotection.BackupVaultIdentity) (*string, error) {
/// 				return identity.PrincipalId, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupPolicyMysqlFlexibleServer, err := dataprotection.NewBackupPolicyMysqlFlexibleServer(ctx, "example", &dataprotection.BackupPolicyMysqlFlexibleServerArgs{
/// 			Name:    pulumi.String("example-dp"),
/// 			VaultId: exampleBackupVault.ID(),
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			DefaultRetentionRule: &dataprotection.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleArgs{
/// 				LifeCycles: dataprotection.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycleArray{
/// 					&dataprotection.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycleArgs{
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
/// 		_, err = dataprotection.NewBackupInstanceMysqlFlexibleServer(ctx, "example", &dataprotection.BackupInstanceMysqlFlexibleServerArgs{
/// 			Name:           pulumi.String("example-dbi"),
/// 			Location:       example.Location,
/// 			VaultId:        exampleBackupVault.ID(),
/// 			ServerId:       exampleFlexibleServer.ID(),
/// 			BackupPolicyId: exampleBackupPolicyMysqlFlexibleServer.ID(),
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
/// resource "azure_mysql_flexibleserver" "example" {
///   name                   = "example-mysqlfs"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   administrator_login    = "adminTerraform"
///   administrator_password = "QAZwsx123"
///   version                = "8.0.21"
///   sku_name               = "B_Standard_B1ms"
///   zone                   = "1"
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
///   scope                = azure_mysql_flexibleserver.example.id
///   role_definition_name = "MySQL Backup And Export Operator"
///   principal_id         = azure_dataprotection_backupvault.example.identity.principal_id
/// }
/// resource "azure_dataprotection_backuppolicymysqlflexibleserver" "example" {
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
/// resource "azure_dataprotection_backupinstancemysqlflexibleserver" "example" {
///   name             = "example-dbi"
///   location         = azure_core_resourcegroup.example.location
///   vault_id         = azure_dataprotection_backupvault.example.id
///   server_id        = azure_mysql_flexibleserver.example.id
///   backup_policy_id = azure_dataprotection_backuppolicymysqlflexibleserver.example.id
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
/// import com.pulumi.azure.mysql.FlexibleServer;
/// import com.pulumi.azure.mysql.FlexibleServerArgs;
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupVaultIdentityArgs;
/// import com.pulumi.azure.authorization.Assignment;
/// import com.pulumi.azure.authorization.AssignmentArgs;
/// import com.pulumi.azure.dataprotection.BackupPolicyMysqlFlexibleServer;
/// import com.pulumi.azure.dataprotection.BackupPolicyMysqlFlexibleServerArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycleArgs;
/// import com.pulumi.azure.dataprotection.BackupInstanceMysqlFlexibleServer;
/// import com.pulumi.azure.dataprotection.BackupInstanceMysqlFlexibleServerArgs;
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
///             .name("example-mysqlfs")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .administratorLogin("adminTerraform")
///             .administratorPassword("QAZwsx123")
///             .version("8.0.21")
///             .skuName("B_Standard_B1ms")
///             .zone("1")
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
///             .roleDefinitionName("MySQL Backup And Export Operator")
///             .principalId(exampleBackupVault.identity().applyValue(_identity -> _identity.principalId()))
///             .build());
///
///         var exampleBackupPolicyMysqlFlexibleServer = new BackupPolicyMysqlFlexibleServer("exampleBackupPolicyMysqlFlexibleServer", BackupPolicyMysqlFlexibleServerArgs.builder()
///             .name("example-dp")
///             .vaultId(exampleBackupVault.id())
///             .backupRepeatingTimeIntervals("R/2021-05-23T02:30:00+00:00/P1W")
///             .defaultRetentionRule(BackupPolicyMysqlFlexibleServerDefaultRetentionRuleArgs.builder()
///                 .lifeCycles(BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycleArgs.builder()
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
///         var exampleBackupInstanceMysqlFlexibleServer = new BackupInstanceMysqlFlexibleServer("exampleBackupInstanceMysqlFlexibleServer", BackupInstanceMysqlFlexibleServerArgs.builder()
///             .name("example-dbi")
///             .location(example.location())
///             .vaultId(exampleBackupVault.id())
///             .serverId(exampleFlexibleServer.id())
///             .backupPolicyId(exampleBackupPolicyMysqlFlexibleServer.id())
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
///     type: azure:mysql:FlexibleServer
///     name: example
///     properties:
///       name: example-mysqlfs
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       administratorLogin: adminTerraform
///       administratorPassword: QAZwsx123
///       version: 8.0.21
///       skuName: B_Standard_B1ms
///       zone: '1'
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
///       roleDefinitionName: MySQL Backup And Export Operator
///       principalId: ${exampleBackupVault.identity.principalId}
///   exampleBackupPolicyMysqlFlexibleServer:
///     type: azure:dataprotection:BackupPolicyMysqlFlexibleServer
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
///   exampleBackupInstanceMysqlFlexibleServer:
///     type: azure:dataprotection:BackupInstanceMysqlFlexibleServer
///     name: example
///     properties:
///       name: example-dbi
///       location: ${example.location}
///       vaultId: ${exampleBackupVault.id}
///       serverId: ${exampleFlexibleServer.id}
///       backupPolicyId: ${exampleBackupPolicyMysqlFlexibleServer.id}
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
/// Backup Instance MySQL Flexible Servers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupInstanceMysqlFlexibleServer:BackupInstanceMysqlFlexibleServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupInstances/backupInstance1
/// ```
class BackupInstanceMysqlFlexibleServer extends pulumi.CustomResource {
  /// The ID of the Backup Policy.
  late final pulumi.Output<String> backupPolicyId;
  /// The location of the source database. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Backup Instance for the MySQL Flexible Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The protection state of the Backup Instance MySQL Flexible Server.
  late final pulumi.Output<String> protectionState;
  /// The ID of the source server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serverId;
  /// The ID of the Backup Vault within which the MySQL Flexible Server Backup Instance should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupInstanceMysqlFlexibleServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupInstanceMysqlFlexibleServer]. {@macro pulumi_dataprotection_backup_instance_mysql_flexible_server_backup_instance_mysql_flexible_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupInstanceMysqlFlexibleServer(
    String name, {
    BackupInstanceMysqlFlexibleServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstanceMysqlFlexibleServer:BackupInstanceMysqlFlexibleServer',
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

  /// Gets an existing [BackupInstanceMysqlFlexibleServer] resource's state with the given [name] and [id].
  static BackupInstanceMysqlFlexibleServer get(
    String name,
    pulumi.Input<String> id, {
    BackupInstanceMysqlFlexibleServerState? state,
  }) {
    return BackupInstanceMysqlFlexibleServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupInstanceMysqlFlexibleServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupInstanceMysqlFlexibleServer:BackupInstanceMysqlFlexibleServer',
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
