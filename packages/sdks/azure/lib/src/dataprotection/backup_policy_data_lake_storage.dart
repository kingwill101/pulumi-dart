import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_data_lake_storage_args.dart';
import 'backup_policy_data_lake_storage_state.dart';

/// Manages a Backup Policy to Azure Data Lake Storage.
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
/// const exampleBackupPolicyDataLakeStorage = new azure.dataprotection.BackupPolicyDataLakeStorage("example", {
///     name: "example-backup-policy",
///     dataProtectionBackupVaultId: exampleBackupVault.id,
///     backupSchedules: ["R/2021-05-23T02:30:00+00:00/P1W"],
///     timeZone: "India Standard Time",
///     defaultRetentionDuration: "P4M",
///     retentionRules: [
///         {
///             name: "weekly",
///             duration: "P6M",
///             absoluteCriteria: "FirstOfWeek",
///         },
///         {
///             name: "thursday",
///             duration: "P1W",
///             daysOfWeeks: ["Thursday"],
///             scheduledBackupTimes: ["2021-05-23T02:30:00Z"],
///         },
///         {
///             name: "monthly",
///             duration: "P1D",
///             weeksOfMonths: [
///                 "First",
///                 "Last",
///             ],
///             daysOfWeeks: ["Tuesday"],
///             scheduledBackupTimes: ["2021-05-23T02:30:00Z"],
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
/// example_backup_policy_data_lake_storage = azure.dataprotection.BackupPolicyDataLakeStorage("example",
///     name="example-backup-policy",
///     data_protection_backup_vault_id=example_backup_vault.id,
///     backup_schedules=["R/2021-05-23T02:30:00+00:00/P1W"],
///     time_zone="India Standard Time",
///     default_retention_duration="P4M",
///     retention_rules=[
///         {
///             "name": "weekly",
///             "duration": "P6M",
///             "absolute_criteria": "FirstOfWeek",
///         },
///         {
///             "name": "thursday",
///             "duration": "P1W",
///             "days_of_weeks": ["Thursday"],
///             "scheduled_backup_times": ["2021-05-23T02:30:00Z"],
///         },
///         {
///             "name": "monthly",
///             "duration": "P1D",
///             "weeks_of_months": [
///                 "First",
///                 "Last",
///             ],
///             "days_of_weeks": ["Tuesday"],
///             "scheduled_backup_times": ["2021-05-23T02:30:00Z"],
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
///     var exampleBackupPolicyDataLakeStorage = new Azure.DataProtection.BackupPolicyDataLakeStorage("example", new()
///     {
///         Name = "example-backup-policy",
///         DataProtectionBackupVaultId = exampleBackupVault.Id,
///         BackupSchedules = new[]
///         {
///             "R/2021-05-23T02:30:00+00:00/P1W",
///         },
///         TimeZone = "India Standard Time",
///         DefaultRetentionDuration = "P4M",
///         RetentionRules = new[]
///         {
///             new Azure.DataProtection.Inputs.BackupPolicyDataLakeStorageRetentionRuleArgs
///             {
///                 Name = "weekly",
///                 Duration = "P6M",
///                 AbsoluteCriteria = "FirstOfWeek",
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyDataLakeStorageRetentionRuleArgs
///             {
///                 Name = "thursday",
///                 Duration = "P1W",
///                 DaysOfWeeks = new[]
///                 {
///                     "Thursday",
///                 },
///                 ScheduledBackupTimes = new[]
///                 {
///                     "2021-05-23T02:30:00Z",
///                 },
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyDataLakeStorageRetentionRuleArgs
///             {
///                 Name = "monthly",
///                 Duration = "P1D",
///                 WeeksOfMonths = new[]
///                 {
///                     "First",
///                     "Last",
///                 },
///                 DaysOfWeeks = new[]
///                 {
///                     "Tuesday",
///                 },
///                 ScheduledBackupTimes = new[]
///                 {
///                     "2021-05-23T02:30:00Z",
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
/// 		_, err = dataprotection.NewBackupPolicyDataLakeStorage(ctx, "example", &dataprotection.BackupPolicyDataLakeStorageArgs{
/// 			Name:                        pulumi.String("example-backup-policy"),
/// 			DataProtectionBackupVaultId: exampleBackupVault.ID(),
/// 			BackupSchedules: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			TimeZone:                 pulumi.String("India Standard Time"),
/// 			DefaultRetentionDuration: pulumi.String("P4M"),
/// 			RetentionRules: dataprotection.BackupPolicyDataLakeStorageRetentionRuleArray{
/// 				&dataprotection.BackupPolicyDataLakeStorageRetentionRuleArgs{
/// 					Name:             pulumi.String("weekly"),
/// 					Duration:         pulumi.String("P6M"),
/// 					AbsoluteCriteria: pulumi.String("FirstOfWeek"),
/// 				},
/// 				&dataprotection.BackupPolicyDataLakeStorageRetentionRuleArgs{
/// 					Name:     pulumi.String("thursday"),
/// 					Duration: pulumi.String("P1W"),
/// 					DaysOfWeeks: pulumi.StringArray{
/// 						pulumi.String("Thursday"),
/// 					},
/// 					ScheduledBackupTimes: pulumi.StringArray{
/// 						pulumi.String("2021-05-23T02:30:00Z"),
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyDataLakeStorageRetentionRuleArgs{
/// 					Name:     pulumi.String("monthly"),
/// 					Duration: pulumi.String("P1D"),
/// 					WeeksOfMonths: pulumi.StringArray{
/// 						pulumi.String("First"),
/// 						pulumi.String("Last"),
/// 					},
/// 					DaysOfWeeks: pulumi.StringArray{
/// 						pulumi.String("Tuesday"),
/// 					},
/// 					ScheduledBackupTimes: pulumi.StringArray{
/// 						pulumi.String("2021-05-23T02:30:00Z"),
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
/// resource "azure_dataprotection_backuppolicydatalakestorage" "example" {
///   name                            = "example-backup-policy"
///   data_protection_backup_vault_id = azure_dataprotection_backupvault.example.id
///   backup_schedules                = ["R/2021-05-23T02:30:00+00:00/P1W"]
///   time_zone                       = "India Standard Time"
///   default_retention_duration      = "P4M"
///   retention_rules {
///     name              = "weekly"
///     duration          = "P6M"
///     absolute_criteria = "FirstOfWeek"
///   }
///   retention_rules {
///     name                   = "thursday"
///     duration               = "P1W"
///     days_of_weeks          = ["Thursday"]
///     scheduled_backup_times = ["2021-05-23T02:30:00Z"]
///   }
///   retention_rules {
///     name                   = "monthly"
///     duration               = "P1D"
///     weeks_of_months        = ["First", "Last"]
///     days_of_weeks          = ["Tuesday"]
///     scheduled_backup_times = ["2021-05-23T02:30:00Z"]
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
/// import com.pulumi.azure.dataprotection.BackupPolicyDataLakeStorage;
/// import com.pulumi.azure.dataprotection.BackupPolicyDataLakeStorageArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyDataLakeStorageRetentionRuleArgs;
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
///         var exampleBackupPolicyDataLakeStorage = new BackupPolicyDataLakeStorage("exampleBackupPolicyDataLakeStorage", BackupPolicyDataLakeStorageArgs.builder()
///             .name("example-backup-policy")
///             .dataProtectionBackupVaultId(exampleBackupVault.id())
///             .backupSchedules("R/2021-05-23T02:30:00+00:00/P1W")
///             .timeZone("India Standard Time")
///             .defaultRetentionDuration("P4M")
///             .retentionRules(
///                 BackupPolicyDataLakeStorageRetentionRuleArgs.builder()
///                     .name("weekly")
///                     .duration("P6M")
///                     .absoluteCriteria("FirstOfWeek")
///                     .build(),
///                 BackupPolicyDataLakeStorageRetentionRuleArgs.builder()
///                     .name("thursday")
///                     .duration("P1W")
///                     .daysOfWeeks("Thursday")
///                     .scheduledBackupTimes("2021-05-23T02:30:00Z")
///                     .build(),
///                 BackupPolicyDataLakeStorageRetentionRuleArgs.builder()
///                     .name("monthly")
///                     .duration("P1D")
///                     .weeksOfMonths(
///                         "First",
///                         "Last")
///                     .daysOfWeeks("Tuesday")
///                     .scheduledBackupTimes("2021-05-23T02:30:00Z")
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
///   exampleBackupPolicyDataLakeStorage:
///     type: azure:dataprotection:BackupPolicyDataLakeStorage
///     name: example
///     properties:
///       name: example-backup-policy
///       dataProtectionBackupVaultId: ${exampleBackupVault.id}
///       backupSchedules:
///         - R/2021-05-23T02:30:00+00:00/P1W
///       timeZone: India Standard Time
///       defaultRetentionDuration: P4M
///       retentionRules:
///         - name: weekly
///           duration: P6M
///           absoluteCriteria: FirstOfWeek
///         - name: thursday
///           duration: P1W
///           daysOfWeeks:
///             - Thursday
///           scheduledBackupTimes:
///             - 2021-05-23T02:30:00Z
///         - name: monthly
///           duration: P1D
///           weeksOfMonths:
///             - First
///             - Last
///           daysOfWeeks:
///             - Tuesday
///           scheduledBackupTimes:
///             - 2021-05-23T02:30:00Z
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
/// Azure Backup Policy Data Lake Storages can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupPolicyDataLakeStorage:BackupPolicyDataLakeStorage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupPolicies/backupPolicy1
/// ```
class BackupPolicyDataLakeStorage extends pulumi.CustomResource {
  /// Specifies a list of repeating time interval, also known as the backup schedule. It supports daily & weekly backup. It should follow [`ISO 8601` recurring time interval format](https://en.wikipedia.org/wiki/ISO_8601#Recurring_intervals), for example: `R/2021-05-23T02:30:00+00:00/P1W`. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> backupSchedules;
  /// The ID of the Backup Vault where the Azure Backup Policy Data Lake Storage should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataProtectionBackupVaultId;
  /// The retention duration up to which the backups are to be retained in the data stores. It should follow `ISO 8601` duration format. Changing this forces a new resource to be created.
  late final pulumi.Output<String> defaultRetentionDuration;
  /// Specifies the name of the Backup Policy for the Azure Backup Policy Data Lake Storage. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `retentionRule` blocks as defined below. The priority of each rule is determined by its order in the list, where the first rule has the highest priority. Changing this forces a new resource to be created.
  late final pulumi.Output<List<Map<String, dynamic>>?> retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created. Possible values are `Afghanistan Standard Time`,`Alaskan Standard Time`,`Aleutian Standard Time`,`Altai Standard Time`,`Arab Standard Time`,`Arabian Standard Time`,`Arabic Standard Time`,`Argentina Standard Time`,`Astrakhan Standard Time`,`Atlantic Standard Time`,`AUS Central Standard Time`,`Aus Central W. Standard Time`,`AUS Eastern Standard Time`,`Azerbaijan Standard Time`,`Azores Standard Time`,`Bahia Standard Time`,`Bangladesh Standard Time`,`Belarus Standard Time`,`Bougainville Standard Time`,`Canada Central Standard Time`,`Cape Verde Standard Time`,`Caucasus Standard Time`,`Cen. Australia Standard Time`,`Central America Standard Time`,`Central Asia Standard Time`,`Central Brazilian Standard Time`,`Central Europe Standard Time`,`Central European Standard Time`,`Central Pacific Standard Time`,`Central Standard Time`,`Central Standard Time (Mexico)`,`Chatham Islands Standard Time`,`China Standard Time`,`Coordinated Universal Time`,`Cuba Standard Time`,`Dateline Standard Time`,`E. Africa Standard Time`,`E. Australia Standard Time`,`E. Europe Standard Time`,`E. South America Standard Time`,`Easter Island Standard Time`,`Eastern Standard Time`,`Eastern Standard Time (Mexico)`,`Egypt Standard Time`,`Ekaterinburg Standard Time`,`Fiji Standard Time`,`FLE Standard Time`,`Georgian Standard Time`,`GMT Standard Time`,`Greenland Standard Time`,`Greenwich Standard Time`,`GTB Standard Time`,`Haiti Standard Time`,`Hawaiian Standard Time`,`India Standard Time`,`Iran Standard Time`,`Israel Standard Time`,`Jordan Standard Time`,`Kaliningrad Standard Time`,`Kamchatka Standard Time`,`Korea Standard Time`,`Libya Standard Time`,`Line Islands Standard Time`,`Lord Howe Standard Time`,`Magadan Standard Time`,`Magallanes Standard Time`,`Marquesas Standard Time`,`Mauritius Standard Time`,`Mid-Atlantic Standard Time`,`Middle East Standard Time`,`Montevideo Standard Time`,`Morocco Standard Time`,`Mountain Standard Time`,`Mountain Standard Time (Mexico)`,`Myanmar Standard Time`,`N. Central Asia Standard Time`,`Namibia Standard Time`,`Nepal Standard Time`,`New Zealand Standard Time`,`Newfoundland Standard Time`,`Norfolk Standard Time`,`North Asia East Standard Time`,`North Asia Standard Time`,`North Korea Standard Time`,`Omsk Standard Time`,`Pacific SA Standard Time`,`Pacific Standard Time`,`Pacific Standard Time (Mexico)`,`Pakistan Standard Time`,`Paraguay Standard Time`,`Qyzylorda Standard Time`,`Romance Standard Time`,`Russia Time Zone 10`,`Russia Time Zone 11`,`Russia Time Zone 3`,`Russian Standard Time`,`SA Eastern Standard Time`,`SA Pacific Standard Time`,`SA Western Standard Time`,`Saint Pierre Standard Time`,`Sakhalin Standard Time`,`Samoa Standard Time`,`Sao Tome Standard Time`,`Saratov Standard Time`,`SE Asia Standard Time`,`Singapore Standard Time`,`South Africa Standard Time`,`South Sudan Standard Time`,`Sri Lanka Standard Time`,`Sudan Standard Time`,`Syria Standard Time`,`Taipei Standard Time`,`Tasmania Standard Time`,`Tocantins Standard Time`,`Tokyo Standard Time`,`Tomsk Standard Time`,`Tonga Standard Time`,`Transbaikal Standard Time`,`Turkey Standard Time`,`Turks And Caicos Standard Time`,`Ulaanbaatar Standard Time`,`US Eastern Standard Time`,`US Mountain Standard Time`,`UTC`,`UTC-02`,`UTC-08`,`UTC-09`,`UTC-11`,`UTC+12`,`UTC+13`,`Venezuela Standard Time`,`Vladivostok Standard Time`,`Volgograd Standard Time`,`W. Australia Standard Time`,`W. Central Africa Standard Time`,`W. Europe Standard Time`,`W. Mongolia Standard Time`,`West Asia Standard Time`,`West Bank Standard Time`,`West Pacific Standard Time`,`Yakutsk Standard Time` and `Yukon Standard Time`.
  late final pulumi.Output<String?> timeZone;

  /// Creates a new [BackupPolicyDataLakeStorage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicyDataLakeStorage]. {@macro pulumi_dataprotection_backup_policy_data_lake_storage_backup_policy_data_lake_storage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicyDataLakeStorage(
    String name, {
    BackupPolicyDataLakeStorageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyDataLakeStorage:BackupPolicyDataLakeStorage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupSchedules = registerOutput<List<String>>('backupSchedules');
    dataProtectionBackupVaultId = registerOutput<String>('dataProtectionBackupVaultId');
    defaultRetentionDuration = registerOutput<String>('defaultRetentionDuration');
    this.name = registerOutput<String>('name');
    retentionRules = registerOutput<List<Map<String, dynamic>>?>('retentionRules');
    timeZone = registerOutput<String?>('timeZone');
  }

  /// Gets an existing [BackupPolicyDataLakeStorage] resource's state with the given [name] and [id].
  static BackupPolicyDataLakeStorage get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyDataLakeStorageState? state,
  }) {
    return BackupPolicyDataLakeStorage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicyDataLakeStorage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyDataLakeStorage:BackupPolicyDataLakeStorage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupSchedules = registerOutput<List<String>>('backupSchedules');
    dataProtectionBackupVaultId = registerOutput<String>('dataProtectionBackupVaultId');
    defaultRetentionDuration = registerOutput<String>('defaultRetentionDuration');
    this.name = registerOutput<String>('name');
    retentionRules = registerOutput<List<Map<String, dynamic>>?>('retentionRules');
    timeZone = registerOutput<String?>('timeZone');
  }
}
