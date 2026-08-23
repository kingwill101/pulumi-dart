import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vreplication_policy_args.dart';
import 'hyper_vreplication_policy_state.dart';

/// Manages a Azure Site Recovery replication policy for HyperV within a Recovery Vault. Replication policies define the frequency at which recovery points are created and how long they are stored.
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
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "example-recovery-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const policy = new azure.siterecovery.HyperVReplicationPolicy("policy", {
///     name: "policy",
///     recoveryVaultId: vault.id,
///     recoveryPointRetentionInHours: 2,
///     applicationConsistentSnapshotFrequencyInHours: 1,
///     replicationIntervalInSeconds: 300,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="East US")
/// vault = azure.recoveryservices.Vault("vault",
///     name="example-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// policy = azure.siterecovery.HyperVReplicationPolicy("policy",
///     name="policy",
///     recovery_vault_id=vault.id,
///     recovery_point_retention_in_hours=2,
///     application_consistent_snapshot_frequency_in_hours=1,
///     replication_interval_in_seconds=300)
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
///     var vault = new Azure.RecoveryServices.Vault("vault", new()
///     {
///         Name = "example-recovery-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var policy = new Azure.SiteRecovery.HyperVReplicationPolicy("policy", new()
///     {
///         Name = "policy",
///         RecoveryVaultId = vault.Id,
///         RecoveryPointRetentionInHours = 2,
///         ApplicationConsistentSnapshotFrequencyInHours = 1,
///         ReplicationIntervalInSeconds = 300,
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
/// 		vault, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewHyperVReplicationPolicy(ctx, "policy", &siterecovery.HyperVReplicationPolicyArgs{
/// 			Name:                          pulumi.String("policy"),
/// 			RecoveryVaultId:               vault.ID(),
/// 			RecoveryPointRetentionInHours: pulumi.Int(2),
/// 			ApplicationConsistentSnapshotFrequencyInHours: pulumi.Int(1),
/// 			ReplicationIntervalInSeconds:                  pulumi.Int(300),
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
/// resource "azure_recoveryservices_vault" "vault" {
///   name                = "example-recovery-vault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
/// }
/// resource "azure_siterecovery_hypervreplicationpolicy" "policy" {
///   name                                               = "policy"
///   recovery_vault_id                                  = azure_recoveryservices_vault.vault.id
///   recovery_point_retention_in_hours                  = 2
///   application_consistent_snapshot_frequency_in_hours = 1
///   replication_interval_in_seconds                    = 300
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
/// import com.pulumi.azure.siterecovery.HyperVReplicationPolicy;
/// import com.pulumi.azure.siterecovery.HyperVReplicationPolicyArgs;
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
///         var vault = new Vault("vault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var policy = new HyperVReplicationPolicy("policy", HyperVReplicationPolicyArgs.builder()
///             .name("policy")
///             .recoveryVaultId(vault.id())
///             .recoveryPointRetentionInHours(2)
///             .applicationConsistentSnapshotFrequencyInHours(1)
///             .replicationIntervalInSeconds(300)
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
///   vault:
///     type: azure:recoveryservices:Vault
///     properties:
///       name: example-recovery-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   policy:
///     type: azure:siterecovery:HyperVReplicationPolicy
///     properties:
///       name: policy
///       recoveryVaultId: ${vault.id}
///       recoveryPointRetentionInHours: 2
///       applicationConsistentSnapshotFrequencyInHours: 1
///       replicationIntervalInSeconds: 300
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
/// $ pulumi import azure:siterecovery/hyperVReplicationPolicy:HyperVReplicationPolicy mypolicy /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/replicationPolicies/policy-name
/// ```
class HyperVReplicationPolicy extends pulumi.CustomResource {
  /// Specifies the frequency at which to create application consistent recovery points.
  late final pulumi.Output<int> applicationConsistentSnapshotFrequencyInHours;
  /// The name of the replication policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The duration in hours for which the recovery points need to be stored.
  late final pulumi.Output<int> recoveryPointRetentionInHours;
  /// The id of the vault that should be updated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultId;
  /// Specifies how frequently data should be synchronized between source and target locations. Possible values are `30` and `300`.
  late final pulumi.Output<int> replicationIntervalInSeconds;

  /// Creates a new [HyperVReplicationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HyperVReplicationPolicy]. {@macro pulumi_siterecovery_hyper_vreplication_policy_hyper_vreplication_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HyperVReplicationPolicy(
    String name, {
    HyperVReplicationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/hyperVReplicationPolicy:HyperVReplicationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationConsistentSnapshotFrequencyInHours = registerOutput<int>('applicationConsistentSnapshotFrequencyInHours');
    this.name = registerOutput<String>('name');
    recoveryPointRetentionInHours = registerOutput<int>('recoveryPointRetentionInHours');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
    replicationIntervalInSeconds = registerOutput<int>('replicationIntervalInSeconds');
  }

  /// Gets an existing [HyperVReplicationPolicy] resource's state with the given [name] and [id].
  static HyperVReplicationPolicy get(
    String name,
    pulumi.Input<String> id, {
    HyperVReplicationPolicyState? state,
  }) {
    return HyperVReplicationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HyperVReplicationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/hyperVReplicationPolicy:HyperVReplicationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationConsistentSnapshotFrequencyInHours = registerOutput<int>('applicationConsistentSnapshotFrequencyInHours');
    this.name = registerOutput<String>('name');
    recoveryPointRetentionInHours = registerOutput<int>('recoveryPointRetentionInHours');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
    replicationIntervalInSeconds = registerOutput<int>('replicationIntervalInSeconds');
  }
}
