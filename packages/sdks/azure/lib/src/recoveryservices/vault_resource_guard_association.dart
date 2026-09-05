import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_resource_guard_association_args.dart';
import 'vault_resource_guard_association_state.dart';

/// Manages an association of a Resource Guard and Recovery Services Vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleResourceGuard = new azure.dataprotection.ResourceGuard("example", {
///     name: "example-resourceguard",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "example-recovery-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     softDeleteEnabled: true,
/// });
/// const test = new azure.recoveryservices.VaultResourceGuardAssociation("test", {
///     vaultId: testAzurermRecoveryServicesVault.id,
///     resourceGuardId: testAzurermDataProtectionResourceGuard.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_resource_guard = azure.dataprotection.ResourceGuard("example",
///     name="example-resourceguard",
///     resource_group_name=example.name,
///     location=example.location)
/// vault = azure.recoveryservices.Vault("vault",
///     name="example-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     soft_delete_enabled=True)
/// test = azure.recoveryservices.VaultResourceGuardAssociation("test",
///     vault_id=test_azurerm_recovery_services_vault["id"],
///     resource_guard_id=test_azurerm_data_protection_resource_guard["id"])
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleResourceGuard = new Azure.DataProtection.ResourceGuard("example", new()
///     {
///         Name = "example-resourceguard",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var vault = new Azure.RecoveryServices.Vault("vault", new()
///     {
///         Name = "example-recovery-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         SoftDeleteEnabled = true,
///     });
///
///     var test = new Azure.RecoveryServices.VaultResourceGuardAssociation("test", new()
///     {
///         VaultId = testAzurermRecoveryServicesVault.Id,
///         ResourceGuardId = testAzurermDataProtectionResourceGuard.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewResourceGuard(ctx, "example", &dataprotection.ResourceGuardArgs{
/// 			Name:              pulumi.String("example-resourceguard"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			SoftDeleteEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = recoveryservices.NewVaultResourceGuardAssociation(ctx, "test", &recoveryservices.VaultResourceGuardAssociationArgs{
/// 			VaultId:         pulumi.Any(testAzurermRecoveryServicesVault.Id),
/// 			ResourceGuardId: pulumi.Any(testAzurermDataProtectionResourceGuard.Id),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_dataprotection_resourceguard" "example" {
///   name                = "example-resourceguard"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_recoveryservices_vault" "vault" {
///   name                = "example-recovery-vault"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
///   soft_delete_enabled = true
/// }
/// resource "azure_recoveryservices_vaultresourceguardassociation" "test" {
///   vault_id          = testAzurermRecoveryServicesVault.id
///   resource_guard_id = testAzurermDataProtectionResourceGuard.id
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
/// import com.pulumi.azure.dataprotection.ResourceGuard;
/// import com.pulumi.azure.dataprotection.ResourceGuardArgs;
/// import com.pulumi.azure.recoveryservices.Vault;
/// import com.pulumi.azure.recoveryservices.VaultArgs;
/// import com.pulumi.azure.recoveryservices.VaultResourceGuardAssociation;
/// import com.pulumi.azure.recoveryservices.VaultResourceGuardAssociationArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleResourceGuard = new ResourceGuard("exampleResourceGuard", ResourceGuardArgs.builder()
///             .name("example-resourceguard")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var vault = new Vault("vault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .softDeleteEnabled(true)
///             .build());
///
///         var test = new VaultResourceGuardAssociation("test", VaultResourceGuardAssociationArgs.builder()
///             .vaultId(testAzurermRecoveryServicesVault.id())
///             .resourceGuardId(testAzurermDataProtectionResourceGuard.id())
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
///       name: example-resources
///       location: West Europe
///   exampleResourceGuard:
///     type: azure:dataprotection:ResourceGuard
///     name: example
///     properties:
///       name: example-resourceguard
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   vault:
///     type: azure:recoveryservices:Vault
///     properties:
///       name: example-recovery-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       softDeleteEnabled: true
///   test:
///     type: azure:recoveryservices:VaultResourceGuardAssociation
///     properties:
///       vaultId: ${testAzurermRecoveryServicesVault.id}
///       resourceGuardId: ${testAzurermDataProtectionResourceGuard.id}
/// ```
///
///
/// ## Import
///
/// Resource Guards can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:recoveryservices/vaultResourceGuardAssociation:VaultResourceGuardAssociation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.RecoveryServices/vaults/vault1/backupResourceGuardProxies/proxy1
/// ```
class VaultResourceGuardAssociation extends pulumi.CustomResource {
  /// ID of the Resource Guard which should be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGuardId;
  /// ID of the Recovery Services Vault which should be associated with. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [VaultResourceGuardAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VaultResourceGuardAssociation]. {@macro pulumi_recoveryservices_vault_resource_guard_association_vault_resource_guard_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VaultResourceGuardAssociation(
    String name, {
    VaultResourceGuardAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:recoveryservices/vaultResourceGuardAssociation:VaultResourceGuardAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    resourceGuardId = registerOutput<String>('resourceGuardId');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [VaultResourceGuardAssociation] resource's state with the given [name] and [id].
  static VaultResourceGuardAssociation get(
    String name,
    pulumi.Input<String> id, {
    VaultResourceGuardAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VaultResourceGuardAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VaultResourceGuardAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:recoveryservices/vaultResourceGuardAssociation:VaultResourceGuardAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    resourceGuardId = registerOutput<String>('resourceGuardId');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Creates a typed reference to an existing [VaultResourceGuardAssociation] resource.
  VaultResourceGuardAssociation.reference(String urn)
    : super(
        'azure:recoveryservices/vaultResourceGuardAssociation:VaultResourceGuardAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    resourceGuardId = registerOutput<String>('resourceGuardId');
    vaultId = registerOutput<String>('vaultId');
  }
}
