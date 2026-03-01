import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_blob_storage_args.dart';
import 'backup_policy_blob_storage_retention_rule.dart';
import 'backup_policy_blob_storage_state.dart';

/// Manages a Backup Policy Blob Storage.
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
/// });
/// const exampleBackupPolicyBlobStorage = new azure.dataprotection.BackupPolicyBlobStorage("example", {
///     name: "example-backup-policy",
///     vaultId: exampleBackupVault.id,
///     operationalDefaultRetentionDuration: "P30D",
///     vaultDefaultRetentionDuration: "P7D",
///     retentionRules: [
///         {
///             name: "Weekly",
///             priority: 20,
///             lifeCycle: {
///                 duration: "P90D",
///                 dataStoreType: "VaultStore",
///             },
///             criteria: {
///                 daysOfWeeks: ["Monday"],
///             },
///         },
///         {
///             name: "Monthly",
///             priority: 10,
///             lifeCycle: {
///                 duration: "P180D",
///                 dataStoreType: "VaultStore",
///             },
///             criteria: {
///                 daysOfMonths: [1],
///             },
///         },
///         {
///             name: "Yearly",
///             priority: 5,
///             lifeCycle: {
///                 duration: "P365D",
///                 dataStoreType: "VaultStore",
///             },
///             criteria: {
///                 monthsOfYears: ["January"],
///                 daysOfMonths: [1],
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
///     redundancy="LocallyRedundant")
/// example_backup_policy_blob_storage = azure.dataprotection.BackupPolicyBlobStorage("example",
///     name="example-backup-policy",
///     vault_id=example_backup_vault.id,
///     operational_default_retention_duration="P30D",
///     vault_default_retention_duration="P7D",
///     retention_rules=[
///         {
///             "name": "Weekly",
///             "priority": 20,
///             "life_cycle": {
///                 "duration": "P90D",
///                 "data_store_type": "VaultStore",
///             },
///             "criteria": {
///                 "days_of_weeks": ["Monday"],
///             },
///         },
///         {
///             "name": "Monthly",
///             "priority": 10,
///             "life_cycle": {
///                 "duration": "P180D",
///                 "data_store_type": "VaultStore",
///             },
///             "criteria": {
///                 "days_of_months": [1],
///             },
///         },
///         {
///             "name": "Yearly",
///             "priority": 5,
///             "life_cycle": {
///                 "duration": "P365D",
///                 "data_store_type": "VaultStore",
///             },
///             "criteria": {
///                 "months_of_years": ["January"],
///                 "days_of_months": [1],
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
///     });
///
///     var exampleBackupPolicyBlobStorage = new Azure.DataProtection.BackupPolicyBlobStorage("example", new()
///     {
///         Name = "example-backup-policy",
///         VaultId = exampleBackupVault.Id,
///         OperationalDefaultRetentionDuration = "P30D",
///         VaultDefaultRetentionDuration = "P7D",
///         RetentionRules = new[]
///         {
///             new Azure.DataProtection.Inputs.BackupPolicyBlobStorageRetentionRuleArgs
///             {
///                 Name = "Weekly",
///                 Priority = 20,
///                 LifeCycle = new Azure.DataProtection.Inputs.BackupPolicyBlobStorageRetentionRuleLifeCycleArgs
///                 {
///                     Duration = "P90D",
///                     DataStoreType = "VaultStore",
///                 },
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyBlobStorageRetentionRuleCriteriaArgs
///                 {
///                     DaysOfWeeks = new[]
///                     {
///                         "Monday",
///                     },
///                 },
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyBlobStorageRetentionRuleArgs
///             {
///                 Name = "Monthly",
///                 Priority = 10,
///                 LifeCycle = new Azure.DataProtection.Inputs.BackupPolicyBlobStorageRetentionRuleLifeCycleArgs
///                 {
///                     Duration = "P180D",
///                     DataStoreType = "VaultStore",
///                 },
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyBlobStorageRetentionRuleCriteriaArgs
///                 {
///                     DaysOfMonths = new[]
///                     {
///                         1,
///                     },
///                 },
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyBlobStorageRetentionRuleArgs
///             {
///                 Name = "Yearly",
///                 Priority = 5,
///                 LifeCycle = new Azure.DataProtection.Inputs.BackupPolicyBlobStorageRetentionRuleLifeCycleArgs
///                 {
///                     Duration = "P365D",
///                     DataStoreType = "VaultStore",
///                 },
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyBlobStorageRetentionRuleCriteriaArgs
///                 {
///                     MonthsOfYears = new[]
///                     {
///                         "January",
///                     },
///                     DaysOfMonths = new[]
///                     {
///                         1,
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupPolicyBlobStorage(ctx, "example", &dataprotection.BackupPolicyBlobStorageArgs{
/// 			Name:                                pulumi.String("example-backup-policy"),
/// 			VaultId:                             exampleBackupVault.ID(),
/// 			OperationalDefaultRetentionDuration: pulumi.String("P30D"),
/// 			VaultDefaultRetentionDuration:       pulumi.String("P7D"),
/// 			RetentionRules: dataprotection.BackupPolicyBlobStorageRetentionRuleArray{
/// 				&dataprotection.BackupPolicyBlobStorageRetentionRuleArgs{
/// 					Name:     pulumi.String("Weekly"),
/// 					Priority: pulumi.Int(20),
/// 					LifeCycle: &dataprotection.BackupPolicyBlobStorageRetentionRuleLifeCycleArgs{
/// 						Duration:      pulumi.String("P90D"),
/// 						DataStoreType: pulumi.String("VaultStore"),
/// 					},
/// 					Criteria: &dataprotection.BackupPolicyBlobStorageRetentionRuleCriteriaArgs{
/// 						DaysOfWeeks: pulumi.StringArray{
/// 							pulumi.String("Monday"),
/// 						},
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyBlobStorageRetentionRuleArgs{
/// 					Name:     pulumi.String("Monthly"),
/// 					Priority: pulumi.Int(10),
/// 					LifeCycle: &dataprotection.BackupPolicyBlobStorageRetentionRuleLifeCycleArgs{
/// 						Duration:      pulumi.String("P180D"),
/// 						DataStoreType: pulumi.String("VaultStore"),
/// 					},
/// 					Criteria: &dataprotection.BackupPolicyBlobStorageRetentionRuleCriteriaArgs{
/// 						DaysOfMonths: pulumi.IntArray{
/// 							pulumi.Int(1),
/// 						},
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyBlobStorageRetentionRuleArgs{
/// 					Name:     pulumi.String("Yearly"),
/// 					Priority: pulumi.Int(5),
/// 					LifeCycle: &dataprotection.BackupPolicyBlobStorageRetentionRuleLifeCycleArgs{
/// 						Duration:      pulumi.String("P365D"),
/// 						DataStoreType: pulumi.String("VaultStore"),
/// 					},
/// 					Criteria: &dataprotection.BackupPolicyBlobStorageRetentionRuleCriteriaArgs{
/// 						MonthsOfYears: pulumi.StringArray{
/// 							pulumi.String("January"),
/// 						},
/// 						DaysOfMonths: pulumi.IntArray{
/// 							pulumi.Int(1),
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
/// import com.pulumi.azure.dataprotection.BackupPolicyBlobStorage;
/// import com.pulumi.azure.dataprotection.BackupPolicyBlobStorageArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyBlobStorageRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyBlobStorageRetentionRuleLifeCycleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyBlobStorageRetentionRuleCriteriaArgs;
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
///             .build());
///
///         var exampleBackupPolicyBlobStorage = new BackupPolicyBlobStorage("exampleBackupPolicyBlobStorage", BackupPolicyBlobStorageArgs.builder()
///             .name("example-backup-policy")
///             .vaultId(exampleBackupVault.id())
///             .operationalDefaultRetentionDuration("P30D")
///             .vaultDefaultRetentionDuration("P7D")
///             .retentionRules(
///                 BackupPolicyBlobStorageRetentionRuleArgs.builder()
///                     .name("Weekly")
///                     .priority(20)
///                     .lifeCycle(BackupPolicyBlobStorageRetentionRuleLifeCycleArgs.builder()
///                         .duration("P90D")
///                         .dataStoreType("VaultStore")
///                         .build())
///                     .criteria(BackupPolicyBlobStorageRetentionRuleCriteriaArgs.builder()
///                         .daysOfWeeks("Monday")
///                         .build())
///                     .build(),
///                 BackupPolicyBlobStorageRetentionRuleArgs.builder()
///                     .name("Monthly")
///                     .priority(10)
///                     .lifeCycle(BackupPolicyBlobStorageRetentionRuleLifeCycleArgs.builder()
///                         .duration("P180D")
///                         .dataStoreType("VaultStore")
///                         .build())
///                     .criteria(BackupPolicyBlobStorageRetentionRuleCriteriaArgs.builder()
///                         .daysOfMonths(1)
///                         .build())
///                     .build(),
///                 BackupPolicyBlobStorageRetentionRuleArgs.builder()
///                     .name("Yearly")
///                     .priority(5)
///                     .lifeCycle(BackupPolicyBlobStorageRetentionRuleLifeCycleArgs.builder()
///                         .duration("P365D")
///                         .dataStoreType("VaultStore")
///                         .build())
///                     .criteria(BackupPolicyBlobStorageRetentionRuleCriteriaArgs.builder()
///                         .monthsOfYears("January")
///                         .daysOfMonths(1)
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
///   exampleBackupPolicyBlobStorage:
///     type: azure:dataprotection:BackupPolicyBlobStorage
///     name: example
///     properties:
///       name: example-backup-policy
///       vaultId: ${exampleBackupVault.id}
///       operationalDefaultRetentionDuration: P30D
///       vaultDefaultRetentionDuration: P7D
///       retentionRules:
///         - name: Weekly
///           priority: 20
///           lifeCycle:
///             duration: P90D
///             dataStoreType: VaultStore
///           criteria:
///             daysOfWeeks:
///               - Monday
///         - name: Monthly
///           priority: 10
///           lifeCycle:
///             duration: P180D
///             dataStoreType: VaultStore
///           criteria:
///             daysOfMonths:
///               - 1
///         - name: Yearly
///           priority: 5
///           lifeCycle:
///             duration: P365D
///             dataStoreType: VaultStore
///           criteria:
///             monthsOfYears:
///               - January
///             daysOfMonths:
///               - 1
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataProtection` - 2024-04-01
///
/// ## Import
///
/// Backup Policy Blob Storages can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupPolicyBlobStorage:BackupPolicyBlobStorage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupPolicies/backupPolicy1
/// ```
class BackupPolicyBlobStorage extends pulumi.CustomResource {
  /// Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy Blob Storage to be created.
  late final pulumi.Output<List<String>?> backupRepeatingTimeIntervals;
  /// The name which should be used for this Backup Policy Blob Storage. Changing this forces a new Backup Policy Blob Storage to be created.
  late final pulumi.Output<String> name;
  /// The duration of operational default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  late final pulumi.Output<String?> operationalDefaultRetentionDuration;
  /// One or more `retention_rule` blocks as defined below. Changing this forces a new Backup Policy Blob Storage to be created.
  ///
  /// > **Note:** Setting `retention_rule` also requires setting `vault_default_retention_duration`.
  late final pulumi.Output<List<BackupPolicyBlobStorageRetentionRule>?> retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy Blob Storage to be created.
  late final pulumi.Output<String?> timeZone;
  /// The duration of vault default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created.
  ///
  /// > **Note:** Setting `vault_default_retention_duration` also requires setting `backup_repeating_time_intervals`. At least one of `operational_default_retention_duration` or `vault_default_retention_duration` must be specified.
  late final pulumi.Output<String?> vaultDefaultRetentionDuration;
  /// The ID of the Backup Vault within which the Backup Policy Blob Storage should exist. Changing this forces a new Backup Policy Blob Storage to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupPolicyBlobStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicyBlobStorage]. {@macro pulumi_dataprotection_backup_policy_blob_storage_backup_policy_blob_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicyBlobStorage(
    String name, {
    BackupPolicyBlobStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyBlobStorage:BackupPolicyBlobStorage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupRepeatingTimeIntervals = registerOutput<List<String>?>('backupRepeatingTimeIntervals');
    this.name = registerOutput<String>('name');
    this.operationalDefaultRetentionDuration = registerOutput<String?>('operationalDefaultRetentionDuration');
    this.retentionRules = registerOutput<List<BackupPolicyBlobStorageRetentionRule>?>('retentionRules');
    this.timeZone = registerOutput<String?>('timeZone');
    this.vaultDefaultRetentionDuration = registerOutput<String?>('vaultDefaultRetentionDuration');
    this.vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [BackupPolicyBlobStorage] resource's state with the given [name] and [id].
  static BackupPolicyBlobStorage get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyBlobStorageState? state,
  }) {
    return BackupPolicyBlobStorage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicyBlobStorage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyBlobStorage:BackupPolicyBlobStorage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupRepeatingTimeIntervals = registerOutput<List<String>?>('backupRepeatingTimeIntervals');
    this.name = registerOutput<String>('name');
    this.operationalDefaultRetentionDuration = registerOutput<String?>('operationalDefaultRetentionDuration');
    this.retentionRules = registerOutput<List<BackupPolicyBlobStorageRetentionRule>?>('retentionRules');
    this.timeZone = registerOutput<String?>('timeZone');
    this.vaultDefaultRetentionDuration = registerOutput<String?>('vaultDefaultRetentionDuration');
    this.vaultId = registerOutput<String>('vaultId');
  }
}
