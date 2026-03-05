import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_mysql_flexible_server_args.dart';
import 'backup_policy_mysql_flexible_server_default_retention_rule.dart';
import 'backup_policy_mysql_flexible_server_state.dart';

/// Manages a Backup Policy to back up MySQL Flexible Server.
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
/// const exampleBackupPolicyMysqlFlexibleServer = new azure.dataprotection.BackupPolicyMysqlFlexibleServer("example", {
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
/// example_backup_policy_mysql_flexible_server = azure.dataprotection.BackupPolicyMysqlFlexibleServer("example",
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
///     var exampleBackupPolicyMysqlFlexibleServer = new Azure.DataProtection.BackupPolicyMysqlFlexibleServer("example", new()
///     {
///         Name = "example-backup-policy",
///         VaultId = exampleBackupVault.Id,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2021-05-23T02:30:00+00:00/P1W",
///         },
///         TimeZone = "India Standard Time",
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
///         RetentionRules = new[]
///         {
///             new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerRetentionRuleArgs
///             {
///                 Name = "weekly",
///                 LifeCycles = new[]
///                 {
///                     new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArgs
///                     {
///                         Duration = "P6M",
///                         DataStoreType = "VaultStore",
///                     },
///                 },
///                 Priority = 20,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs
///                 {
///                     AbsoluteCriteria = "FirstOfWeek",
///                 },
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerRetentionRuleArgs
///             {
///                 Name = "thursday",
///                 LifeCycles = new[]
///                 {
///                     new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArgs
///                     {
///                         Duration = "P1W",
///                         DataStoreType = "VaultStore",
///                     },
///                 },
///                 Priority = 25,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs
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
///             new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerRetentionRuleArgs
///             {
///                 Name = "monthly",
///                 LifeCycles = new[]
///                 {
///                     new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArgs
///                     {
///                         Duration = "P1D",
///                         DataStoreType = "VaultStore",
///                     },
///                 },
///                 Priority = 15,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs
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
/// 		_, err = dataprotection.NewBackupPolicyMysqlFlexibleServer(ctx, "example", &dataprotection.BackupPolicyMysqlFlexibleServerArgs{
/// 			Name:    pulumi.String("example-backup-policy"),
/// 			VaultId: exampleBackupVault.ID(),
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			TimeZone: pulumi.String("India Standard Time"),
/// 			DefaultRetentionRule: &dataprotection.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleArgs{
/// 				LifeCycles: dataprotection.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycleArray{
/// 					&dataprotection.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycleArgs{
/// 						Duration:      pulumi.String("P4M"),
/// 						DataStoreType: pulumi.String("VaultStore"),
/// 					},
/// 				},
/// 			},
/// 			RetentionRules: dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleArray{
/// 				&dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleArgs{
/// 					Name: pulumi.String("weekly"),
/// 					LifeCycles: dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArray{
/// 						&dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArgs{
/// 							Duration:      pulumi.String("P6M"),
/// 							DataStoreType: pulumi.String("VaultStore"),
/// 						},
/// 					},
/// 					Priority: pulumi.Int(20),
/// 					Criteria: &dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs{
/// 						AbsoluteCriteria: pulumi.String("FirstOfWeek"),
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleArgs{
/// 					Name: pulumi.String("thursday"),
/// 					LifeCycles: dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArray{
/// 						&dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArgs{
/// 							Duration:      pulumi.String("P1W"),
/// 							DataStoreType: pulumi.String("VaultStore"),
/// 						},
/// 					},
/// 					Priority: pulumi.Int(25),
/// 					Criteria: &dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs{
/// 						DaysOfWeeks: pulumi.StringArray{
/// 							pulumi.String("Thursday"),
/// 						},
/// 						ScheduledBackupTimes: pulumi.StringArray{
/// 							pulumi.String("2021-05-23T02:30:00Z"),
/// 						},
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleArgs{
/// 					Name: pulumi.String("monthly"),
/// 					LifeCycles: dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArray{
/// 						&dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArgs{
/// 							Duration:      pulumi.String("P1D"),
/// 							DataStoreType: pulumi.String("VaultStore"),
/// 						},
/// 					},
/// 					Priority: pulumi.Int(15),
/// 					Criteria: &dataprotection.BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs{
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
/// import com.pulumi.azure.dataprotection.BackupPolicyMysqlFlexibleServer;
/// import com.pulumi.azure.dataprotection.BackupPolicyMysqlFlexibleServerArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyMysqlFlexibleServerDefaultRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyMysqlFlexibleServerRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs;
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
///         var exampleBackupPolicyMysqlFlexibleServer = new BackupPolicyMysqlFlexibleServer("exampleBackupPolicyMysqlFlexibleServer", BackupPolicyMysqlFlexibleServerArgs.builder()
///             .name("example-backup-policy")
///             .vaultId(exampleBackupVault.id())
///             .backupRepeatingTimeIntervals("R/2021-05-23T02:30:00+00:00/P1W")
///             .timeZone("India Standard Time")
///             .defaultRetentionRule(BackupPolicyMysqlFlexibleServerDefaultRetentionRuleArgs.builder()
///                 .lifeCycles(BackupPolicyMysqlFlexibleServerDefaultRetentionRuleLifeCycleArgs.builder()
///                     .duration("P4M")
///                     .dataStoreType("VaultStore")
///                     .build())
///                 .build())
///             .retentionRules(
///                 BackupPolicyMysqlFlexibleServerRetentionRuleArgs.builder()
///                     .name("weekly")
///                     .lifeCycles(BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArgs.builder()
///                         .duration("P6M")
///                         .dataStoreType("VaultStore")
///                         .build())
///                     .priority(20)
///                     .criteria(BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs.builder()
///                         .absoluteCriteria("FirstOfWeek")
///                         .build())
///                     .build(),
///                 BackupPolicyMysqlFlexibleServerRetentionRuleArgs.builder()
///                     .name("thursday")
///                     .lifeCycles(BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArgs.builder()
///                         .duration("P1W")
///                         .dataStoreType("VaultStore")
///                         .build())
///                     .priority(25)
///                     .criteria(BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs.builder()
///                         .daysOfWeeks("Thursday")
///                         .scheduledBackupTimes("2021-05-23T02:30:00Z")
///                         .build())
///                     .build(),
///                 BackupPolicyMysqlFlexibleServerRetentionRuleArgs.builder()
///                     .name("monthly")
///                     .lifeCycles(BackupPolicyMysqlFlexibleServerRetentionRuleLifeCycleArgs.builder()
///                         .duration("P1D")
///                         .dataStoreType("VaultStore")
///                         .build())
///                     .priority(15)
///                     .criteria(BackupPolicyMysqlFlexibleServerRetentionRuleCriteriaArgs.builder()
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
///   exampleBackupPolicyMysqlFlexibleServer:
///     type: azure:dataprotection:BackupPolicyMysqlFlexibleServer
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
/// * `Microsoft.DataProtection` - 2024-04-01
///
/// ## Import
///
/// Backup Policy MySQL Flexible Server's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupPolicyMysqlFlexibleServer:BackupPolicyMysqlFlexibleServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupPolicies/backupPolicy1
/// ```
class BackupPolicyMysqlFlexibleServer extends pulumi.CustomResource {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval format. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> backupRepeatingTimeIntervals;

  /// A `default_retention_rule` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<BackupPolicyMysqlFlexibleServerDefaultRetentionRule>
  defaultRetentionRule;

  /// Specifies the name of the Backup Policy for the MySQL Flexible Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// One or more `retention_rule` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<Map<String, dynamic>>?> retentionRules;

  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> timeZone;

  /// The ID of the Backup Vault where the Backup Policy MySQL Flexible Server should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupPolicyMysqlFlexibleServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicyMysqlFlexibleServer]. {@macro pulumi_dataprotection_backup_policy_mysql_flexible_server_backup_policy_mysql_flexible_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicyMysqlFlexibleServer(
    String name, {
    BackupPolicyMysqlFlexibleServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:dataprotection/backupPolicyMysqlFlexibleServer:BackupPolicyMysqlFlexibleServer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupRepeatingTimeIntervals = registerOutput<List<String>>(
      'backupRepeatingTimeIntervals',
    );
    defaultRetentionRule =
        registerOutput<BackupPolicyMysqlFlexibleServerDefaultRetentionRule>(
          'defaultRetentionRule',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return BackupPolicyMysqlFlexibleServerDefaultRetentionRule.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    retentionRules = registerOutput<List<Map<String, dynamic>>?>(
      'retentionRules',
    );
    timeZone = registerOutput<String?>('timeZone');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [BackupPolicyMysqlFlexibleServer] resource's state with the given [name] and [id].
  static BackupPolicyMysqlFlexibleServer get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyMysqlFlexibleServerState? state,
  }) {
    return BackupPolicyMysqlFlexibleServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicyMysqlFlexibleServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:dataprotection/backupPolicyMysqlFlexibleServer:BackupPolicyMysqlFlexibleServer',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupRepeatingTimeIntervals = registerOutput<List<String>>(
      'backupRepeatingTimeIntervals',
    );
    defaultRetentionRule =
        registerOutput<BackupPolicyMysqlFlexibleServerDefaultRetentionRule>(
          'defaultRetentionRule',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return BackupPolicyMysqlFlexibleServerDefaultRetentionRule.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    retentionRules = registerOutput<List<Map<String, dynamic>>?>(
      'retentionRules',
    );
    timeZone = registerOutput<String?>('timeZone');
    vaultId = registerOutput<String>('vaultId');
  }
}
