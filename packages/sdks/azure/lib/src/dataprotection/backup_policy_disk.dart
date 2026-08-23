import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_disk_args.dart';
import 'backup_policy_disk_state.dart';

/// Manages a Backup Policy Disk.
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
/// const exampleBackupPolicyDisk = new azure.dataprotection.BackupPolicyDisk("example", {
///     name: "example-backup-policy",
///     vaultId: exampleBackupVault.id,
///     backupRepeatingTimeIntervals: ["R/2021-05-19T06:33:16+00:00/PT4H"],
///     defaultRetentionDuration: "P7D",
///     timeZone: "W. Europe Standard Time",
///     retentionRules: [
///         {
///             name: "Daily",
///             duration: "P7D",
///             priority: 25,
///             criteria: {
///                 absoluteCriteria: "FirstOfDay",
///             },
///         },
///         {
///             name: "Weekly",
///             duration: "P7D",
///             priority: 20,
///             criteria: {
///                 absoluteCriteria: "FirstOfWeek",
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
/// example_backup_policy_disk = azure.dataprotection.BackupPolicyDisk("example",
///     name="example-backup-policy",
///     vault_id=example_backup_vault.id,
///     backup_repeating_time_intervals=["R/2021-05-19T06:33:16+00:00/PT4H"],
///     default_retention_duration="P7D",
///     time_zone="W. Europe Standard Time",
///     retention_rules=[
///         {
///             "name": "Daily",
///             "duration": "P7D",
///             "priority": 25,
///             "criteria": {
///                 "absolute_criteria": "FirstOfDay",
///             },
///         },
///         {
///             "name": "Weekly",
///             "duration": "P7D",
///             "priority": 20,
///             "criteria": {
///                 "absolute_criteria": "FirstOfWeek",
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
///     var exampleBackupPolicyDisk = new Azure.DataProtection.BackupPolicyDisk("example", new()
///     {
///         Name = "example-backup-policy",
///         VaultId = exampleBackupVault.Id,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2021-05-19T06:33:16+00:00/PT4H",
///         },
///         DefaultRetentionDuration = "P7D",
///         TimeZone = "W. Europe Standard Time",
///         RetentionRules = new[]
///         {
///             new Azure.DataProtection.Inputs.BackupPolicyDiskRetentionRuleArgs
///             {
///                 Name = "Daily",
///                 Duration = "P7D",
///                 Priority = 25,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyDiskRetentionRuleCriteriaArgs
///                 {
///                     AbsoluteCriteria = "FirstOfDay",
///                 },
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyDiskRetentionRuleArgs
///             {
///                 Name = "Weekly",
///                 Duration = "P7D",
///                 Priority = 20,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyDiskRetentionRuleCriteriaArgs
///                 {
///                     AbsoluteCriteria = "FirstOfWeek",
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
/// 		_, err = dataprotection.NewBackupPolicyDisk(ctx, "example", &dataprotection.BackupPolicyDiskArgs{
/// 			Name:    pulumi.String("example-backup-policy"),
/// 			VaultId: exampleBackupVault.ID(),
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-19T06:33:16+00:00/PT4H"),
/// 			},
/// 			DefaultRetentionDuration: pulumi.String("P7D"),
/// 			TimeZone:                 pulumi.String("W. Europe Standard Time"),
/// 			RetentionRules: dataprotection.BackupPolicyDiskRetentionRuleArray{
/// 				&dataprotection.BackupPolicyDiskRetentionRuleArgs{
/// 					Name:     pulumi.String("Daily"),
/// 					Duration: pulumi.String("P7D"),
/// 					Priority: pulumi.Int(25),
/// 					Criteria: &dataprotection.BackupPolicyDiskRetentionRuleCriteriaArgs{
/// 						AbsoluteCriteria: pulumi.String("FirstOfDay"),
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyDiskRetentionRuleArgs{
/// 					Name:     pulumi.String("Weekly"),
/// 					Duration: pulumi.String("P7D"),
/// 					Priority: pulumi.Int(20),
/// 					Criteria: &dataprotection.BackupPolicyDiskRetentionRuleCriteriaArgs{
/// 						AbsoluteCriteria: pulumi.String("FirstOfWeek"),
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
/// }
/// resource "azure_dataprotection_backuppolicydisk" "example" {
///   name                            = "example-backup-policy"
///   vault_id                        = azure_dataprotection_backupvault.example.id
///   backup_repeating_time_intervals = ["R/2021-05-19T06:33:16+00:00/PT4H"]
///   default_retention_duration      = "P7D"
///   time_zone                       = "W. Europe Standard Time"
///   retention_rules {
///     name     = "Daily"
///     duration = "P7D"
///     priority = 25
///     criteria = {
///       absolute_criteria = "FirstOfDay"
///     }
///   }
///   retention_rules {
///     name     = "Weekly"
///     duration = "P7D"
///     priority = 20
///     criteria = {
///       absolute_criteria = "FirstOfWeek"
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
/// import com.pulumi.azure.dataprotection.BackupPolicyDisk;
/// import com.pulumi.azure.dataprotection.BackupPolicyDiskArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyDiskRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyDiskRetentionRuleCriteriaArgs;
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
///             .build());
///
///         var exampleBackupPolicyDisk = new BackupPolicyDisk("exampleBackupPolicyDisk", BackupPolicyDiskArgs.builder()
///             .name("example-backup-policy")
///             .vaultId(exampleBackupVault.id())
///             .backupRepeatingTimeIntervals("R/2021-05-19T06:33:16+00:00/PT4H")
///             .defaultRetentionDuration("P7D")
///             .timeZone("W. Europe Standard Time")
///             .retentionRules(
///                 BackupPolicyDiskRetentionRuleArgs.builder()
///                     .name("Daily")
///                     .duration("P7D")
///                     .priority(25)
///                     .criteria(BackupPolicyDiskRetentionRuleCriteriaArgs.builder()
///                         .absoluteCriteria("FirstOfDay")
///                         .build())
///                     .build(),
///                 BackupPolicyDiskRetentionRuleArgs.builder()
///                     .name("Weekly")
///                     .duration("P7D")
///                     .priority(20)
///                     .criteria(BackupPolicyDiskRetentionRuleCriteriaArgs.builder()
///                         .absoluteCriteria("FirstOfWeek")
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
///   exampleBackupPolicyDisk:
///     type: azure:dataprotection:BackupPolicyDisk
///     name: example
///     properties:
///       name: example-backup-policy
///       vaultId: ${exampleBackupVault.id}
///       backupRepeatingTimeIntervals:
///         - R/2021-05-19T06:33:16+00:00/PT4H
///       defaultRetentionDuration: P7D
///       timeZone: W. Europe Standard Time
///       retentionRules:
///         - name: Daily
///           duration: P7D
///           priority: 25
///           criteria:
///             absoluteCriteria: FirstOfDay
///         - name: Weekly
///           duration: P7D
///           priority: 20
///           criteria:
///             absoluteCriteria: FirstOfWeek
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
/// Backup Policy Disks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupPolicyDisk:BackupPolicyDisk example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupPolicies/backupPolicy1
/// ```
class BackupPolicyDisk extends pulumi.CustomResource {
  /// Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval . Changing this forces a new Backup Policy Disk to be created.
  late final pulumi.Output<List<String>> backupRepeatingTimeIntervals;
  /// The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created.
  late final pulumi.Output<String> defaultRetentionDuration;
  /// The name which should be used for this Backup Policy Disk. Changing this forces a new Backup Policy Disk to be created.
  late final pulumi.Output<String> name;
  /// One or more `retentionRule` blocks as defined below. Changing this forces a new Backup Policy Disk to be created.
  late final pulumi.Output<List<Map<String, dynamic>>?> retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy Disk to be created.
  late final pulumi.Output<String?> timeZone;
  /// The ID of the Backup Vault within which the Backup Policy Disk should exist. Changing this forces a new Backup Policy Disk to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [BackupPolicyDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicyDisk]. {@macro pulumi_dataprotection_backup_policy_disk_backup_policy_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicyDisk(
    String name, {
    BackupPolicyDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyDisk:BackupPolicyDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupRepeatingTimeIntervals = registerOutput<List<String>>('backupRepeatingTimeIntervals');
    defaultRetentionDuration = registerOutput<String>('defaultRetentionDuration');
    this.name = registerOutput<String>('name');
    retentionRules = registerOutput<List<Map<String, dynamic>>?>('retentionRules');
    timeZone = registerOutput<String?>('timeZone');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [BackupPolicyDisk] resource's state with the given [name] and [id].
  static BackupPolicyDisk get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyDiskState? state,
  }) {
    return BackupPolicyDisk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicyDisk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyDisk:BackupPolicyDisk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupRepeatingTimeIntervals = registerOutput<List<String>>('backupRepeatingTimeIntervals');
    defaultRetentionDuration = registerOutput<String>('defaultRetentionDuration');
    this.name = registerOutput<String>('name');
    retentionRules = registerOutput<List<Map<String, dynamic>>?>('retentionRules');
    timeZone = registerOutput<String?>('timeZone');
    vaultId = registerOutput<String>('vaultId');
  }
}
