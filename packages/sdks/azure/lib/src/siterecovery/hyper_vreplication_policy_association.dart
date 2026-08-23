import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vreplication_policy_association_args.dart';
import 'hyper_vreplication_policy_association_state.dart';

/// Manages an Azure Site Recovery replication policy for HyperV within a Recovery Vault.
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
/// const exampleHyperVSite = new azure.siterecovery.HyperVSite("example", {
///     recoveryVaultId: exampleVault.id,
///     name: "example-site",
/// });
/// const exampleHyperVReplicationPolicy = new azure.siterecovery.HyperVReplicationPolicy("example", {
///     name: "policy",
///     recoveryVaultId: exampleVault.id,
///     recoveryPointRetentionInHours: 2,
///     applicationConsistentSnapshotFrequencyInHours: 1,
///     replicationIntervalInSeconds: 300,
/// });
/// const exampleHyperVReplicationPolicyAssociation = new azure.siterecovery.HyperVReplicationPolicyAssociation("example", {
///     name: "example-association",
///     hypervSiteId: exampleHyperVSite.id,
///     policyId: exampleHyperVReplicationPolicy.id,
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
/// example_hyper_v_site = azure.siterecovery.HyperVSite("example",
///     recovery_vault_id=example_vault.id,
///     name="example-site")
/// example_hyper_v_replication_policy = azure.siterecovery.HyperVReplicationPolicy("example",
///     name="policy",
///     recovery_vault_id=example_vault.id,
///     recovery_point_retention_in_hours=2,
///     application_consistent_snapshot_frequency_in_hours=1,
///     replication_interval_in_seconds=300)
/// example_hyper_v_replication_policy_association = azure.siterecovery.HyperVReplicationPolicyAssociation("example",
///     name="example-association",
///     hyperv_site_id=example_hyper_v_site.id,
///     policy_id=example_hyper_v_replication_policy.id)
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
///     var exampleHyperVSite = new Azure.SiteRecovery.HyperVSite("example", new()
///     {
///         RecoveryVaultId = exampleVault.Id,
///         Name = "example-site",
///     });
///
///     var exampleHyperVReplicationPolicy = new Azure.SiteRecovery.HyperVReplicationPolicy("example", new()
///     {
///         Name = "policy",
///         RecoveryVaultId = exampleVault.Id,
///         RecoveryPointRetentionInHours = 2,
///         ApplicationConsistentSnapshotFrequencyInHours = 1,
///         ReplicationIntervalInSeconds = 300,
///     });
///
///     var exampleHyperVReplicationPolicyAssociation = new Azure.SiteRecovery.HyperVReplicationPolicyAssociation("example", new()
///     {
///         Name = "example-association",
///         HypervSiteId = exampleHyperVSite.Id,
///         PolicyId = exampleHyperVReplicationPolicy.Id,
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
/// 		exampleHyperVSite, err := siterecovery.NewHyperVSite(ctx, "example", &siterecovery.HyperVSiteArgs{
/// 			RecoveryVaultId: exampleVault.ID(),
/// 			Name:            pulumi.String("example-site"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHyperVReplicationPolicy, err := siterecovery.NewHyperVReplicationPolicy(ctx, "example", &siterecovery.HyperVReplicationPolicyArgs{
/// 			Name:                          pulumi.String("policy"),
/// 			RecoveryVaultId:               exampleVault.ID(),
/// 			RecoveryPointRetentionInHours: pulumi.Int(2),
/// 			ApplicationConsistentSnapshotFrequencyInHours: pulumi.Int(1),
/// 			ReplicationIntervalInSeconds:                  pulumi.Int(300),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewHyperVReplicationPolicyAssociation(ctx, "example", &siterecovery.HyperVReplicationPolicyAssociationArgs{
/// 			Name:         pulumi.String("example-association"),
/// 			HypervSiteId: exampleHyperVSite.ID(),
/// 			PolicyId:     exampleHyperVReplicationPolicy.ID(),
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
/// resource "azure_siterecovery_hypervsite" "example" {
///   recovery_vault_id = azure_recoveryservices_vault.example.id
///   name              = "example-site"
/// }
/// resource "azure_siterecovery_hypervreplicationpolicy" "example" {
///   name                                               = "policy"
///   recovery_vault_id                                  = azure_recoveryservices_vault.example.id
///   recovery_point_retention_in_hours                  = 2
///   application_consistent_snapshot_frequency_in_hours = 1
///   replication_interval_in_seconds                    = 300
/// }
/// resource "azure_siterecovery_hypervreplicationpolicyassociation" "example" {
///   name           = "example-association"
///   hyperv_site_id = azure_siterecovery_hypervsite.example.id
///   policy_id      = azure_siterecovery_hypervreplicationpolicy.example.id
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
/// import com.pulumi.azure.siterecovery.HyperVSite;
/// import com.pulumi.azure.siterecovery.HyperVSiteArgs;
/// import com.pulumi.azure.siterecovery.HyperVReplicationPolicy;
/// import com.pulumi.azure.siterecovery.HyperVReplicationPolicyArgs;
/// import com.pulumi.azure.siterecovery.HyperVReplicationPolicyAssociation;
/// import com.pulumi.azure.siterecovery.HyperVReplicationPolicyAssociationArgs;
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
///         var exampleHyperVSite = new HyperVSite("exampleHyperVSite", HyperVSiteArgs.builder()
///             .recoveryVaultId(exampleVault.id())
///             .name("example-site")
///             .build());
///
///         var exampleHyperVReplicationPolicy = new HyperVReplicationPolicy("exampleHyperVReplicationPolicy", HyperVReplicationPolicyArgs.builder()
///             .name("policy")
///             .recoveryVaultId(exampleVault.id())
///             .recoveryPointRetentionInHours(2)
///             .applicationConsistentSnapshotFrequencyInHours(1)
///             .replicationIntervalInSeconds(300)
///             .build());
///
///         var exampleHyperVReplicationPolicyAssociation = new HyperVReplicationPolicyAssociation("exampleHyperVReplicationPolicyAssociation", HyperVReplicationPolicyAssociationArgs.builder()
///             .name("example-association")
///             .hypervSiteId(exampleHyperVSite.id())
///             .policyId(exampleHyperVReplicationPolicy.id())
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
///   exampleHyperVSite:
///     type: azure:siterecovery:HyperVSite
///     name: example
///     properties:
///       recoveryVaultId: ${exampleVault.id}
///       name: example-site
///   exampleHyperVReplicationPolicy:
///     type: azure:siterecovery:HyperVReplicationPolicy
///     name: example
///     properties:
///       name: policy
///       recoveryVaultId: ${exampleVault.id}
///       recoveryPointRetentionInHours: 2
///       applicationConsistentSnapshotFrequencyInHours: 1
///       replicationIntervalInSeconds: 300
///   exampleHyperVReplicationPolicyAssociation:
///     type: azure:siterecovery:HyperVReplicationPolicyAssociation
///     name: example
///     properties:
///       name: example-association
///       hypervSiteId: ${exampleHyperVSite.id}
///       policyId: ${exampleHyperVReplicationPolicy.id}
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
/// $ pulumi import azure:siterecovery/hyperVReplicationPolicyAssociation:HyperVReplicationPolicyAssociation mypolicy /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/replicationFabrics/site-name/replicationProtectionContainers/container-name/replicationProtectionContainerMappings/mapping-name
/// ```
class HyperVReplicationPolicyAssociation extends pulumi.CustomResource {
  /// The ID of the HyperV site to which the policy should be associated. Changing this forces a new association to be created.
  late final pulumi.Output<String> hypervSiteId;
  /// The name of the replication policy association. Changing this forces a new association to be created.
  late final pulumi.Output<String> name;
  /// The ID of the HyperV replication policy which to be associated. Changing this forces a new association to be created.
  late final pulumi.Output<String> policyId;

  /// Creates a new [HyperVReplicationPolicyAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HyperVReplicationPolicyAssociation]. {@macro pulumi_siterecovery_hyper_vreplication_policy_association_hyper_vreplication_policy_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HyperVReplicationPolicyAssociation(
    String name, {
    HyperVReplicationPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/hyperVReplicationPolicyAssociation:HyperVReplicationPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hypervSiteId = registerOutput<String>('hypervSiteId');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
  }

  /// Gets an existing [HyperVReplicationPolicyAssociation] resource's state with the given [name] and [id].
  static HyperVReplicationPolicyAssociation get(
    String name,
    pulumi.Input<String> id, {
    HyperVReplicationPolicyAssociationState? state,
  }) {
    return HyperVReplicationPolicyAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HyperVReplicationPolicyAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/hyperVReplicationPolicyAssociation:HyperVReplicationPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hypervSiteId = registerOutput<String>('hypervSiteId');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
  }
}
