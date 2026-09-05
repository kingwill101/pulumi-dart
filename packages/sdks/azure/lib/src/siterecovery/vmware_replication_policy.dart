import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_replication_policy_args.dart';
import 'vmware_replication_policy_state.dart';

/// Manages a VMWare Replication Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "eastus",
/// });
/// const exampleVault = new azure.recoveryservices.Vault("example", {
///     name: "example-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     classicVmwareReplicationEnabled: true,
///     softDeleteEnabled: false,
/// });
/// const exampleVMWareReplicationPolicy = new azure.siterecovery.VMWareReplicationPolicy("example", {
///     name: "example-policy",
///     recoveryVaultId: exampleVault.id,
///     recoveryPointRetentionInMinutes: 1440,
///     applicationConsistentSnapshotFrequencyInMinutes: 240,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="eastus")
/// example_vault = azure.recoveryservices.Vault("example",
///     name="example-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     classic_vmware_replication_enabled=True,
///     soft_delete_enabled=False)
/// example_vm_ware_replication_policy = azure.siterecovery.VMWareReplicationPolicy("example",
///     name="example-policy",
///     recovery_vault_id=example_vault.id,
///     recovery_point_retention_in_minutes=1440,
///     application_consistent_snapshot_frequency_in_minutes=240)
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
///         Name = "example-rg",
///         Location = "eastus",
///     });
///
///     var exampleVault = new Azure.RecoveryServices.Vault("example", new()
///     {
///         Name = "example-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         ClassicVmwareReplicationEnabled = true,
///         SoftDeleteEnabled = false,
///     });
///
///     var exampleVMWareReplicationPolicy = new Azure.SiteRecovery.VMWareReplicationPolicy("example", new()
///     {
///         Name = "example-policy",
///         RecoveryVaultId = exampleVault.Id,
///         RecoveryPointRetentionInMinutes = 1440,
///         ApplicationConsistentSnapshotFrequencyInMinutes = 240,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/siterecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("eastus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := recoveryservices.NewVault(ctx, "example", &recoveryservices.VaultArgs{
/// 			Name:                            pulumi.String("example-vault"),
/// 			Location:                        example.Location,
/// 			ResourceGroupName:               example.Name,
/// 			Sku:                             pulumi.String("Standard"),
/// 			ClassicVmwareReplicationEnabled: pulumi.Bool(true),
/// 			SoftDeleteEnabled:               pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewVMWareReplicationPolicy(ctx, "example", &siterecovery.VMWareReplicationPolicyArgs{
/// 			Name:                            pulumi.String("example-policy"),
/// 			RecoveryVaultId:                 exampleVault.ID().ToIDOutput().ToStringOutput(),
/// 			RecoveryPointRetentionInMinutes: pulumi.Int(1440),
/// 			ApplicationConsistentSnapshotFrequencyInMinutes: pulumi.Int(240),
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
///   name     = "example-rg"
///   location = "eastus"
/// }
/// resource "azure_recoveryservices_vault" "example" {
///   name                               = "example-vault"
///   location                           = azure_core_resourcegroup.example.location
///   resource_group_name                = azure_core_resourcegroup.example.name
///   sku                                = "Standard"
///   classic_vmware_replication_enabled = true
///   soft_delete_enabled                = false
/// }
/// resource "azure_siterecovery_vmwarereplicationpolicy" "example" {
///   name                                                 = "example-policy"
///   recovery_vault_id                                    = azure_recoveryservices_vault.example.id
///   recovery_point_retention_in_minutes                  = 1440
///   application_consistent_snapshot_frequency_in_minutes = 240
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
/// import com.pulumi.azure.siterecovery.VMWareReplicationPolicy;
/// import com.pulumi.azure.siterecovery.VMWareReplicationPolicyArgs;
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
///             .name("example-rg")
///             .location("eastus")
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .name("example-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .classicVmwareReplicationEnabled(true)
///             .softDeleteEnabled(false)
///             .build());
///
///         var exampleVMWareReplicationPolicy = new VMWareReplicationPolicy("exampleVMWareReplicationPolicy", VMWareReplicationPolicyArgs.builder()
///             .name("example-policy")
///             .recoveryVaultId(exampleVault.id())
///             .recoveryPointRetentionInMinutes(1440)
///             .applicationConsistentSnapshotFrequencyInMinutes(240)
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
///       name: example-rg
///       location: eastus
///   exampleVault:
///     type: azure:recoveryservices:Vault
///     name: example
///     properties:
///       name: example-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       classicVmwareReplicationEnabled: true
///       softDeleteEnabled: false
///   exampleVMWareReplicationPolicy:
///     type: azure:siterecovery:VMWareReplicationPolicy
///     name: example
///     properties:
///       name: example-policy
///       recoveryVaultId: ${exampleVault.id}
///       recoveryPointRetentionInMinutes: 1440
///       applicationConsistentSnapshotFrequencyInMinutes: 240
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.RecoveryServices` - 2024-04-01
///
/// ## Import
///
/// VMWare Replication Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:siterecovery/vMWareReplicationPolicy:VMWareReplicationPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/vault1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/policy1
/// ```
class VMWareReplicationPolicy extends pulumi.CustomResource {
  /// Specifies the frequency at which to create application consistent recovery points. Must between `0` to `720`.
  late final pulumi.Output<int> applicationConsistentSnapshotFrequencyInMinutes;
  /// The name which should be used for this Classic Replication Policy. Changing this forces a new Replication Policy to be created.
  late final pulumi.Output<String> name;
  /// Specifies the period up to which the recovery points will be retained. Must between `0` to `21600`.
  late final pulumi.Output<int> recoveryPointRetentionInMinutes;
  /// ID of the Recovery Services Vault. Changing this forces a new Replication Policy to be created.
  late final pulumi.Output<String> recoveryVaultId;

  /// Creates a new [VMWareReplicationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VMWareReplicationPolicy]. {@macro pulumi_siterecovery_v_mware_replication_policy_vmware_replication_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VMWareReplicationPolicy(
    String name, {
    VMWareReplicationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/vMWareReplicationPolicy:VMWareReplicationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    applicationConsistentSnapshotFrequencyInMinutes = registerOutput<int>('applicationConsistentSnapshotFrequencyInMinutes');
    this.name = registerOutput<String>('name');
    recoveryPointRetentionInMinutes = registerOutput<int>('recoveryPointRetentionInMinutes');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
  }

  /// Gets an existing [VMWareReplicationPolicy] resource's state with the given [name] and [id].
  static VMWareReplicationPolicy get(
    String name,
    pulumi.Input<String> id, {
    VMWareReplicationPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VMWareReplicationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VMWareReplicationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/vMWareReplicationPolicy:VMWareReplicationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationConsistentSnapshotFrequencyInMinutes = registerOutput<int>('applicationConsistentSnapshotFrequencyInMinutes');
    this.name = registerOutput<String>('name');
    recoveryPointRetentionInMinutes = registerOutput<int>('recoveryPointRetentionInMinutes');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
  }

  /// Creates a typed reference to an existing [VMWareReplicationPolicy] resource.
  VMWareReplicationPolicy.reference(String urn)
    : super(
        'azure:siterecovery/vMWareReplicationPolicy:VMWareReplicationPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationConsistentSnapshotFrequencyInMinutes = registerOutput<int>('applicationConsistentSnapshotFrequencyInMinutes');
    this.name = registerOutput<String>('name');
    recoveryPointRetentionInMinutes = registerOutput<int>('recoveryPointRetentionInMinutes');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
  }
}
