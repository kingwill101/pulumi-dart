import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_postgresql_flexible_server_args.dart';
import 'backup_policy_postgresql_flexible_server_default_retention_rule.dart';
import 'backup_policy_postgresql_flexible_server_retention_rule.dart';
import 'backup_policy_postgresql_flexible_server_state.dart';

/// Manages a Backup Policy to back up PostgreSQL Flexible Server.
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
/// const exampleBackupPolicyPostgresqlFlexibleServer = new azure.dataprotection.BackupPolicyPostgresqlFlexibleServer("example", {
///     name: "example-backup-policy",
///     vaultId: exampleBackupVault.id,
///     backupRepeatingTimeIntervals: ["R/2021-05-23T02:30:00+00:00/P1W"],
///     timeZone: "India Standard Time",
///     defaultRetentionRule: {
///         lifeCycles: [{
///             duration: "P4M",
///             dataStoreType: "VaultStore",
///         }],
///     },
///     retentionRules: [
///         {
///             name: "weekly",
///             lifeCycles: [{
///                 duration: "P6M",
///                 dataStoreType: "VaultStore",
///             }],
///             priority: 20,
///             criteria: {
///                 absoluteCriteria: "FirstOfWeek",
///             },
///         },
///         {
///             name: "thursday",
///             lifeCycles: [{
///                 duration: "P1W",
///                 dataStoreType: "VaultStore",
///             }],
///             priority: 25,
///             criteria: {
///                 daysOfWeeks: ["Thursday"],
///                 scheduledBackupTimes: ["2021-05-23T02:30:00Z"],
///             },
///         },
///         {
///             name: "monthly",
///             lifeCycles: [{
///                 duration: "P1D",
///                 dataStoreType: "VaultStore",
///             }],
///             priority: 15,
///             criteria: {
///                 weeksOfMonths: [
///                     "First",
///                     "Last",
///                 ],
///                 daysOfWeeks: ["Tuesday"],
///                 scheduledBackupTimes: ["2021-05-23T02:30:00Z"],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example-backup-vault",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_backup_policy_postgresql_flexible_server = azure.dataprotection.BackupPolicyPostgresqlFlexibleServer("example",
///     name="example-backup-policy",
///     vault_id=example_backup_vault.id,
///     backup_repeating_time_intervals=["R/2021-05-23T02:30:00+00:00/P1W"],
///     time_zone="India Standard Time",
///     default_retention_rule={
///         "life_cycles": [{
///             "duration": "P4M",
///             "data_store_type": "VaultStore",
///         }],
///     },
///     retention_rules=[
///         {
///             "name": "weekly",
///             "life_cycles": [{
///                 "duration": "P6M",
///                 "data_store_type": "VaultStore",
///             }],
///             "priority": 20,
///             "criteria": {
///                 "absolute_criteria": "FirstOfWeek",
///             },
///         },
///         {
///             "name": "thursday",
///             "life_cycles": [{
///                 "duration": "P1W",
///                 "data_store_type": "VaultStore",
///             }],
///             "priority": 25,
///             "criteria": {
///                 "days_of_weeks": ["Thursday"],
///                 "scheduled_backup_times": ["2021-05-23T02:30:00Z"],
///             },
///         },
///         {
///             "name": "monthly",
///             "life_cycles": [{
///                 "duration": "P1D",
///                 "data_store_type": "VaultStore",
///             }],
///             "priority": 15,
///             "criteria": {
///                 "weeks_of_months": [
///                     "First",
///                     "Last",
///                 ],
///                 "days_of_weeks": ["Tuesday"],
///                 "scheduled_backup_times": ["2021-05-23T02:30:00Z"],
///             },
///         },
///     ])
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
///     var exampleBackupPolicyPostgresqlFlexibleServer = new Azure.DataProtection.BackupPolicyPostgresqlFlexibleServer("example", new()
///     {
///         Name = "example-backup-policy",
///         VaultId = exampleBackupVault.Id,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2021-05-23T02:30:00+00:00/P1W",
///         },
///         TimeZone = "India Standard Time",
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
///         RetentionRules = new[]
///         {
///             new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs
///             {
///                 Name = "weekly",
///                 LifeCycles = new[]
///                 {
///                     new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs
///                     {
///                         Duration = "P6M",
///                         DataStoreType = "VaultStore",
///                     },
///                 },
///                 Priority = 20,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs
///                 {
///                     AbsoluteCriteria = "FirstOfWeek",
///                 },
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs
///             {
///                 Name = "thursday",
///                 LifeCycles = new[]
///                 {
///                     new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs
///                     {
///                         Duration = "P1W",
///                         DataStoreType = "VaultStore",
///                     },
///                 },
///                 Priority = 25,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs
///                 {
///                     DaysOfWeeks = new[]
///                     {
///                         "Thursday",
///                     },
///                     ScheduledBackupTimes = new[]
///                     {
///                         "2021-05-23T02:30:00Z",
///                     },
///                 },
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs
///             {
///                 Name = "monthly",
///                 LifeCycles = new[]
///                 {
///                     new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs
///                     {
///                         Duration = "P1D",
///                         DataStoreType = "VaultStore",
///                     },
///                 },
///                 Priority = 15,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs
///                 {
///                     WeeksOfMonths = new[]
///                     {
///                         "First",
///                         "Last",
///                     },
///                     DaysOfWeeks = new[]
///                     {
///                         "Tuesday",
///                     },
///                     ScheduledBackupTimes = new[]
///                     {
///                         "2021-05-23T02:30:00Z",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
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
/// 		_, err = dataprotection.NewBackupPolicyPostgresqlFlexibleServer(ctx, "example", &dataprotection.BackupPolicyPostgresqlFlexibleServerArgs{
/// 			Name:    pulumi.String("example-backup-policy"),
/// 			VaultId: exampleBackupVault.ID().ToIDOutput().ToStringOutput(),
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			TimeZone: pulumi.String("India Standard Time"),
/// 			DefaultRetentionRule: &dataprotection.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleArgs{
/// 				LifeCycles: dataprotection.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycleArray{
/// 					&dataprotection.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycleArgs{
/// 						Duration:      pulumi.String("P4M"),
/// 						DataStoreType: pulumi.String("VaultStore"),
/// 					},
/// 				},
/// 			},
/// 			RetentionRules: dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleArray{
/// 				&dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs{
/// 					Name: pulumi.String("weekly"),
/// 					LifeCycles: dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArray{
/// 						&dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs{
/// 							Duration:      pulumi.String("P6M"),
/// 							DataStoreType: pulumi.String("VaultStore"),
/// 						},
/// 					},
/// 					Priority: pulumi.Int(20),
/// 					Criteria: &dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs{
/// 						AbsoluteCriteria: pulumi.String("FirstOfWeek"),
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs{
/// 					Name: pulumi.String("thursday"),
/// 					LifeCycles: dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArray{
/// 						&dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs{
/// 							Duration:      pulumi.String("P1W"),
/// 							DataStoreType: pulumi.String("VaultStore"),
/// 						},
/// 					},
/// 					Priority: pulumi.Int(25),
/// 					Criteria: &dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs{
/// 						DaysOfWeeks: pulumi.StringArray{
/// 							pulumi.String("Thursday"),
/// 						},
/// 						ScheduledBackupTimes: pulumi.StringArray{
/// 							pulumi.String("2021-05-23T02:30:00Z"),
/// 						},
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs{
/// 					Name: pulumi.String("monthly"),
/// 					LifeCycles: dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArray{
/// 						&dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs{
/// 							Duration:      pulumi.String("P1D"),
/// 							DataStoreType: pulumi.String("VaultStore"),
/// 						},
/// 					},
/// 					Priority: pulumi.Int(15),
/// 					Criteria: &dataprotection.BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs{
/// 						WeeksOfMonths: pulumi.StringArray{
/// 							pulumi.String("First"),
/// 							pulumi.String("Last"),
/// 						},
/// 						DaysOfWeeks: pulumi.StringArray{
/// 							pulumi.String("Tuesday"),
/// 						},
/// 						ScheduledBackupTimes: pulumi.StringArray{
/// 							pulumi.String("2021-05-23T02:30:00Z"),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// resource "azure_dataprotection_backuppolicypostgresqlflexibleserver" "example" {
///   name                            = "example-backup-policy"
///   vault_id                        = azure_dataprotection_backupvault.example.id
///   backup_repeating_time_intervals = ["R/2021-05-23T02:30:00+00:00/P1W"]
///   time_zone                       = "India Standard Time"
///   default_retention_rule = {
///     life_cycles = [{
///       "duration"      = "P4M"
///       "dataStoreType" = "VaultStore"
///     }]
///   }
///   retention_rules {
///     name = "weekly"
///     life_cycles {
///       duration        = "P6M"
///       data_store_type = "VaultStore"
///     }
///     priority = 20
///     criteria = {
///       absolute_criteria = "FirstOfWeek"
///     }
///   }
///   retention_rules {
///     name = "thursday"
///     life_cycles {
///       duration        = "P1W"
///       data_store_type = "VaultStore"
///     }
///     priority = 25
///     criteria = {
///       days_of_weeks          = ["Thursday"]
///       scheduled_backup_times = ["2021-05-23T02:30:00Z"]
///     }
///   }
///   retention_rules {
///     name = "monthly"
///     life_cycles {
///       duration        = "P1D"
///       data_store_type = "VaultStore"
///     }
///     priority = 15
///     criteria = {
///       weeks_of_months        = ["First", "Last"]
///       days_of_weeks          = ["Tuesday"]
///       scheduled_backup_times = ["2021-05-23T02:30:00Z"]
///     }
///   }
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
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupVaultIdentityArgs;
/// import com.pulumi.azure.dataprotection.BackupPolicyPostgresqlFlexibleServer;
/// import com.pulumi.azure.dataprotection.BackupPolicyPostgresqlFlexibleServerArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs;
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
///         var exampleBackupPolicyPostgresqlFlexibleServer = new BackupPolicyPostgresqlFlexibleServer("exampleBackupPolicyPostgresqlFlexibleServer", BackupPolicyPostgresqlFlexibleServerArgs.builder()
///             .name("example-backup-policy")
///             .vaultId(exampleBackupVault.id())
///             .backupRepeatingTimeIntervals("R/2021-05-23T02:30:00+00:00/P1W")
///             .timeZone("India Standard Time")
///             .defaultRetentionRule(BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleArgs.builder()
///                 .lifeCycles(BackupPolicyPostgresqlFlexibleServerDefaultRetentionRuleLifeCycleArgs.builder()
///                     .duration("P4M")
///                     .dataStoreType("VaultStore")
///                     .build())
///                 .build())
///             .retentionRules(
///                 BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs.builder()
///                     .name("weekly")
///                     .lifeCycles(BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs.builder()
///                         .duration("P6M")
///                         .dataStoreType("VaultStore")
///                         .build())
///                     .priority(20)
///                     .criteria(BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs.builder()
///                         .absoluteCriteria("FirstOfWeek")
///                         .build())
///                     .build(),
///                 BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs.builder()
///                     .name("thursday")
///                     .lifeCycles(BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs.builder()
///                         .duration("P1W")
///                         .dataStoreType("VaultStore")
///                         .build())
///                     .priority(25)
///                     .criteria(BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs.builder()
///                         .daysOfWeeks("Thursday")
///                         .scheduledBackupTimes("2021-05-23T02:30:00Z")
///                         .build())
///                     .build(),
///                 BackupPolicyPostgresqlFlexibleServerRetentionRuleArgs.builder()
///                     .name("monthly")
///                     .lifeCycles(BackupPolicyPostgresqlFlexibleServerRetentionRuleLifeCycleArgs.builder()
///                         .duration("P1D")
///                         .dataStoreType("VaultStore")
///                         .build())
///                     .priority(15)
///                     .criteria(BackupPolicyPostgresqlFlexibleServerRetentionRuleCriteriaArgs.builder()
///                         .weeksOfMonths(
///                             "First",
///                             "Last")
///                         .daysOfWeeks("Tuesday")
///                         .scheduledBackupTimes("2021-05-23T02:30:00Z")
///                         .build())
///                     .build())
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
///   exampleBackupPolicyPostgresqlFlexibleServer:
///     type: azure:dataprotection:BackupPolicyPostgresqlFlexibleServer
///     name: example
///     properties:
///       name: example-backup-policy
///       vaultId: ${exampleBackupVault.id}
///       backupRepeatingTimeIntervals:
///         - R/2021-05-23T02:30:00+00:00/P1W
///       timeZone: India Standard Time
///       defaultRetentionRule:
///         lifeCycles:
///           - duration: P4M
///             dataStoreType: VaultStore
///       retentionRules:
///         - name: weekly
///           lifeCycles:
///             - duration: P6M
///               dataStoreType: VaultStore
///           priority: 20
///           criteria:
///             absoluteCriteria: FirstOfWeek
///         - name: thursday
///           lifeCycles:
///             - duration: P1W
///               dataStoreType: VaultStore
///           priority: 25
///           criteria:
///             daysOfWeeks:
///               - Thursday
///             scheduledBackupTimes:
///               - 2021-05-23T02:30:00Z
///         - name: monthly
///           lifeCycles:
///             - duration: P1D
///               dataStoreType: VaultStore
///           priority: 15
///           criteria:
///             weeksOfMonths:
///               - First
///               - Last
///             daysOfWeeks:
///               - Tuesday
///             scheduledBackupTimes:
///               - 2021-05-23T02:30:00Z
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
/// Backup Policy PostgreSQL Flexible Server's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupPolicyPostgresqlFlexibleServer:BackupPolicyPostgresqlFlexibleServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupPolicies/backupPolicy1
/// ```
class BackupPolicyPostgresqlFlexibleServer extends pulumi.CustomResource {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval format. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> backupRepeatingTimeIntervals;
  /// A `defaultRetentionRule` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule> defaultRetentionRule;
  /// Specifies the name of the Backup Policy for the PostgreSQL Flexible Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `retentionRule` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<BackupPolicyPostgresqlFlexibleServerRetentionRule>?> retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> timeZone;
  /// The ID of the Backup Vault where the Backup Policy PostgreSQL Flexible Server should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupPolicyPostgresqlFlexibleServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicyPostgresqlFlexibleServer]. {@macro pulumi_dataprotection_backup_policy_postgresql_flexible_server_backup_policy_postgresql_flexible_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicyPostgresqlFlexibleServer(
    String name, {
    BackupPolicyPostgresqlFlexibleServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyPostgresqlFlexibleServer:BackupPolicyPostgresqlFlexibleServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    backupRepeatingTimeIntervals = registerOutput<List<String>>('backupRepeatingTimeIntervals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    defaultRetentionRule = registerOutput<BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule>('defaultRetentionRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    retentionRules = registerOutput<List<BackupPolicyPostgresqlFlexibleServerRetentionRule>?>('retentionRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BackupPolicyPostgresqlFlexibleServerRetentionRule>(guardedValue, (value) => BackupPolicyPostgresqlFlexibleServerRetentionRule.fromMap((value as Map).cast<String, dynamic>())); });
    timeZone = registerOutput<String?>('timeZone');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [BackupPolicyPostgresqlFlexibleServer] resource's state with the given [name] and [id].
  static BackupPolicyPostgresqlFlexibleServer get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyPostgresqlFlexibleServerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BackupPolicyPostgresqlFlexibleServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BackupPolicyPostgresqlFlexibleServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyPostgresqlFlexibleServer:BackupPolicyPostgresqlFlexibleServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupRepeatingTimeIntervals = registerOutput<List<String>>('backupRepeatingTimeIntervals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    defaultRetentionRule = registerOutput<BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule>('defaultRetentionRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    retentionRules = registerOutput<List<BackupPolicyPostgresqlFlexibleServerRetentionRule>?>('retentionRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BackupPolicyPostgresqlFlexibleServerRetentionRule>(guardedValue, (value) => BackupPolicyPostgresqlFlexibleServerRetentionRule.fromMap((value as Map).cast<String, dynamic>())); });
    timeZone = registerOutput<String?>('timeZone');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Creates a typed reference to an existing [BackupPolicyPostgresqlFlexibleServer] resource.
  BackupPolicyPostgresqlFlexibleServer.reference(String urn)
    : super(
        'azure:dataprotection/backupPolicyPostgresqlFlexibleServer:BackupPolicyPostgresqlFlexibleServer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    backupRepeatingTimeIntervals = registerOutput<List<String>>('backupRepeatingTimeIntervals', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    defaultRetentionRule = registerOutput<BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule>('defaultRetentionRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupPolicyPostgresqlFlexibleServerDefaultRetentionRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    retentionRules = registerOutput<List<BackupPolicyPostgresqlFlexibleServerRetentionRule>?>('retentionRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BackupPolicyPostgresqlFlexibleServerRetentionRule>(guardedValue, (value) => BackupPolicyPostgresqlFlexibleServerRetentionRule.fromMap((value as Map).cast<String, dynamic>())); });
    timeZone = registerOutput<String?>('timeZone');
    vaultId = registerOutput<String>('vaultId');
  }
}
