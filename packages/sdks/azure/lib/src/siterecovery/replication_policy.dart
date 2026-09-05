import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_policy_args.dart';
import 'replication_policy_state.dart';

/// Manages a Azure Site Recovery replication policy within a recovery vault. Replication policies define the frequency at which recovery points are created and how long they are stored.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-network-mapping-secondary",
///     location: "East US",
/// });
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "example-recovery-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const policy = new azure.siterecovery.ReplicationPolicy("policy", {
///     name: "policy",
///     resourceGroupName: example.name,
///     recoveryVaultName: vault.name,
///     recoveryPointRetentionInMinutes: 24 * 60,
///     applicationConsistentSnapshotFrequencyInMinutes: 4 * 60,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-network-mapping-secondary",
///     location="East US")
/// vault = azure.recoveryservices.Vault("vault",
///     name="example-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// policy = azure.siterecovery.ReplicationPolicy("policy",
///     name="policy",
///     resource_group_name=example.name,
///     recovery_vault_name=vault.name,
///     recovery_point_retention_in_minutes=int(24 * 60),
///     application_consistent_snapshot_frequency_in_minutes=int(4 * 60))
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
///         Name = "tfex-network-mapping-secondary",
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
///     var policy = new Azure.SiteRecovery.ReplicationPolicy("policy", new()
///     {
///         Name = "policy",
///         ResourceGroupName = example.Name,
///         RecoveryVaultName = vault.Name,
///         RecoveryPointRetentionInMinutes = 24 * 60,
///         ApplicationConsistentSnapshotFrequencyInMinutes = 4 * 60,
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
/// 			Name:     pulumi.String("tfex-network-mapping-secondary"),
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
/// 		_, err = siterecovery.NewReplicationPolicy(ctx, "policy", &siterecovery.ReplicationPolicyArgs{
/// 			Name:                            pulumi.String("policy"),
/// 			ResourceGroupName:               example.Name,
/// 			RecoveryVaultName:               vault.Name,
/// 			RecoveryPointRetentionInMinutes: int(24 * 60),
/// 			ApplicationConsistentSnapshotFrequencyInMinutes: int(4 * 60),
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
///   name     = "tfex-network-mapping-secondary"
///   location = "East US"
/// }
/// resource "azure_recoveryservices_vault" "vault" {
///   name                = "example-recovery-vault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
/// }
/// resource "azure_siterecovery_replicationpolicy" "policy" {
///   name                                                 = "policy"
///   resource_group_name                                  = azure_core_resourcegroup.example.name
///   recovery_vault_name                                  = azure_recoveryservices_vault.vault.name
///   recovery_point_retention_in_minutes                  = 24 * 60
///   application_consistent_snapshot_frequency_in_minutes = 4 * 60
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
/// import com.pulumi.azure.siterecovery.ReplicationPolicy;
/// import com.pulumi.azure.siterecovery.ReplicationPolicyArgs;
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
///             .name("tfex-network-mapping-secondary")
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
///         var policy = new ReplicationPolicy("policy", ReplicationPolicyArgs.builder()
///             .name("policy")
///             .resourceGroupName(example.name())
///             .recoveryVaultName(vault.name())
///             .recoveryPointRetentionInMinutes(24 * 60)
///             .applicationConsistentSnapshotFrequencyInMinutes(4 * 60)
///             .build());
///
///     }
/// }
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
/// $ pulumi import azure:siterecovery/replicationPolicy:ReplicationPolicy mypolicy /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/replicationPolicies/policy-name
/// ```
class ReplicationPolicy extends pulumi.CustomResource {
  /// Specifies the frequency(in minutes) at which to create application consistent recovery points.
  ///
  /// &gt; **Note:** The value of `applicationConsistentSnapshotFrequencyInMinutes` must be less than or equal to the value of `recoveryPointRetentionInMinutes`.
  late final pulumi.Output<int> applicationConsistentSnapshotFrequencyInMinutes;
  /// The name of the replication policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The duration in minutes for which the recovery points need to be stored.
  late final pulumi.Output<int> recoveryPointRetentionInMinutes;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ReplicationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationPolicy]. {@macro pulumi_siterecovery_replication_policy_replication_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationPolicy(
    String name, {
    ReplicationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/replicationPolicy:ReplicationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    applicationConsistentSnapshotFrequencyInMinutes = registerOutput<int>('applicationConsistentSnapshotFrequencyInMinutes');
    this.name = registerOutput<String>('name');
    recoveryPointRetentionInMinutes = registerOutput<int>('recoveryPointRetentionInMinutes');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ReplicationPolicy] resource's state with the given [name] and [id].
  static ReplicationPolicy get(
    String name,
    pulumi.Input<String> id, {
    ReplicationPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ReplicationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ReplicationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/replicationPolicy:ReplicationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationConsistentSnapshotFrequencyInMinutes = registerOutput<int>('applicationConsistentSnapshotFrequencyInMinutes');
    this.name = registerOutput<String>('name');
    recoveryPointRetentionInMinutes = registerOutput<int>('recoveryPointRetentionInMinutes');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Creates a typed reference to an existing [ReplicationPolicy] resource.
  ReplicationPolicy.reference(String urn)
    : super(
        'azure:siterecovery/replicationPolicy:ReplicationPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationConsistentSnapshotFrequencyInMinutes = registerOutput<int>('applicationConsistentSnapshotFrequencyInMinutes');
    this.name = registerOutput<String>('name');
    recoveryPointRetentionInMinutes = registerOutput<int>('recoveryPointRetentionInMinutes');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
