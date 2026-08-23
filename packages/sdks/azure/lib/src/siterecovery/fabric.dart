import 'package:pulumi/pulumi.dart' as pulumi;
import 'fabric_args.dart';
import 'fabric_state.dart';

/// Manages a Azure Site Recovery Replication Fabric within a Recovery Services vault. Only Azure fabrics are supported at this time. Replication Fabrics serve as a container within an Azure region for other Site Recovery resources such as protection containers, protected items, network mappings.
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
/// const fabric = new azure.siterecovery.Fabric("fabric", {
///     name: "primary-fabric",
///     resourceGroupName: secondary.name,
///     recoveryVaultName: vault.name,
///     location: primary.location,
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
/// fabric = azure.siterecovery.Fabric("fabric",
///     name="primary-fabric",
///     resource_group_name=secondary.name,
///     recovery_vault_name=vault.name,
///     location=primary.location)
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
///     var fabric = new Azure.SiteRecovery.Fabric("fabric", new()
///     {
///         Name = "primary-fabric",
///         ResourceGroupName = secondary.Name,
///         RecoveryVaultName = vault.Name,
///         Location = primary.Location,
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
/// 		_, err = siterecovery.NewFabric(ctx, "fabric", &siterecovery.FabricArgs{
/// 			Name:              pulumi.String("primary-fabric"),
/// 			ResourceGroupName: secondary.Name,
/// 			RecoveryVaultName: vault.Name,
/// 			Location:          primary.Location,
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
/// resource "azure_core_resourcegroup" "primary" {
///   name     = "tfex-network-mapping-primary"
///   location = "West US"
/// }
/// resource "azure_core_resourcegroup" "secondary" {
///   name     = "tfex-network-mapping-secondary"
///   location = "East US"
/// }
/// resource "azure_recoveryservices_vault" "vault" {
///   name                = "example-recovery-vault"
///   location            = azure_core_resourcegroup.secondary.location
///   resource_group_name = azure_core_resourcegroup.secondary.name
///   sku                 = "Standard"
/// }
/// resource "azure_siterecovery_fabric" "fabric" {
///   name                = "primary-fabric"
///   resource_group_name = azure_core_resourcegroup.secondary.name
///   recovery_vault_name = azure_recoveryservices_vault.vault.name
///   location            = azure_core_resourcegroup.primary.location
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
///         var fabric = new Fabric("fabric", FabricArgs.builder()
///             .name("primary-fabric")
///             .resourceGroupName(secondary.name())
///             .recoveryVaultName(vault.name())
///             .location(primary.location())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tfex-network-mapping-primary
///       location: West US
///   secondary:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tfex-network-mapping-secondary
///       location: East US
///   vault:
///     type: azure:recoveryservices:Vault
///     properties:
///       name: example-recovery-vault
///       location: ${secondary.location}
///       resourceGroupName: ${secondary.name}
///       sku: Standard
///   fabric:
///     type: azure:siterecovery:Fabric
///     properties:
///       name: primary-fabric
///       resourceGroupName: ${secondary.name}
///       recoveryVaultName: ${vault.name}
///       location: ${primary.location}
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
/// Site Recovery Fabric can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:siterecovery/fabric:Fabric myfabric /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/replicationFabrics/fabric-name
/// ```
class Fabric extends pulumi.CustomResource {
  /// In what region should the fabric be located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the network mapping. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [Fabric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Fabric]. {@macro pulumi_siterecovery_fabric_fabric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Fabric(
    String name, {
    FabricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/fabric:Fabric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [Fabric] resource's state with the given [name] and [id].
  static Fabric get(
    String name,
    pulumi.Input<String> id, {
    FabricState? state,
  }) {
    return Fabric._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Fabric._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/fabric:Fabric',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    recoveryVaultName = registerOutput<String>('recoveryVaultName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
