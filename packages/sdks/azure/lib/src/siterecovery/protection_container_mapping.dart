import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_container_mapping_args.dart';
import 'protection_container_mapping_automatic_update.dart';
import 'protection_container_mapping_state.dart';

/// Manages a Azure recovery vault protection container mapping. A protection container mapping decides how to translate the protection container when a VM is migrated from one region to another.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const primary = new azure.core.ResourceGroup("primary", {
///     name: "tfex-network-mapping-primary",
///     location: "West US",
/// });
/// const secondary = new azure.core.ResourceGroup("secondary", {
///     name: "tfex-network-mapping-secondary",
///     location: "East US",
/// });
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "example-recovery-vault",
///     location: secondary.location,
///     resourceGroupName: secondary.name,
///     sku: "Standard",
/// });
/// const primaryFabric = new azure.siterecovery.Fabric("primary", {
///     name: "primary-fabric",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     location: primary.location,
/// });
/// const secondaryFabric = new azure.siterecovery.Fabric("secondary", {
///     name: "secondary-fabric",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     location: secondary.location,
/// });
/// const primaryProtectionContainer = new azure.siterecovery.ProtectionContainer("primary", {
///     name: "primary-protection-container",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     recoveryFabricName: primaryFabric.name,
/// });
/// const secondaryProtectionContainer = new azure.siterecovery.ProtectionContainer("secondary", {
///     name: "secondary-protection-container",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     recoveryFabricName: secondaryFabric.name,
/// });
/// const policy = new azure.siterecovery.ReplicationPolicy("policy", {
///     name: "policy",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     recoveryPointRetentionInMinutes: 24 * 60,
///     applicationConsistentSnapshotFrequencyInMinutes: 4 * 60,
/// });
/// const container_mapping = new azure.siterecovery.ProtectionContainerMapping("container-mapping", {
///     name: "container-mapping",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     recoveryFabricName: primaryFabric.name,
///     recoverySourceProtectionContainerName: primaryProtectionContainer.name,
///     recoveryTargetProtectionContainerId: secondaryProtectionContainer.id,
///     recoveryReplicationPolicyId: policy.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// primary = azure.core.ResourceGroup("primary",
///     name="tfex-network-mapping-primary",
///     location="West US")
/// secondary = azure.core.ResourceGroup("secondary",
///     name="tfex-network-mapping-secondary",
///     location="East US")
/// vault = azure.recoveryservices.Vault("vault",
///     name="example-recovery-vault",
///     location=secondary.location,
///     resource_group_name=secondary.name,
///     sku="Standard")
/// primary_fabric = azure.siterecovery.Fabric("primary",
///     name="primary-fabric",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     location=primary.location)
/// secondary_fabric = azure.siterecovery.Fabric("secondary",
///     name="secondary-fabric",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     location=secondary.location)
/// primary_protection_container = azure.siterecovery.ProtectionContainer("primary",
///     name="primary-protection-container",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     recovery_fabric_name=primary_fabric.name)
/// secondary_protection_container = azure.siterecovery.ProtectionContainer("secondary",
///     name="secondary-protection-container",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     recovery_fabric_name=secondary_fabric.name)
/// policy = azure.siterecovery.ReplicationPolicy("policy",
///     name="policy",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     recovery_point_retention_in_minutes=24 * 60,
///     application_consistent_snapshot_frequency_in_minutes=4 * 60)
/// container_mapping = azure.siterecovery.ProtectionContainerMapping("container-mapping",
///     name="container-mapping",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     recovery_fabric_name=primary_fabric.name,
///     recovery_source_protection_container_name=primary_protection_container.name,
///     recovery_target_protection_container_id=secondary_protection_container.id,
///     recovery_replication_policy_id=policy.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Azure.Core.ResourceGroup("primary", new()
///     {
///         Name = "tfex-network-mapping-primary",
///         Location = "West US",
///     });
///
///     var secondary = new Azure.Core.ResourceGroup("secondary", new()
///     {
///         Name = "tfex-network-mapping-secondary",
///         Location = "East US",
///     });
///
///     var vault = new Azure.RecoveryServices.Vault("vault", new()
///     {
///         Name = "example-recovery-vault",
///         Location = secondary.Location,
///         ResourceGroupName = secondary.Name,
///         Sku = "Standard",
///     });
///
///     var primaryFabric = new Azure.SiteRecovery.Fabric("primary", new()
///     {
///         Name = "primary-fabric",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         Location = primary.Location,
///     });
///
///     var secondaryFabric = new Azure.SiteRecovery.Fabric("secondary", new()
///     {
///         Name = "secondary-fabric",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         Location = secondary.Location,
///     });
///
///     var primaryProtectionContainer = new Azure.SiteRecovery.ProtectionContainer("primary", new()
///     {
///         Name = "primary-protection-container",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         RecoveryFabricName = primaryFabric.Name,
///     });
///
///     var secondaryProtectionContainer = new Azure.SiteRecovery.ProtectionContainer("secondary", new()
///     {
///         Name = "secondary-protection-container",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         RecoveryFabricName = secondaryFabric.Name,
///     });
///
///     var policy = new Azure.SiteRecovery.ReplicationPolicy("policy", new()
///     {
///         Name = "policy",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         RecoveryPointRetentionInMinutes = 24 * 60,
///         ApplicationConsistentSnapshotFrequencyInMinutes = 4 * 60,
///     });
///
///     var container_mapping = new Azure.SiteRecovery.ProtectionContainerMapping("container-mapping", new()
///     {
///         Name = "container-mapping",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         RecoveryFabricName = primaryFabric.Name,
///         RecoverySourceProtectionContainerName = primaryProtectionContainer.Name,
///         RecoveryTargetProtectionContainerId = secondaryProtectionContainer.Id,
///         RecoveryReplicationPolicyId = policy.Id,
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
/// 		primary, err := core.NewResourceGroup(ctx, "primary", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-network-mapping-primary"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := core.NewResourceGroup(ctx, "secondary", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-network-mapping-secondary"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vault, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          secondary.Location,
/// 			ResourceGroupName: secondary.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryFabric, err := siterecovery.NewFabric(ctx, "primary", &siterecovery.FabricArgs{
/// 			Name:              pulumi.String("primary-fabric"),
/// 			ResourceGroupName: secondary.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			Location:          primary.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryFabric, err := siterecovery.NewFabric(ctx, "secondary", &siterecovery.FabricArgs{
/// 			Name:              pulumi.String("secondary-fabric"),
/// 			ResourceGroupName: secondary.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			Location:          secondary.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primaryProtectionContainer, err := siterecovery.NewProtectionContainer(ctx, "primary", &siterecovery.ProtectionContainerArgs{
/// 			Name:               pulumi.String("primary-protection-container"),
/// 			ResourceGroupName:  secondary.Name,
/// 			RecoveryVaultName:  vault.Name,
/// 			RecoveryFabricName: primaryFabric.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondaryProtectionContainer, err := siterecovery.NewProtectionContainer(ctx, "secondary", &siterecovery.ProtectionContainerArgs{
/// 			Name:               pulumi.String("secondary-protection-container"),
/// 			ResourceGroupName:  secondary.Name,
/// 			RecoveryVaultName:  vault.Name,
/// 			RecoveryFabricName: secondaryFabric.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policy, err := siterecovery.NewReplicationPolicy(ctx, "policy", &siterecovery.ReplicationPolicyArgs{
/// 			Name:                            pulumi.String("policy"),
/// 			ResourceGroupName:               secondary.Name,
/// 			RecoveryVaultName:               vault.Name,
/// 			RecoveryPointRetentionInMinutes: int(24 * 60),
/// 			ApplicationConsistentSnapshotFrequencyInMinutes: int(4 * 60),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewProtectionContainerMapping(ctx, "container-mapping", &siterecovery.ProtectionContainerMappingArgs{
/// 			Name:                                  pulumi.String("container-mapping"),
/// 			ResourceGroupName:                     secondary.Name,
/// 			RecoveryVaultName:                     vault.Name,
/// 			RecoveryFabricName:                    primaryFabric.Name,
/// 			RecoverySourceProtectionContainerName: primaryProtectionContainer.Name,
/// 			RecoveryTargetProtectionContainerId:   secondaryProtectionContainer.ID(),
/// 			RecoveryReplicationPolicyId:           policy.ID(),
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
/// import com.pulumi.azure.siterecovery.Fabric;
/// import com.pulumi.azure.siterecovery.FabricArgs;
/// import com.pulumi.azure.siterecovery.ProtectionContainer;
/// import com.pulumi.azure.siterecovery.ProtectionContainerArgs;
/// import com.pulumi.azure.siterecovery.ReplicationPolicy;
/// import com.pulumi.azure.siterecovery.ReplicationPolicyArgs;
/// import com.pulumi.azure.siterecovery.ProtectionContainerMapping;
/// import com.pulumi.azure.siterecovery.ProtectionContainerMappingArgs;
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
///         var primary = new ResourceGroup("primary", ResourceGroupArgs.builder()
///             .name("tfex-network-mapping-primary")
///             .location("West US")
///             .build());
///
///         var secondary = new ResourceGroup("secondary", ResourceGroupArgs.builder()
///             .name("tfex-network-mapping-secondary")
///             .location("East US")
///             .build());
///
///         var vault = new Vault("vault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(secondary.location())
///             .resourceGroupName(secondary.name())
///             .sku("Standard")
///             .build());
///
///         var primaryFabric = new Fabric("primaryFabric", FabricArgs.builder()
///             .name("primary-fabric")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .location(primary.location())
///             .build());
///
///         var secondaryFabric = new Fabric("secondaryFabric", FabricArgs.builder()
///             .name("secondary-fabric")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .location(secondary.location())
///             .build());
///
///         var primaryProtectionContainer = new ProtectionContainer("primaryProtectionContainer", ProtectionContainerArgs.builder()
///             .name("primary-protection-container")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .recoveryFabricName(primaryFabric.name())
///             .build());
///
///         var secondaryProtectionContainer = new ProtectionContainer("secondaryProtectionContainer", ProtectionContainerArgs.builder()
///             .name("secondary-protection-container")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .recoveryFabricName(secondaryFabric.name())
///             .build());
///
///         var policy = new ReplicationPolicy("policy", ReplicationPolicyArgs.builder()
///             .name("policy")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .recoveryPointRetentionInMinutes(24 * 60)
///             .applicationConsistentSnapshotFrequencyInMinutes(4 * 60)
///             .build());
///
///         var container_mapping = new ProtectionContainerMapping("container-mapping", ProtectionContainerMappingArgs.builder()
///             .name("container-mapping")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .recoveryFabricName(primaryFabric.name())
///             .recoverySourceProtectionContainerName(primaryProtectionContainer.name())
///             .recoveryTargetProtectionContainerId(secondaryProtectionContainer.id())
///             .recoveryReplicationPolicyId(policy.id())
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
/// Site Recovery Protection Container Mappings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:siterecovery/protectionContainerMapping:ProtectionContainerMapping mymapping /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/replicationFabrics/fabric1/replicationProtectionContainers/container1/replicationProtectionContainerMappings/mapping1
/// ```
class ProtectionContainerMapping extends pulumi.CustomResource {
  /// a `automatic_update` block defined as below.
  late final pulumi.Output<ProtectionContainerMappingAutomaticUpdate> automaticUpdate;
  /// The name of the protection container mapping. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Name of fabric that should contains the protection container to map. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryFabricName;
  /// Id of the policy to use for this mapping. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryReplicationPolicyId;
  /// Name of the source protection container to map. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoverySourceProtectionContainerName;
  /// Id of target protection container to map to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryTargetProtectionContainerId;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ProtectionContainerMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProtectionContainerMapping]. {@macro pulumi_siterecovery_protection_container_mapping_protection_container_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProtectionContainerMapping(
    String name, {
    ProtectionContainerMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/protectionContainerMapping:ProtectionContainerMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automaticUpdate = registerOutput<ProtectionContainerMappingAutomaticUpdate>('automaticUpdate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProtectionContainerMappingAutomaticUpdate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    recoveryFabricName = registerOutput<String>('recoveryFabricName');
    recoveryReplicationPolicyId = registerOutput<String>('recoveryReplicationPolicyId');
    recoverySourceProtectionContainerName = registerOutput<String>('recoverySourceProtectionContainerName');
    recoveryTargetProtectionContainerId = registerOutput<String>('recoveryTargetProtectionContainerId');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [ProtectionContainerMapping] resource's state with the given [name] and [id].
  static ProtectionContainerMapping get(
    String name,
    pulumi.Input<String> id, {
    ProtectionContainerMappingState? state,
  }) {
    return ProtectionContainerMapping._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProtectionContainerMapping._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/protectionContainerMapping:ProtectionContainerMapping',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automaticUpdate = registerOutput<ProtectionContainerMappingAutomaticUpdate>('automaticUpdate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProtectionContainerMappingAutomaticUpdate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    recoveryFabricName = registerOutput<String>('recoveryFabricName');
    recoveryReplicationPolicyId = registerOutput<String>('recoveryReplicationPolicyId');
    recoverySourceProtectionContainerName = registerOutput<String>('recoverySourceProtectionContainerName');
    recoveryTargetProtectionContainerId = registerOutput<String>('recoveryTargetProtectionContainerId');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
