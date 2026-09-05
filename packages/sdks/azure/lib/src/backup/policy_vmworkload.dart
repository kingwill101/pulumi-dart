import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_vmworkload_args.dart';
import 'policy_vmworkload_protection_policy.dart';
import 'policy_vmworkload_settings.dart';
import 'policy_vmworkload_state.dart';

/// Manages an Azure VM Workload Backup Policy within a Recovery Services vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-bpvmw",
///     location: "West Europe",
/// });
/// const exampleVault = new azure.recoveryservices.Vault("example", {
///     name: "example-rsv",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     softDeleteEnabled: false,
/// });
/// const examplePolicyVMWorkload = new azure.backup.PolicyVMWorkload("example", {
///     name: "example-bpvmw",
///     resourceGroupName: example.name,
///     recoveryVaultName: exampleVault.name,
///     workloadType: "SQLDataBase",
///     settings: {
///         timeZone: "UTC",
///         compressionEnabled: false,
///     },
///     protectionPolicies: [
///         {
///             policyType: "Full",
///             backup: {
///                 frequency: "Daily",
///                 time: "15:00",
///             },
///             retentionDaily: {
///                 count: 8,
///             },
///         },
///         {
///             policyType: "Log",
///             backup: {
///                 frequencyInMinutes: 15,
///             },
///             simpleRetention: {
///                 count: 8,
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
///     name="example-bpvmw",
///     location="West Europe")
/// example_vault = azure.recoveryservices.Vault("example",
///     name="example-rsv",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     soft_delete_enabled=False)
/// example_policy_vm_workload = azure.backup.PolicyVMWorkload("example",
///     name="example-bpvmw",
///     resource_group_name=example.name,
///     recovery_vault_name=example_vault.name,
///     workload_type="SQLDataBase",
///     settings={
///         "time_zone": "UTC",
///         "compression_enabled": False,
///     },
///     protection_policies=[
///         {
///             "policy_type": "Full",
///             "backup": {
///                 "frequency": "Daily",
///                 "time": "15:00",
///             },
///             "retention_daily": {
///                 "count": 8,
///             },
///         },
///         {
///             "policy_type": "Log",
///             "backup": {
///                 "frequency_in_minutes": 15,
///             },
///             "simple_retention": {
///                 "count": 8,
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
///         Name = "example-bpvmw",
///         Location = "West Europe",
///     });
///
///     var exampleVault = new Azure.RecoveryServices.Vault("example", new()
///     {
///         Name = "example-rsv",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         SoftDeleteEnabled = false,
///     });
///
///     var examplePolicyVMWorkload = new Azure.Backup.PolicyVMWorkload("example", new()
///     {
///         Name = "example-bpvmw",
///         ResourceGroupName = example.Name,
///         RecoveryVaultName = exampleVault.Name,
///         WorkloadType = "SQLDataBase",
///         Settings = new Azure.Backup.Inputs.PolicyVMWorkloadSettingsArgs
///         {
///             TimeZone = "UTC",
///             CompressionEnabled = false,
///         },
///         ProtectionPolicies = new[]
///         {
///             new Azure.Backup.Inputs.PolicyVMWorkloadProtectionPolicyArgs
///             {
///                 PolicyType = "Full",
///                 Backup = new Azure.Backup.Inputs.PolicyVMWorkloadProtectionPolicyBackupArgs
///                 {
///                     Frequency = "Daily",
///                     Time = "15:00",
///                 },
///                 RetentionDaily = new Azure.Backup.Inputs.PolicyVMWorkloadProtectionPolicyRetentionDailyArgs
///                 {
///                     Count = 8,
///                 },
///             },
///             new Azure.Backup.Inputs.PolicyVMWorkloadProtectionPolicyArgs
///             {
///                 PolicyType = "Log",
///                 Backup = new Azure.Backup.Inputs.PolicyVMWorkloadProtectionPolicyBackupArgs
///                 {
///                     FrequencyInMinutes = 15,
///                 },
///                 SimpleRetention = new Azure.Backup.Inputs.PolicyVMWorkloadProtectionPolicySimpleRetentionArgs
///                 {
///                     Count = 8,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/backup"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-bpvmw"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := recoveryservices.NewVault(ctx, "example", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-rsv"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			SoftDeleteEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backup.NewPolicyVMWorkload(ctx, "example", &backup.PolicyVMWorkloadArgs{
/// 			Name:              pulumi.String("example-bpvmw"),
/// 			ResourceGroupName: example.Name,
/// 			RecoveryVaultName: exampleVault.Name,
/// 			WorkloadType:      pulumi.String("SQLDataBase"),
/// 			Settings: &backup.PolicyVMWorkloadSettingsArgs{
/// 				TimeZone:           pulumi.String("UTC"),
/// 				CompressionEnabled: pulumi.Bool(false),
/// 			},
/// 			ProtectionPolicies: backup.PolicyVMWorkloadProtectionPolicyArray{
/// 				&backup.PolicyVMWorkloadProtectionPolicyArgs{
/// 					PolicyType: pulumi.String("Full"),
/// 					Backup: &backup.PolicyVMWorkloadProtectionPolicyBackupArgs{
/// 						Frequency: pulumi.String("Daily"),
/// 						Time:      pulumi.String("15:00"),
/// 					},
/// 					RetentionDaily: &backup.PolicyVMWorkloadProtectionPolicyRetentionDailyArgs{
/// 						Count: pulumi.Int(8),
/// 					},
/// 				},
/// 				&backup.PolicyVMWorkloadProtectionPolicyArgs{
/// 					PolicyType: pulumi.String("Log"),
/// 					Backup: &backup.PolicyVMWorkloadProtectionPolicyBackupArgs{
/// 						FrequencyInMinutes: pulumi.Int(15),
/// 					},
/// 					SimpleRetention: &backup.PolicyVMWorkloadProtectionPolicySimpleRetentionArgs{
/// 						Count: pulumi.Int(8),
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
///   name     = "example-bpvmw"
///   location = "West Europe"
/// }
/// resource "azure_recoveryservices_vault" "example" {
///   name                = "example-rsv"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
///   soft_delete_enabled = false
/// }
/// resource "azure_backup_policyvmworkload" "example" {
///   name                = "example-bpvmw"
///   resource_group_name = azure_core_resourcegroup.example.name
///   recovery_vault_name = azure_recoveryservices_vault.example.name
///   workload_type       = "SQLDataBase"
///   settings = {
///     time_zone           = "UTC"
///     compression_enabled = false
///   }
///   protection_policies {
///     policy_type = "Full"
///     backup = {
///       frequency = "Daily"
///       time      = "15:00"
///     }
///     retention_daily = {
///       count = 8
///     }
///   }
///   protection_policies {
///     policy_type = "Log"
///     backup = {
///       frequency_in_minutes = 15
///     }
///     simple_retention = {
///       count = 8
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
/// import com.pulumi.azure.recoveryservices.Vault;
/// import com.pulumi.azure.recoveryservices.VaultArgs;
/// import com.pulumi.azure.backup.PolicyVMWorkload;
/// import com.pulumi.azure.backup.PolicyVMWorkloadArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMWorkloadSettingsArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMWorkloadProtectionPolicyArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMWorkloadProtectionPolicyBackupArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMWorkloadProtectionPolicyRetentionDailyArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMWorkloadProtectionPolicySimpleRetentionArgs;
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
///             .name("example-bpvmw")
///             .location("West Europe")
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .name("example-rsv")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .softDeleteEnabled(false)
///             .build());
///
///         var examplePolicyVMWorkload = new PolicyVMWorkload("examplePolicyVMWorkload", PolicyVMWorkloadArgs.builder()
///             .name("example-bpvmw")
///             .resourceGroupName(example.name())
///             .recoveryVaultName(exampleVault.name())
///             .workloadType("SQLDataBase")
///             .settings(PolicyVMWorkloadSettingsArgs.builder()
///                 .timeZone("UTC")
///                 .compressionEnabled(false)
///                 .build())
///             .protectionPolicies(
///                 PolicyVMWorkloadProtectionPolicyArgs.builder()
///                     .policyType("Full")
///                     .backup(PolicyVMWorkloadProtectionPolicyBackupArgs.builder()
///                         .frequency("Daily")
///                         .time("15:00")
///                         .build())
///                     .retentionDaily(PolicyVMWorkloadProtectionPolicyRetentionDailyArgs.builder()
///                         .count(8)
///                         .build())
///                     .build(),
///                 PolicyVMWorkloadProtectionPolicyArgs.builder()
///                     .policyType("Log")
///                     .backup(PolicyVMWorkloadProtectionPolicyBackupArgs.builder()
///                         .frequencyInMinutes(15)
///                         .build())
///                     .simpleRetention(PolicyVMWorkloadProtectionPolicySimpleRetentionArgs.builder()
///                         .count(8)
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
///       name: example-bpvmw
///       location: West Europe
///   exampleVault:
///     type: azure:recoveryservices:Vault
///     name: example
///     properties:
///       name: example-rsv
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       softDeleteEnabled: false
///   examplePolicyVMWorkload:
///     type: azure:backup:PolicyVMWorkload
///     name: example
///     properties:
///       name: example-bpvmw
///       resourceGroupName: ${example.name}
///       recoveryVaultName: ${exampleVault.name}
///       workloadType: SQLDataBase
///       settings:
///         timeZone: UTC
///         compressionEnabled: false
///       protectionPolicies:
///         - policyType: Full
///           backup:
///             frequency: Daily
///             time: 15:00
///           retentionDaily:
///             count: 8
///         - policyType: Log
///           backup:
///             frequencyInMinutes: 15
///           simpleRetention:
///             count: 8
/// ```
///
///
/// ## Import
///
/// Azure VM Workload Backup Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:backup/policyVMWorkload:PolicyVMWorkload policy1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.RecoveryServices/vaults/vault1/backupPolicies/policy1
/// ```
class PolicyVMWorkload extends pulumi.CustomResource {
  /// The name of the VM Workload Backup Policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `protectionPolicy` blocks as defined below.
  late final pulumi.Output<List<PolicyVMWorkloadProtectionPolicy>> protectionPolicies;
  /// The name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;
  /// The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `settings` block as defined below.
  late final pulumi.Output<PolicyVMWorkloadSettings> settings;
  /// The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> workloadType;

  /// Creates a new [PolicyVMWorkload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyVMWorkload]. {@macro pulumi_backup_policy_vmworkload_policy_vmworkload_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyVMWorkload(
    String name, {
    PolicyVMWorkloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:backup/policyVMWorkload:PolicyVMWorkload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    protectionPolicies = registerOutput<List<PolicyVMWorkloadProtectionPolicy>>('protectionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyVMWorkloadProtectionPolicy>(guardedValue, (value) => PolicyVMWorkloadProtectionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    settings = registerOutput<PolicyVMWorkloadSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyVMWorkloadSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadType = registerOutput<String>('workloadType');
  }

  /// Gets an existing [PolicyVMWorkload] resource's state with the given [name] and [id].
  static PolicyVMWorkload get(
    String name,
    pulumi.Input<String> id, {
    PolicyVMWorkloadState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PolicyVMWorkload._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PolicyVMWorkload._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:backup/policyVMWorkload:PolicyVMWorkload',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    protectionPolicies = registerOutput<List<PolicyVMWorkloadProtectionPolicy>>('protectionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyVMWorkloadProtectionPolicy>(guardedValue, (value) => PolicyVMWorkloadProtectionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    settings = registerOutput<PolicyVMWorkloadSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyVMWorkloadSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadType = registerOutput<String>('workloadType');
  }

  /// Creates a typed reference to an existing [PolicyVMWorkload] resource.
  PolicyVMWorkload.reference(String urn)
    : super(
        'azure:backup/policyVMWorkload:PolicyVMWorkload',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    protectionPolicies = registerOutput<List<PolicyVMWorkloadProtectionPolicy>>('protectionPolicies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PolicyVMWorkloadProtectionPolicy>(guardedValue, (value) => PolicyVMWorkloadProtectionPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    settings = registerOutput<PolicyVMWorkloadSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PolicyVMWorkloadSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadType = registerOutput<String>('workloadType');
  }
}
