import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_kubernetes_cluster_args.dart';
import 'backup_policy_kubernetes_cluster_default_retention_rule.dart';
import 'backup_policy_kubernetes_cluster_state.dart';

/// Manages a Backup Policy to back up Kubernetes Cluster.
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
/// const exampleBackupPolicyKubernetesCluster = new azure.dataprotection.BackupPolicyKubernetesCluster("example", {
///     name: "example-backup-policy",
///     resourceGroupName: example.name,
///     vaultName: exampleBackupVault.name,
///     backupRepeatingTimeIntervals: ["R/2021-05-23T02:30:00+00:00/P1W"],
///     timeZone: "India Standard Time",
///     defaultRetentionDuration: "P4M",
///     retentionRules: [{
///         name: "Daily",
///         priority: 25,
///         lifeCycles: [{
///             duration: "P84D",
///             dataStoreType: "OperationalStore",
///         }],
///         criteria: {
///             absoluteCriteria: "FirstOfDay",
///         },
///     }],
///     defaultRetentionRule: {
///         lifeCycles: [{
///             duration: "P7D",
///             dataStoreType: "OperationalStore",
///         }],
///     },
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
/// example_backup_policy_kubernetes_cluster = azure.dataprotection.BackupPolicyKubernetesCluster("example",
///     name="example-backup-policy",
///     resource_group_name=example.name,
///     vault_name=example_backup_vault.name,
///     backup_repeating_time_intervals=["R/2021-05-23T02:30:00+00:00/P1W"],
///     time_zone="India Standard Time",
///     default_retention_duration="P4M",
///     retention_rules=[{
///         "name": "Daily",
///         "priority": 25,
///         "life_cycles": [{
///             "duration": "P84D",
///             "data_store_type": "OperationalStore",
///         }],
///         "criteria": {
///             "absolute_criteria": "FirstOfDay",
///         },
///     }],
///     default_retention_rule={
///         "life_cycles": [{
///             "duration": "P7D",
///             "data_store_type": "OperationalStore",
///         }],
///     })
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
///     var exampleBackupPolicyKubernetesCluster = new Azure.DataProtection.BackupPolicyKubernetesCluster("example", new()
///     {
///         Name = "example-backup-policy",
///         ResourceGroupName = example.Name,
///         VaultName = exampleBackupVault.Name,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2021-05-23T02:30:00+00:00/P1W",
///         },
///         TimeZone = "India Standard Time",
///         DefaultRetentionDuration = "P4M",
///         RetentionRules = new[]
///         {
///             new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterRetentionRuleArgs
///             {
///                 Name = "Daily",
///                 Priority = 25,
///                 LifeCycles = new[]
///                 {
///                     new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterRetentionRuleLifeCycleArgs
///                     {
///                         Duration = "P84D",
///                         DataStoreType = "OperationalStore",
///                     },
///                 },
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterRetentionRuleCriteriaArgs
///                 {
///                     AbsoluteCriteria = "FirstOfDay",
///                 },
///             },
///         },
///         DefaultRetentionRule = new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterDefaultRetentionRuleArgs
///         {
///             LifeCycles = new[]
///             {
///                 new Azure.DataProtection.Inputs.BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArgs
///                 {
///                     Duration = "P7D",
///                     DataStoreType = "OperationalStore",
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
/// 		_, err = dataprotection.NewBackupPolicyKubernetesCluster(ctx, "example", &dataprotection.BackupPolicyKubernetesClusterArgs{
/// 			Name:              pulumi.String("example-backup-policy"),
/// 			ResourceGroupName: example.Name,
/// 			VaultName:         exampleBackupVault.Name,
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			TimeZone:                 pulumi.String("India Standard Time"),
/// 			DefaultRetentionDuration: "P4M",
/// 			RetentionRules: dataprotection.BackupPolicyKubernetesClusterRetentionRuleArray{
/// 				&dataprotection.BackupPolicyKubernetesClusterRetentionRuleArgs{
/// 					Name:     pulumi.String("Daily"),
/// 					Priority: pulumi.Int(25),
/// 					LifeCycles: dataprotection.BackupPolicyKubernetesClusterRetentionRuleLifeCycleArray{
/// 						&dataprotection.BackupPolicyKubernetesClusterRetentionRuleLifeCycleArgs{
/// 							Duration:      pulumi.String("P84D"),
/// 							DataStoreType: pulumi.String("OperationalStore"),
/// 						},
/// 					},
/// 					Criteria: &dataprotection.BackupPolicyKubernetesClusterRetentionRuleCriteriaArgs{
/// 						AbsoluteCriteria: pulumi.String("FirstOfDay"),
/// 					},
/// 				},
/// 			},
/// 			DefaultRetentionRule: &dataprotection.BackupPolicyKubernetesClusterDefaultRetentionRuleArgs{
/// 				LifeCycles: dataprotection.BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArray{
/// 					&dataprotection.BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArgs{
/// 						Duration:      pulumi.String("P7D"),
/// 						DataStoreType: pulumi.String("OperationalStore"),
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
/// resource "azure_dataprotection_backuppolicykubernetescluster" "example" {
///   name                            = "example-backup-policy"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   vault_name                      = azure_dataprotection_backupvault.example.name
///   backup_repeating_time_intervals = ["R/2021-05-23T02:30:00+00:00/P1W"]
///   time_zone                       = "India Standard Time"
///   default_retention_duration      = "P4M"
///   retention_rules {
///     name     = "Daily"
///     priority = 25
///     life_cycles {
///       duration        = "P84D"
///       data_store_type = "OperationalStore"
///     }
///     criteria = {
///       absolute_criteria = "FirstOfDay"
///     }
///   }
///   default_retention_rule = {
///     life_cycles = [{
///       "duration"      = "P7D"
///       "dataStoreType" = "OperationalStore"
///     }]
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
/// import com.pulumi.azure.dataprotection.BackupPolicyKubernetesCluster;
/// import com.pulumi.azure.dataprotection.BackupPolicyKubernetesClusterArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterRetentionRuleLifeCycleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterRetentionRuleCriteriaArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterDefaultRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArgs;
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
///         var exampleBackupPolicyKubernetesCluster = new BackupPolicyKubernetesCluster("exampleBackupPolicyKubernetesCluster", BackupPolicyKubernetesClusterArgs.builder()
///             .name("example-backup-policy")
///             .resourceGroupName(example.name())
///             .vaultName(exampleBackupVault.name())
///             .backupRepeatingTimeIntervals("R/2021-05-23T02:30:00+00:00/P1W")
///             .timeZone("India Standard Time")
///             .defaultRetentionDuration("P4M")
///             .retentionRules(BackupPolicyKubernetesClusterRetentionRuleArgs.builder()
///                 .name("Daily")
///                 .priority(25)
///                 .lifeCycles(BackupPolicyKubernetesClusterRetentionRuleLifeCycleArgs.builder()
///                     .duration("P84D")
///                     .dataStoreType("OperationalStore")
///                     .build())
///                 .criteria(BackupPolicyKubernetesClusterRetentionRuleCriteriaArgs.builder()
///                     .absoluteCriteria("FirstOfDay")
///                     .build())
///                 .build())
///             .defaultRetentionRule(BackupPolicyKubernetesClusterDefaultRetentionRuleArgs.builder()
///                 .lifeCycles(BackupPolicyKubernetesClusterDefaultRetentionRuleLifeCycleArgs.builder()
///                     .duration("P7D")
///                     .dataStoreType("OperationalStore")
///                     .build())
///                 .build())
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
///   exampleBackupPolicyKubernetesCluster:
///     type: azure:dataprotection:BackupPolicyKubernetesCluster
///     name: example
///     properties:
///       name: example-backup-policy
///       resourceGroupName: ${example.name}
///       vaultName: ${exampleBackupVault.name}
///       backupRepeatingTimeIntervals:
///         - R/2021-05-23T02:30:00+00:00/P1W
///       timeZone: India Standard Time
///       defaultRetentionDuration: P4M
///       retentionRules:
///         - name: Daily
///           priority: 25
///           lifeCycles:
///             - duration: P84D
///               dataStoreType: OperationalStore
///           criteria:
///             absoluteCriteria: FirstOfDay
///       defaultRetentionRule:
///         lifeCycles:
///           - duration: P7D
///             dataStoreType: OperationalStore
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
/// Backup Policy Kubernetes Cluster's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupPolicyKubernetesCluster:BackupPolicyKubernetesCluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupPolicies/backupPolicy1
/// ```
class BackupPolicyKubernetesCluster extends pulumi.CustomResource {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> backupRepeatingTimeIntervals;
  /// A `defaultRetentionRule` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<BackupPolicyKubernetesClusterDefaultRetentionRule> defaultRetentionRule;
  /// The name which should be used for the Backup Policy Kubernetes Cluster. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Backup Policy Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `retentionRule` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<Map<String, dynamic>>?> retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> timeZone;
  /// The name of the Backup Vault where the Backup Policy Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vaultName;

  /// Creates a new [BackupPolicyKubernetesCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicyKubernetesCluster]. {@macro pulumi_dataprotection_backup_policy_kubernetes_cluster_backup_policy_kubernetes_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicyKubernetesCluster(
    String name, {
    BackupPolicyKubernetesClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyKubernetesCluster:BackupPolicyKubernetesCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupRepeatingTimeIntervals = registerOutput<List<String>>('backupRepeatingTimeIntervals');
    defaultRetentionRule = registerOutput<BackupPolicyKubernetesClusterDefaultRetentionRule>('defaultRetentionRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupPolicyKubernetesClusterDefaultRetentionRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionRules = registerOutput<List<Map<String, dynamic>>?>('retentionRules');
    timeZone = registerOutput<String?>('timeZone');
    vaultName = registerOutput<String>('vaultName');
  }

  /// Gets an existing [BackupPolicyKubernetesCluster] resource's state with the given [name] and [id].
  static BackupPolicyKubernetesCluster get(
    String name,
    pulumi.Input<String> id, {
    BackupPolicyKubernetesClusterState? state,
  }) {
    return BackupPolicyKubernetesCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BackupPolicyKubernetesCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyKubernetesCluster:BackupPolicyKubernetesCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupRepeatingTimeIntervals = registerOutput<List<String>>('backupRepeatingTimeIntervals');
    defaultRetentionRule = registerOutput<BackupPolicyKubernetesClusterDefaultRetentionRule>('defaultRetentionRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupPolicyKubernetesClusterDefaultRetentionRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionRules = registerOutput<List<Map<String, dynamic>>?>('retentionRules');
    timeZone = registerOutput<String?>('timeZone');
    vaultName = registerOutput<String>('vaultName');
  }
}
