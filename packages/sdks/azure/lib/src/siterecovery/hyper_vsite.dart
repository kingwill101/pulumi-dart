import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vsite_args.dart';
import 'hyper_vsite_state.dart';

/// Manages a HyperV Site in Recovery Service Vault.
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
///     softDeleteEnabled: false,
/// });
/// const exampleHyperVSite = new azure.siterecovery.HyperVSite("example", {
///     name: "example-site",
///     recoveryVaultId: exampleVault.id,
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
///     soft_delete_enabled=False)
/// example_hyper_v_site = azure.siterecovery.HyperVSite("example",
///     name="example-site",
///     recovery_vault_id=example_vault.id)
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
///         SoftDeleteEnabled = false,
///     });
///
///     var exampleHyperVSite = new Azure.SiteRecovery.HyperVSite("example", new()
///     {
///         Name = "example-site",
///         RecoveryVaultId = exampleVault.Id,
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
/// 			Name:              pulumi.String("example-vault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			SoftDeleteEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewHyperVSite(ctx, "example", &siterecovery.HyperVSiteArgs{
/// 			Name:            pulumi.String("example-site"),
/// 			RecoveryVaultId: exampleVault.ID(),
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
///   name                = "example-vault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
///   soft_delete_enabled = false
/// }
/// resource "azure_siterecovery_hypervsite" "example" {
///   name              = "example-site"
///   recovery_vault_id = azure_recoveryservices_vault.example.id
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
///             .softDeleteEnabled(false)
///             .build());
///
///         var exampleHyperVSite = new HyperVSite("exampleHyperVSite", HyperVSiteArgs.builder()
///             .name("example-site")
///             .recoveryVaultId(exampleVault.id())
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
///       softDeleteEnabled: false
///   exampleHyperVSite:
///     type: azure:siterecovery:HyperVSite
///     name: example
///     properties:
///       name: example-site
///       recoveryVaultId: ${exampleVault.id}
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
/// Recovery Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:siterecovery/hyperVSite:HyperVSite example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/fabric1
/// ```
class HyperVSite extends pulumi.CustomResource {
  /// The name which should be used for this Recovery Service. Changing this forces a new Site to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Recovery Services Vault where the Site created. Changing this forces a new Site to be created.
  late final pulumi.Output<String> recoveryVaultId;

  /// Creates a new [HyperVSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HyperVSite]. {@macro pulumi_siterecovery_hyper_vsite_hyper_vsite_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HyperVSite(
    String name, {
    HyperVSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/hyperVSite:HyperVSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
  }

  /// Gets an existing [HyperVSite] resource's state with the given [name] and [id].
  static HyperVSite get(
    String name,
    pulumi.Input<String> id, {
    HyperVSiteState? state,
  }) {
    return HyperVSite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HyperVSite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/hyperVSite:HyperVSite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
  }
}
