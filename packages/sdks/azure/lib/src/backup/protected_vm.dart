import 'package:pulumi/pulumi.dart' as pulumi;
import 'protected_vmargs.dart';
import 'protected_vmstate.dart';

/// Manages an Azure Backup Protected Virtual Machine.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "tfex-recovery_vault",
///     location: "West Europe",
/// });
/// const exampleVault = new azure.recoveryservices.Vault("example", {
///     name: "tfex-recovery-vault",
///     location: exampleResourceGroup.location,
///     resourceGroupName: exampleResourceGroup.name,
///     sku: "Standard",
/// });
/// const examplePolicyVM = new azure.backup.PolicyVM("example", {
///     name: "tfex-recovery-vault-policy",
///     resourceGroupName: exampleResourceGroup.name,
///     recoveryVaultName: exampleVault.name,
///     backup: {
///         frequency: "Daily",
///         time: "23:00",
///     },
///     retentionDaily: {
///         count: 10,
///     },
/// });
/// const example = azure.compute.getVirtualMachineOutput({
///     name: "example-vm",
///     resourceGroupName: exampleResourceGroup.name,
/// });
/// const vm1 = new azure.backup.ProtectedVM("vm1", {
///     resourceGroupName: exampleResourceGroup.name,
///     recoveryVaultName: exampleVault.name,
///     sourceVmId: example.id,
///     backupPolicyId: examplePolicyVM.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="tfex-recovery_vault",
///     location="West Europe")
/// example_vault = azure.recoveryservices.Vault("example",
///     name="tfex-recovery-vault",
///     location=example_resource_group.location,
///     resource_group_name=example_resource_group.name,
///     sku="Standard")
/// example_policy_vm = azure.backup.PolicyVM("example",
///     name="tfex-recovery-vault-policy",
///     resource_group_name=example_resource_group.name,
///     recovery_vault_name=example_vault.name,
///     backup={
///         "frequency": "Daily",
///         "time": "23:00",
///     },
///     retention_daily={
///         "count": 10,
///     })
/// example = azure.compute.get_virtual_machine_output(name="example-vm",
///     resource_group_name=example_resource_group.name)
/// vm1 = azure.backup.ProtectedVM("vm1",
///     resource_group_name=example_resource_group.name,
///     recovery_vault_name=example_vault.name,
///     source_vm_id=example.id,
///     backup_policy_id=example_policy_vm.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "tfex-recovery_vault",
///         Location = "West Europe",
///     });
///
///     var exampleVault = new Azure.RecoveryServices.Vault("example", new()
///     {
///         Name = "tfex-recovery-vault",
///         Location = exampleResourceGroup.Location,
///         ResourceGroupName = exampleResourceGroup.Name,
///         Sku = "Standard",
///     });
///
///     var examplePolicyVM = new Azure.Backup.PolicyVM("example", new()
///     {
///         Name = "tfex-recovery-vault-policy",
///         ResourceGroupName = exampleResourceGroup.Name,
///         RecoveryVaultName = exampleVault.Name,
///         Backup = new Azure.Backup.Inputs.PolicyVMBackupArgs
///         {
///             Frequency = "Daily",
///             Time = "23:00",
///         },
///         RetentionDaily = new Azure.Backup.Inputs.PolicyVMRetentionDailyArgs
///         {
///             Count = 10,
///         },
///     });
///
///     var example = Azure.Compute.GetVirtualMachine.Invoke(new()
///     {
///         Name = "example-vm",
///         ResourceGroupName = exampleResourceGroup.Name,
///     });
///
///     var vm1 = new Azure.Backup.ProtectedVM("vm1", new()
///     {
///         ResourceGroupName = exampleResourceGroup.Name,
///         RecoveryVaultName = exampleVault.Name,
///         SourceVmId = example.Apply(getVirtualMachineResult => getVirtualMachineResult.Id),
///         BackupPolicyId = examplePolicyVM.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/backup"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-recovery_vault"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := recoveryservices.NewVault(ctx, "example", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("tfex-recovery-vault"),
/// 			Location:          exampleResourceGroup.Location,
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePolicyVM, err := backup.NewPolicyVM(ctx, "example", &backup.PolicyVMArgs{
/// 			Name:              pulumi.String("tfex-recovery-vault-policy"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			RecoveryVaultName: exampleVault.Name,
/// 			Backup: &backup.PolicyVMBackupArgs{
/// 				Frequency: pulumi.String("Daily"),
/// 				Time:      pulumi.String("23:00"),
/// 			},
/// 			RetentionDaily: &backup.PolicyVMRetentionDailyArgs{
/// 				Count: pulumi.Int(10),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := compute.LookupVirtualMachineOutput(ctx, compute.GetVirtualMachineOutputArgs{
/// 			Name:              pulumi.String("example-vm"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 		}, nil)
/// 		_, err = backup.NewProtectedVM(ctx, "vm1", &backup.ProtectedVMArgs{
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			RecoveryVaultName: exampleVault.Name,
/// 			SourceVmId:        example.Id(),
/// 			BackupPolicyId:    examplePolicyVM.ID().ToIDOutput().ToStringOutput(),
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
/// data "azure_compute_getvirtualmachine" "example" {
///   name                = "example-vm"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "tfex-recovery_vault"
///   location = "West Europe"
/// }
/// resource "azure_recoveryservices_vault" "example" {
///   name                = "tfex-recovery-vault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
/// }
/// resource "azure_backup_policyvm" "example" {
///   name                = "tfex-recovery-vault-policy"
///   resource_group_name = azure_core_resourcegroup.example.name
///   recovery_vault_name = azure_recoveryservices_vault.example.name
///   backup = {
///     frequency = "Daily"
///     time      = "23:00"
///   }
///   retention_daily = {
///     count = 10
///   }
/// }
/// resource "azure_backup_protectedvm" "vm1" {
///   resource_group_name = azure_core_resourcegroup.example.name
///   recovery_vault_name = azure_recoveryservices_vault.example.name
///   source_vm_id        = data.azure_compute_getvirtualmachine.example.id
///   backup_policy_id    = azure_backup_policyvm.example.id
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
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetVirtualMachineArgs;
/// import com.pulumi.azure.backup.ProtectedVM;
/// import com.pulumi.azure.backup.ProtectedVMArgs;
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
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("tfex-recovery_vault")
///             .location("West Europe")
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .name("tfex-recovery-vault")
///             .location(exampleResourceGroup.location())
///             .resourceGroupName(exampleResourceGroup.name())
///             .sku("Standard")
///             .build());
///
///         var examplePolicyVM = new PolicyVM("examplePolicyVM", PolicyVMArgs.builder()
///             .name("tfex-recovery-vault-policy")
///             .resourceGroupName(exampleResourceGroup.name())
///             .recoveryVaultName(exampleVault.name())
///             .backup(PolicyVMBackupArgs.builder()
///                 .frequency("Daily")
///                 .time("23:00")
///                 .build())
///             .retentionDaily(PolicyVMRetentionDailyArgs.builder()
///                 .count(10)
///                 .build())
///             .build());
///
///         final var example = ComputeFunctions.getVirtualMachine(GetVirtualMachineArgs.builder()
///             .name("example-vm")
///             .resourceGroupName(exampleResourceGroup.name())
///             .build());
///
///         var vm1 = new ProtectedVM("vm1", ProtectedVMArgs.builder()
///             .resourceGroupName(exampleResourceGroup.name())
///             .recoveryVaultName(exampleVault.name())
///             .sourceVmId(example.applyValue(_example -> _example.id()))
///             .backupPolicyId(examplePolicyVM.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: tfex-recovery_vault
///       location: West Europe
///   exampleVault:
///     type: azure:recoveryservices:Vault
///     name: example
///     properties:
///       name: tfex-recovery-vault
///       location: ${exampleResourceGroup.location}
///       resourceGroupName: ${exampleResourceGroup.name}
///       sku: Standard
///   examplePolicyVM:
///     type: azure:backup:PolicyVM
///     name: example
///     properties:
///       name: tfex-recovery-vault-policy
///       resourceGroupName: ${exampleResourceGroup.name}
///       recoveryVaultName: ${exampleVault.name}
///       backup:
///         frequency: Daily
///         time: 23:00
///       retentionDaily:
///         count: 10
///   vm1:
///     type: azure:backup:ProtectedVM
///     properties:
///       resourceGroupName: ${exampleResourceGroup.name}
///       recoveryVaultName: ${exampleVault.name}
///       sourceVmId: ${example.id}
///       backupPolicyId: ${examplePolicyVM.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getVirtualMachine
///       arguments:
///         name: example-vm
///         resourceGroupName: ${exampleResourceGroup.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2025-08-01
///
/// ## Import
///
/// Backup Protected Virtual Machines can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:backup/protectedVM:ProtectedVM item1 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.RecoveryServices/vaults/example-recovery-vault/backupFabrics/Azure/protectionContainers/iaasvmcontainer;iaasvmcontainerv2;group1;vm1/protectedItems/vm;iaasvmcontainerv2;group1;vm1"
/// ```
class ProtectedVM extends pulumi.CustomResource {
  /// Specifies the ID of the backup policy to use.
  ///
  /// &gt; **Note:** `backupPolicyId` is required during initial creation of this resource.
  ///
  /// &gt; **Note:** When `protectionState` is set to `BackupsSuspended` or `ProtectionStopped`, the Azure API may not return `backupPolicyId`. To avoid a perpetual diff, use Terraform's ignoreChanges argument.
  late final pulumi.Output<String?> backupPolicyId;
  /// A list of Disks' Logical Unit Numbers (LUN) to be excluded for VM Protection.
  late final pulumi.Output<List<int>?> excludeDiskLuns;
  /// A list of Disks' Logical Unit Numbers (LUN) to be included for VM Protection.
  late final pulumi.Output<List<int>?> includeDiskLuns;
  /// Specifies Protection state of the backup. Possible values are `Protected`, `BackupsSuspended`, and `ProtectionStopped`.
  ///
  /// &gt; **Note:** `protectionState` cannot be set to `BackupsSuspended` unless the `azure.recoveryservices.Vault` has `immutability` set to `Unlocked` or `Locked`.
  late final pulumi.Output<String> protectionState;
  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;
  /// Specifies the name of the Resource Group **associated with** the Recovery Services Vault to use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the ID of the virtual machine to back up. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** After creation, the `sourceVmId` property can be removed without forcing a new resource to be created; however, setting it to a different ID will create a new resource. This allows the source virtual machine to be deleted without having to remove the backup.
  late final pulumi.Output<String> sourceVmId;

  /// Creates a new [ProtectedVM].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectedVM]. {@macro pulumi_backup_protected_vm_protected_vmargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectedVM(
    String name, {
    ProtectedVMArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:backup/protectedVM:ProtectedVM',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    backupPolicyId = registerOutput<String?>('backupPolicyId');
    excludeDiskLuns = registerOutput<List<int>?>('excludeDiskLuns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); });
    includeDiskLuns = registerOutput<List<int>?>('includeDiskLuns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); });
    protectionState = registerOutput<String>('protectionState');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceVmId = registerOutput<String>('sourceVmId');
  }

  /// Gets an existing [ProtectedVM] resource's state with the given [name] and [id].
  static ProtectedVM get(
    String name,
    pulumi.Input<String> id, {
    ProtectedVMState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProtectedVM._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProtectedVM._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:backup/protectedVM:ProtectedVM',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backupPolicyId = registerOutput<String?>('backupPolicyId');
    excludeDiskLuns = registerOutput<List<int>?>('excludeDiskLuns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); });
    includeDiskLuns = registerOutput<List<int>?>('includeDiskLuns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); });
    protectionState = registerOutput<String>('protectionState');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceVmId = registerOutput<String>('sourceVmId');
  }

  /// Creates a typed reference to an existing [ProtectedVM] resource.
  ProtectedVM.reference(String urn)
    : super(
        'azure:backup/protectedVM:ProtectedVM',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    backupPolicyId = registerOutput<String?>('backupPolicyId');
    excludeDiskLuns = registerOutput<List<int>?>('excludeDiskLuns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); });
    includeDiskLuns = registerOutput<List<int>?>('includeDiskLuns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); });
    protectionState = registerOutput<String>('protectionState');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceVmId = registerOutput<String>('sourceVmId');
  }
}
