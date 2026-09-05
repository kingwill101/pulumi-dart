import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_replication_policy_association_args.dart';
import 'vmware_replication_policy_association_state.dart';

/// Manages an Azure Site Recovery replication policy for VMWare within a Recovery Vault.
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
///     location: "East US",
/// });
/// const exampleVault = new azure.recoveryservices.Vault("example", {
///     name: "example-recovery-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const exampleVMWareReplicationPolicy = new azure.siterecovery.VMWareReplicationPolicy("example", {
///     name: "example-policy",
///     recoveryVaultId: exampleVault.id,
///     recoveryPointRetentionInMinutes: 1440,
///     applicationConsistentSnapshotFrequencyInMinutes: 240,
/// });
/// const exampleVmwareReplicationPolicyAssociation = new azure.siterecovery.VmwareReplicationPolicyAssociation("example", {
///     name: "example-association",
///     recoveryVaultId: exampleVault.id,
///     policyId: exampleVMWareReplicationPolicy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="East US")
/// example_vault = azure.recoveryservices.Vault("example",
///     name="example-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// example_vm_ware_replication_policy = azure.siterecovery.VMWareReplicationPolicy("example",
///     name="example-policy",
///     recovery_vault_id=example_vault.id,
///     recovery_point_retention_in_minutes=1440,
///     application_consistent_snapshot_frequency_in_minutes=240)
/// example_vmware_replication_policy_association = azure.siterecovery.VmwareReplicationPolicyAssociation("example",
///     name="example-association",
///     recovery_vault_id=example_vault.id,
///     policy_id=example_vm_ware_replication_policy.id)
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
///         Location = "East US",
///     });
///
///     var exampleVault = new Azure.RecoveryServices.Vault("example", new()
///     {
///         Name = "example-recovery-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
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
///     var exampleVmwareReplicationPolicyAssociation = new Azure.SiteRecovery.VmwareReplicationPolicyAssociation("example", new()
///     {
///         Name = "example-association",
///         RecoveryVaultId = exampleVault.Id,
///         PolicyId = exampleVMWareReplicationPolicy.Id,
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
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := recoveryservices.NewVault(ctx, "example", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVMWareReplicationPolicy, err := siterecovery.NewVMWareReplicationPolicy(ctx, "example", &siterecovery.VMWareReplicationPolicyArgs{
/// 			Name:                            pulumi.String("example-policy"),
/// 			RecoveryVaultId:                 exampleVault.ID().ToIDOutput().ToStringOutput(),
/// 			RecoveryPointRetentionInMinutes: pulumi.Int(1440),
/// 			ApplicationConsistentSnapshotFrequencyInMinutes: pulumi.Int(240),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewVmwareReplicationPolicyAssociation(ctx, "example", &siterecovery.VmwareReplicationPolicyAssociationArgs{
/// 			Name:            pulumi.String("example-association"),
/// 			RecoveryVaultId: exampleVault.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyId:        exampleVMWareReplicationPolicy.ID().ToIDOutput().ToStringOutput(),
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
///   location = "East US"
/// }
/// resource "azure_recoveryservices_vault" "example" {
///   name                = "example-recovery-vault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
/// }
/// resource "azure_siterecovery_vmwarereplicationpolicy" "example" {
///   name                                                 = "example-policy"
///   recovery_vault_id                                    = azure_recoveryservices_vault.example.id
///   recovery_point_retention_in_minutes                  = 1440
///   application_consistent_snapshot_frequency_in_minutes = 240
/// }
/// resource "azure_siterecovery_vmwarereplicationpolicyassociation" "example" {
///   name              = "example-association"
///   recovery_vault_id = azure_recoveryservices_vault.example.id
///   policy_id         = azure_siterecovery_vmwarereplicationpolicy.example.id
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
/// import com.pulumi.azure.siterecovery.VmwareReplicationPolicyAssociation;
/// import com.pulumi.azure.siterecovery.VmwareReplicationPolicyAssociationArgs;
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
///             .location("East US")
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var exampleVMWareReplicationPolicy = new VMWareReplicationPolicy("exampleVMWareReplicationPolicy", VMWareReplicationPolicyArgs.builder()
///             .name("example-policy")
///             .recoveryVaultId(exampleVault.id())
///             .recoveryPointRetentionInMinutes(1440)
///             .applicationConsistentSnapshotFrequencyInMinutes(240)
///             .build());
///
///         var exampleVmwareReplicationPolicyAssociation = new VmwareReplicationPolicyAssociation("exampleVmwareReplicationPolicyAssociation", VmwareReplicationPolicyAssociationArgs.builder()
///             .name("example-association")
///             .recoveryVaultId(exampleVault.id())
///             .policyId(exampleVMWareReplicationPolicy.id())
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
///       location: East US
///   exampleVault:
///     type: azure:recoveryservices:Vault
///     name: example
///     properties:
///       name: example-recovery-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   exampleVMWareReplicationPolicy:
///     type: azure:siterecovery:VMWareReplicationPolicy
///     name: example
///     properties:
///       name: example-policy
///       recoveryVaultId: ${exampleVault.id}
///       recoveryPointRetentionInMinutes: 1440
///       applicationConsistentSnapshotFrequencyInMinutes: 240
///   exampleVmwareReplicationPolicyAssociation:
///     type: azure:siterecovery:VmwareReplicationPolicyAssociation
///     name: example
///     properties:
///       name: example-association
///       recoveryVaultId: ${exampleVault.id}
///       policyId: ${exampleVMWareReplicationPolicy.id}
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
/// Site Recovery Replication Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:siterecovery/vmwareReplicationPolicyAssociation:VmwareReplicationPolicyAssociation mypolicy /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/replicationFabrics/site-name/replicationProtectionContainers/container-name/replicationProtectionContainerMappings/mapping-name
/// ```
class VmwareReplicationPolicyAssociation extends pulumi.CustomResource {
  /// The name of the replication policy association. Changing this forces a new association to be created.
  late final pulumi.Output<String> name;
  /// The ID of the VMWare replication policy which to be associated. Changing this forces a new association to be created.
  late final pulumi.Output<String> policyId;
  /// The ID of the Recovery Service Vault to which the policy should be associated.
  /// Changing this forces a new association to be created.
  late final pulumi.Output<String> recoveryVaultId;

  /// Creates a new [VmwareReplicationPolicyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VmwareReplicationPolicyAssociation]. {@macro pulumi_siterecovery_vmware_replication_policy_association_vmware_replication_policy_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VmwareReplicationPolicyAssociation(
    String name, {
    VmwareReplicationPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/vmwareReplicationPolicyAssociation:VmwareReplicationPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
  }

  /// Gets an existing [VmwareReplicationPolicyAssociation] resource's state with the given [name] and [id].
  static VmwareReplicationPolicyAssociation get(
    String name,
    pulumi.Input<String> id, {
    VmwareReplicationPolicyAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VmwareReplicationPolicyAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VmwareReplicationPolicyAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/vmwareReplicationPolicyAssociation:VmwareReplicationPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
  }

  /// Creates a typed reference to an existing [VmwareReplicationPolicyAssociation] resource.
  VmwareReplicationPolicyAssociation.reference(String urn)
    : super(
        'azure:siterecovery/vmwareReplicationPolicyAssociation:VmwareReplicationPolicyAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
  }
}
