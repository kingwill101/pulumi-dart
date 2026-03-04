import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_vmargs.dart';
import 'policy_vmbackup.dart';
import 'policy_vminstant_restore_resource_group.dart';
import 'policy_vmretention_daily.dart';
import 'policy_vmretention_monthly.dart';
import 'policy_vmretention_weekly.dart';
import 'policy_vmretention_yearly.dart';
import 'policy_vmstate.dart';
import 'policy_vmtiering_policy.dart';

/// Manages an Azure Backup VM Backup Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-recovery_vault",
///     location: "West Europe",
/// });
/// const exampleVault = new azure.recoveryservices.Vault("example", {
///     name: "tfex-recovery-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const examplePolicyVM = new azure.backup.PolicyVM("example", {
///     name: "tfex-recovery-vault-policy",
///     resourceGroupName: example.name,
///     recoveryVaultName: exampleVault.name,
///     timezone: "UTC",
///     backup: {
///         frequency: "Daily",
///         time: "23:00",
///     },
///     retentionDaily: {
///         count: 10,
///     },
///     retentionWeekly: {
///         count: 42,
///         weekdays: [
///             "Sunday",
///             "Wednesday",
///             "Friday",
///             "Saturday",
///         ],
///     },
///     retentionMonthly: {
///         count: 7,
///         weekdays: [
///             "Sunday",
///             "Wednesday",
///         ],
///         weeks: [
///             "First",
///             "Last",
///         ],
///     },
///     retentionYearly: {
///         count: 77,
///         weekdays: ["Sunday"],
///         weeks: ["Last"],
///         months: ["January"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-recovery_vault",
///     location="West Europe")
/// example_vault = azure.recoveryservices.Vault("example",
///     name="tfex-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_policy_vm = azure.backup.PolicyVM("example",
///     name="tfex-recovery-vault-policy",
///     resource_group_name=example.name,
///     recovery_vault_name=example_vault.name,
///     timezone="UTC",
///     backup={
///         "frequency": "Daily",
///         "time": "23:00",
///     },
///     retention_daily={
///         "count": 10,
///     },
///     retention_weekly={
///         "count": 42,
///         "weekdays": [
///             "Sunday",
///             "Wednesday",
///             "Friday",
///             "Saturday",
///         ],
///     },
///     retention_monthly={
///         "count": 7,
///         "weekdays": [
///             "Sunday",
///             "Wednesday",
///         ],
///         "weeks": [
///             "First",
///             "Last",
///         ],
///     },
///     retention_yearly={
///         "count": 77,
///         "weekdays": ["Sunday"],
///         "weeks": ["Last"],
///         "months": ["January"],
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
///         Name = "tfex-recovery_vault",
///         Location = "West Europe",
///     });
///
///     var exampleVault = new Azure.RecoveryServices.Vault("example", new()
///     {
///         Name = "tfex-recovery-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var examplePolicyVM = new Azure.Backup.PolicyVM("example", new()
///     {
///         Name = "tfex-recovery-vault-policy",
///         ResourceGroupName = example.Name,
///         RecoveryVaultName = exampleVault.Name,
///         Timezone = "UTC",
///         Backup = new Azure.Backup.Inputs.PolicyVMBackupArgs
///         {
///             Frequency = "Daily",
///             Time = "23:00",
///         },
///         RetentionDaily = new Azure.Backup.Inputs.PolicyVMRetentionDailyArgs
///         {
///             Count = 10,
///         },
///         RetentionWeekly = new Azure.Backup.Inputs.PolicyVMRetentionWeeklyArgs
///         {
///             Count = 42,
///             Weekdays = new[]
///             {
///                 "Sunday",
///                 "Wednesday",
///                 "Friday",
///                 "Saturday",
///             },
///         },
///         RetentionMonthly = new Azure.Backup.Inputs.PolicyVMRetentionMonthlyArgs
///         {
///             Count = 7,
///             Weekdays = new[]
///             {
///                 "Sunday",
///                 "Wednesday",
///             },
///             Weeks = new[]
///             {
///                 "First",
///                 "Last",
///             },
///         },
///         RetentionYearly = new Azure.Backup.Inputs.PolicyVMRetentionYearlyArgs
///         {
///             Count = 77,
///             Weekdays = new[]
///             {
///                 "Sunday",
///             },
///             Weeks = new[]
///             {
///                 "Last",
///             },
///             Months = new[]
///             {
///                 "January",
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
/// 			Name:     pulumi.String("tfex-recovery_vault"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := recoveryservices.NewVault(ctx, "example", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("tfex-recovery-vault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backup.NewPolicyVM(ctx, "example", &backup.PolicyVMArgs{
/// 			Name:              pulumi.String("tfex-recovery-vault-policy"),
/// 			ResourceGroupName: example.Name,
/// 			RecoveryVaultName: exampleVault.Name,
/// 			Timezone:          pulumi.String("UTC"),
/// 			Backup: &backup.PolicyVMBackupArgs{
/// 				Frequency: pulumi.String("Daily"),
/// 				Time:      pulumi.String("23:00"),
/// 			},
/// 			RetentionDaily: &backup.PolicyVMRetentionDailyArgs{
/// 				Count: pulumi.Int(10),
/// 			},
/// 			RetentionWeekly: &backup.PolicyVMRetentionWeeklyArgs{
/// 				Count: pulumi.Int(42),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Sunday"),
/// 					pulumi.String("Wednesday"),
/// 					pulumi.String("Friday"),
/// 					pulumi.String("Saturday"),
/// 				},
/// 			},
/// 			RetentionMonthly: &backup.PolicyVMRetentionMonthlyArgs{
/// 				Count: pulumi.Int(7),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Sunday"),
/// 					pulumi.String("Wednesday"),
/// 				},
/// 				Weeks: pulumi.StringArray{
/// 					pulumi.String("First"),
/// 					pulumi.String("Last"),
/// 				},
/// 			},
/// 			RetentionYearly: &backup.PolicyVMRetentionYearlyArgs{
/// 				Count: pulumi.Int(77),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Sunday"),
/// 				},
/// 				Weeks: pulumi.StringArray{
/// 					pulumi.String("Last"),
/// 				},
/// 				Months: pulumi.StringArray{
/// 					pulumi.String("January"),
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
/// import com.pulumi.azure.recoveryservices.Vault;
/// import com.pulumi.azure.recoveryservices.VaultArgs;
/// import com.pulumi.azure.backup.PolicyVM;
/// import com.pulumi.azure.backup.PolicyVMArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMBackupArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMRetentionDailyArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMRetentionWeeklyArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMRetentionMonthlyArgs;
/// import com.pulumi.azure.backup.inputs.PolicyVMRetentionYearlyArgs;
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
///             .name("tfex-recovery_vault")
///             .location("West Europe")
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .name("tfex-recovery-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var examplePolicyVM = new PolicyVM("examplePolicyVM", PolicyVMArgs.builder()
///             .name("tfex-recovery-vault-policy")
///             .resourceGroupName(example.name())
///             .recoveryVaultName(exampleVault.name())
///             .timezone("UTC")
///             .backup(PolicyVMBackupArgs.builder()
///                 .frequency("Daily")
///                 .time("23:00")
///                 .build())
///             .retentionDaily(PolicyVMRetentionDailyArgs.builder()
///                 .count(10)
///                 .build())
///             .retentionWeekly(PolicyVMRetentionWeeklyArgs.builder()
///                 .count(42)
///                 .weekdays(
///                     "Sunday",
///                     "Wednesday",
///                     "Friday",
///                     "Saturday")
///                 .build())
///             .retentionMonthly(PolicyVMRetentionMonthlyArgs.builder()
///                 .count(7)
///                 .weekdays(
///                     "Sunday",
///                     "Wednesday")
///                 .weeks(
///                     "First",
///                     "Last")
///                 .build())
///             .retentionYearly(PolicyVMRetentionYearlyArgs.builder()
///                 .count(77)
///                 .weekdays("Sunday")
///                 .weeks("Last")
///                 .months("January")
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
///       name: tfex-recovery_vault
///       location: West Europe
///   exampleVault:
///     type: azure:recoveryservices:Vault
///     name: example
///     properties:
///       name: tfex-recovery-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   examplePolicyVM:
///     type: azure:backup:PolicyVM
///     name: example
///     properties:
///       name: tfex-recovery-vault-policy
///       resourceGroupName: ${example.name}
///       recoveryVaultName: ${exampleVault.name}
///       timezone: UTC
///       backup:
///         frequency: Daily
///         time: 23:00
///       retentionDaily:
///         count: 10
///       retentionWeekly:
///         count: 42
///         weekdays:
///           - Sunday
///           - Wednesday
///           - Friday
///           - Saturday
///       retentionMonthly:
///         count: 7
///         weekdays:
///           - Sunday
///           - Wednesday
///         weeks:
///           - First
///           - Last
///       retentionYearly:
///         count: 77
///         weekdays:
///           - Sunday
///         weeks:
///           - Last
///         months:
///           - January
/// ```
///
///
/// ## Import
///
/// VM Backup Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:backup/policyVM:PolicyVM policy1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.RecoveryServices/vaults/example-recovery-vault/backupPolicies/policy1
/// ```
class PolicyVM extends pulumi.CustomResource {
  /// Configures the Policy backup frequency, times & days as documented in the `backup` block below.
  late final pulumi.Output<PolicyVMBackup> backup;

  /// Specifies the instant restore resource group name as documented in the `instant_restore_resource_group` block below.
  late final pulumi.Output<PolicyVMInstantRestoreResourceGroup?>
  instantRestoreResourceGroup;

  /// Specifies the instant restore retention range in days. Possible values are between `1` and `5` when `policy_type` is `V1`, and `1` to `30` when `policy_type` is `V2`.
  ///
  /// &gt; **Note:** `instant_restore_retention_days` **must** be set to `5` if the backup frequency is set to `Weekly`.
  late final pulumi.Output<int> instantRestoreRetentionDays;

  /// Specifies the name of the Backup Policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Type of the Backup Policy. Possible values are `V1` and `V2` where `V2` stands for the Enhanced Policy. Defaults to `V1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> policyType;

  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;

  /// The name of the resource group in which to create the policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Configures the policy daily retention as documented in the `retention_daily` block below. Required when backup frequency is `Daily`.
  late final pulumi.Output<PolicyVMRetentionDaily?> retentionDaily;

  /// Configures the policy monthly retention as documented in the `retention_monthly` block below.
  late final pulumi.Output<PolicyVMRetentionMonthly?> retentionMonthly;

  /// Configures the policy weekly retention as documented in the `retention_weekly` block below. Required when backup frequency is `Weekly`.
  late final pulumi.Output<PolicyVMRetentionWeekly?> retentionWeekly;

  /// Configures the policy yearly retention as documented in the `retention_yearly` block below.
  late final pulumi.Output<PolicyVMRetentionYearly?> retentionYearly;

  /// A `tiering_policy` block as defined below.
  late final pulumi.Output<PolicyVMTieringPolicy?> tieringPolicy;

  /// Specifies the timezone. [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Defaults to `UTC`
  late final pulumi.Output<String?> timezone;

  /// Creates a new [PolicyVM].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyVM]. {@macro pulumi_backup_policy_vm_policy_vmargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyVM(
    String name, {
    PolicyVMArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:backup/policyVM:PolicyVM',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backup = registerOutput<PolicyVMBackup>('backup');
    instantRestoreResourceGroup =
        registerOutput<PolicyVMInstantRestoreResourceGroup?>(
          'instantRestoreResourceGroup',
        );
    instantRestoreRetentionDays = registerOutput<int>(
      'instantRestoreRetentionDays',
    );
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String?>('policyType');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionDaily = registerOutput<PolicyVMRetentionDaily?>('retentionDaily');
    retentionMonthly = registerOutput<PolicyVMRetentionMonthly?>(
      'retentionMonthly',
    );
    retentionWeekly = registerOutput<PolicyVMRetentionWeekly?>(
      'retentionWeekly',
    );
    retentionYearly = registerOutput<PolicyVMRetentionYearly?>(
      'retentionYearly',
    );
    tieringPolicy = registerOutput<PolicyVMTieringPolicy?>('tieringPolicy');
    timezone = registerOutput<String?>('timezone');
  }

  /// Gets an existing [PolicyVM] resource's state with the given [name] and [id].
  static PolicyVM get(
    String name,
    pulumi.Input<String> id, {
    PolicyVMState? state,
  }) {
    return PolicyVM._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PolicyVM._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:backup/policyVM:PolicyVM',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backup = registerOutput<PolicyVMBackup>('backup');
    instantRestoreResourceGroup =
        registerOutput<PolicyVMInstantRestoreResourceGroup?>(
          'instantRestoreResourceGroup',
        );
    instantRestoreRetentionDays = registerOutput<int>(
      'instantRestoreRetentionDays',
    );
    this.name = registerOutput<String>('name');
    policyType = registerOutput<String?>('policyType');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionDaily = registerOutput<PolicyVMRetentionDaily?>('retentionDaily');
    retentionMonthly = registerOutput<PolicyVMRetentionMonthly?>(
      'retentionMonthly',
    );
    retentionWeekly = registerOutput<PolicyVMRetentionWeekly?>(
      'retentionWeekly',
    );
    retentionYearly = registerOutput<PolicyVMRetentionYearly?>(
      'retentionYearly',
    );
    tieringPolicy = registerOutput<PolicyVMTieringPolicy?>('tieringPolicy');
    timezone = registerOutput<String?>('timezone');
  }
}
