import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyperv_network_mapping_args.dart';
import 'hyperv_network_mapping_state.dart';

/// Manages a HyperV site recovery network mapping on Azure. A HyperV network mapping decides how to translate connected networks when a VM is migrated from HyperV VMM Center to Azure.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const target = new azure.core.ResourceGroup("target", {
///     name: "tfex-network-mapping",
///     location: "East US",
/// });
/// const vault = new azure.recoveryservices.Vault("vault", {
///     name: "example-recovery-vault",
///     location: target.location,
///     resourceGroupName: target.name,
///     sku: "Standard",
/// });
/// const targetVirtualNetwork = new azure.network.VirtualNetwork("target", {
///     name: "network",
///     resourceGroupName: target.name,
///     addressSpaces: ["192.168.2.0/24"],
///     location: target.location,
/// });
/// const recovery_mapping = new azure.siterecovery.HypervNetworkMapping("recovery-mapping", {
///     name: "recovery-network-mapping",
///     recoveryVaultId: vault.id,
///     sourceSystemCenterVirtualMachineManagerName: "my-vmm-server",
///     sourceNetworkName: "my-vmm-network",
///     targetNetworkId: targetVirtualNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// target = azure.core.ResourceGroup("target",
///     name="tfex-network-mapping",
///     location="East US")
/// vault = azure.recoveryservices.Vault("vault",
///     name="example-recovery-vault",
///     location=target.location,
///     resource_group_name=target.name,
///     sku="Standard")
/// target_virtual_network = azure.network.VirtualNetwork("target",
///     name="network",
///     resource_group_name=target.name,
///     address_spaces=["192.168.2.0/24"],
///     location=target.location)
/// recovery_mapping = azure.siterecovery.HypervNetworkMapping("recovery-mapping",
///     name="recovery-network-mapping",
///     recovery_vault_id=vault.id,
///     source_system_center_virtual_machine_manager_name="my-vmm-server",
///     source_network_name="my-vmm-network",
///     target_network_id=target_virtual_network.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var target = new Azure.Core.ResourceGroup("target", new()
///     {
///         Name = "tfex-network-mapping",
///         Location = "East US",
///     });
///
///     var vault = new Azure.RecoveryServices.Vault("vault", new()
///     {
///         Name = "example-recovery-vault",
///         Location = target.Location,
///         ResourceGroupName = target.Name,
///         Sku = "Standard",
///     });
///
///     var targetVirtualNetwork = new Azure.Network.VirtualNetwork("target", new()
///     {
///         Name = "network",
///         ResourceGroupName = target.Name,
///         AddressSpaces = new[]
///         {
///             "192.168.2.0/24",
///         },
///         Location = target.Location,
///     });
///
///     var recovery_mapping = new Azure.SiteRecovery.HypervNetworkMapping("recovery-mapping", new()
///     {
///         Name = "recovery-network-mapping",
///         RecoveryVaultId = vault.Id,
///         SourceSystemCenterVirtualMachineManagerName = "my-vmm-server",
///         SourceNetworkName = "my-vmm-network",
///         TargetNetworkId = targetVirtualNetwork.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/siterecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		target, err := core.NewResourceGroup(ctx, "target", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-network-mapping"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vault, err := recoveryservices.NewVault(ctx, "vault", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("example-recovery-vault"),
/// 			Location:          target.Location,
/// 			ResourceGroupName: target.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		targetVirtualNetwork, err := network.NewVirtualNetwork(ctx, "target", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("network"),
/// 			ResourceGroupName: target.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("192.168.2.0/24"),
/// 			},
/// 			Location: target.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = siterecovery.NewHypervNetworkMapping(ctx, "recovery-mapping", &siterecovery.HypervNetworkMappingArgs{
/// 			Name:            pulumi.String("recovery-network-mapping"),
/// 			RecoveryVaultId: vault.ID().ToIDOutput().ToStringOutput(),
/// 			SourceSystemCenterVirtualMachineManagerName: pulumi.String("my-vmm-server"),
/// 			SourceNetworkName: pulumi.String("my-vmm-network"),
/// 			TargetNetworkId:   targetVirtualNetwork.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_core_resourcegroup" "target" {
///   name     = "tfex-network-mapping"
///   location = "East US"
/// }
/// resource "azure_recoveryservices_vault" "vault" {
///   name                = "example-recovery-vault"
///   location            = azure_core_resourcegroup.target.location
///   resource_group_name = azure_core_resourcegroup.target.name
///   sku                 = "Standard"
/// }
/// resource "azure_network_virtualnetwork" "target" {
///   name                = "network"
///   resource_group_name = azure_core_resourcegroup.target.name
///   address_spaces      = ["192.168.2.0/24"]
///   location            = azure_core_resourcegroup.target.location
/// }
/// resource "azure_siterecovery_hypervnetworkmapping" "recovery-mapping" {
///   name                                              = "recovery-network-mapping"
///   recovery_vault_id                                 = azure_recoveryservices_vault.vault.id
///   source_system_center_virtual_machine_manager_name = "my-vmm-server"
///   source_network_name                               = "my-vmm-network"
///   target_network_id                                 = azure_network_virtualnetwork.target.id
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.siterecovery.HypervNetworkMapping;
/// import com.pulumi.azure.siterecovery.HypervNetworkMappingArgs;
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
///         var target = new ResourceGroup("target", ResourceGroupArgs.builder()
///             .name("tfex-network-mapping")
///             .location("East US")
///             .build());
///
///         var vault = new Vault("vault", VaultArgs.builder()
///             .name("example-recovery-vault")
///             .location(target.location())
///             .resourceGroupName(target.name())
///             .sku("Standard")
///             .build());
///
///         var targetVirtualNetwork = new VirtualNetwork("targetVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("network")
///             .resourceGroupName(target.name())
///             .addressSpaces("192.168.2.0/24")
///             .location(target.location())
///             .build());
///
///         var recovery_mapping = new HypervNetworkMapping("recovery-mapping", HypervNetworkMappingArgs.builder()
///             .name("recovery-network-mapping")
///             .recoveryVaultId(vault.id())
///             .sourceSystemCenterVirtualMachineManagerName("my-vmm-server")
///             .sourceNetworkName("my-vmm-network")
///             .targetNetworkId(targetVirtualNetwork.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   target:
///     type: azure:core:ResourceGroup
///     properties:
///       name: tfex-network-mapping
///       location: East US
///   vault:
///     type: azure:recoveryservices:Vault
///     properties:
///       name: example-recovery-vault
///       location: ${target.location}
///       resourceGroupName: ${target.name}
///       sku: Standard
///   targetVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: target
///     properties:
///       name: network
///       resourceGroupName: ${target.name}
///       addressSpaces:
///         - 192.168.2.0/24
///       location: ${target.location}
///   recovery-mapping:
///     type: azure:siterecovery:HypervNetworkMapping
///     properties:
///       name: recovery-network-mapping
///       recoveryVaultId: ${vault.id}
///       sourceSystemCenterVirtualMachineManagerName: my-vmm-server
///       sourceNetworkName: my-vmm-network
///       targetNetworkId: ${targetVirtualNetwork.id}
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
/// Site Recovery Network Mapping can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:siterecovery/hypervNetworkMapping:HypervNetworkMapping mymapping /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resource-group-name/providers/Microsoft.RecoveryServices/vaults/recovery-vault-name/replicationFabrics/primary-fabric-name/replicationNetworks/azureNetwork/replicationNetworkMappings/mapping-name
/// ```
class HypervNetworkMapping extends pulumi.CustomResource {
  /// The name of the HyperV network mapping. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Recovery Services Vault where the HyperV network mapping should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultId;
  /// The Name of the primary network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceNetworkName;
  /// Specifies the name of source System Center Virtual Machine Manager where the source network exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceSystemCenterVirtualMachineManagerName;
  /// The id of the recovery network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> targetNetworkId;

  /// Creates a new [HypervNetworkMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HypervNetworkMapping]. {@macro pulumi_siterecovery_hyperv_network_mapping_hyperv_network_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HypervNetworkMapping(
    String name, {
    HypervNetworkMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/hypervNetworkMapping:HypervNetworkMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
    sourceNetworkName = registerOutput<String>('sourceNetworkName');
    sourceSystemCenterVirtualMachineManagerName = registerOutput<String>('sourceSystemCenterVirtualMachineManagerName');
    targetNetworkId = registerOutput<String>('targetNetworkId');
  }

  /// Gets an existing [HypervNetworkMapping] resource's state with the given [name] and [id].
  static HypervNetworkMapping get(
    String name,
    pulumi.Input<String> id, {
    HypervNetworkMappingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HypervNetworkMapping._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HypervNetworkMapping._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:siterecovery/hypervNetworkMapping:HypervNetworkMapping',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
    sourceNetworkName = registerOutput<String>('sourceNetworkName');
    sourceSystemCenterVirtualMachineManagerName = registerOutput<String>('sourceSystemCenterVirtualMachineManagerName');
    targetNetworkId = registerOutput<String>('targetNetworkId');
  }

  /// Creates a typed reference to an existing [HypervNetworkMapping] resource.
  HypervNetworkMapping.reference(String urn)
    : super(
        'azure:siterecovery/hypervNetworkMapping:HypervNetworkMapping',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    this.name = registerOutput<String>('name');
    recoveryVaultId = registerOutput<String>('recoveryVaultId');
    sourceNetworkName = registerOutput<String>('sourceNetworkName');
    sourceSystemCenterVirtualMachineManagerName = registerOutput<String>('sourceSystemCenterVirtualMachineManagerName');
    targetNetworkId = registerOutput<String>('targetNetworkId');
  }
}
