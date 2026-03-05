import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_args.dart';
import 'bastion_host_ip_configuration.dart';
import 'bastion_host_state.dart';

/// Manages a Bastion Host.
///
/// ## Example Usage
///
/// This example deploys an Azure Bastion Host Instance to a target virtual network.
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "examplevnet",
///     addressSpaces: ["192.168.1.0/24"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "AzureBastionSubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["192.168.1.224/27"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "examplepip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     sku: "Standard",
/// });
/// const exampleBastionHost = new azure.compute.BastionHost("example", {
///     name: "examplebastion",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfiguration: {
///         name: "configuration",
///         subnetId: exampleSubnet.id,
///         publicIpAddressId: examplePublicIp.id,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="examplevnet",
///     address_spaces=["192.168.1.0/24"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="AzureBastionSubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["192.168.1.224/27"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="examplepip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     sku="Standard")
/// example_bastion_host = azure.compute.BastionHost("example",
///     name="examplebastion",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configuration={
///         "name": "configuration",
///         "subnet_id": example_subnet.id,
///         "public_ip_address_id": example_public_ip.id,
///     })
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "examplevnet",
///         AddressSpaces = new[]
///         {
///             "192.168.1.0/24",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "AzureBastionSubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "192.168.1.224/27",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "examplepip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///     });
///
///     var exampleBastionHost = new Azure.Compute.BastionHost("example", new()
///     {
///         Name = "examplebastion",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfiguration = new Azure.Compute.Inputs.BastionHostIpConfigurationArgs
///         {
///             Name = "configuration",
///             SubnetId = exampleSubnet.Id,
///             PublicIpAddressId = examplePublicIp.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("examplevnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("192.168.1.0/24"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("AzureBastionSubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("192.168.1.224/27"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("examplepip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewBastionHost(ctx, "example", &compute.BastionHostArgs{
/// 			Name:              pulumi.String("examplebastion"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfiguration: &compute.BastionHostIpConfigurationArgs{
/// 				Name:              pulumi.String("configuration"),
/// 				SubnetId:          exampleSubnet.ID(),
/// 				PublicIpAddressId: examplePublicIp.ID(),
/// 			},
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.compute.BastionHost;
/// import com.pulumi.azure.compute.BastionHostArgs;
/// import com.pulumi.azure.compute.inputs.BastionHostIpConfigurationArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("examplevnet")
///             .addressSpaces("192.168.1.0/24")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("AzureBastionSubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("192.168.1.224/27")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("examplepip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .build());
///
///         var exampleBastionHost = new BastionHost("exampleBastionHost", BastionHostArgs.builder()
///             .name("examplebastion")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfiguration(BastionHostIpConfigurationArgs.builder()
///                 .name("configuration")
///                 .subnetId(exampleSubnet.id())
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: examplevnet
///       addressSpaces:
///         - 192.168.1.0/24
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: AzureBastionSubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 192.168.1.224/27
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: examplepip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       sku: Standard
///   exampleBastionHost:
///     type: azure:compute:BastionHost
///     name: example
///     properties:
///       name: examplebastion
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfiguration:
///         name: configuration
///         subnetId: ${exampleSubnet.id}
///         publicIpAddressId: ${examplePublicIp.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-01-01
///
/// ## Import
///
/// Bastion Hosts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/bastionHost:BastionHost example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/bastionHosts/instance1
/// ```
class BastionHost extends pulumi.CustomResource {
  /// Is Copy/Paste feature enabled for the Bastion Host. Defaults to `true`.
  late final pulumi.Output<bool?> copyPasteEnabled;
  /// The FQDN for the Bastion Host.
  late final pulumi.Output<String> dnsName;
  /// Is File Copy feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `file_copy_enabled` is only supported when `sku` is `Standard` or `Premium`.
  late final pulumi.Output<bool?> fileCopyEnabled;
  /// A `ip_configuration` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<BastionHostIpConfiguration?> ipConfiguration;
  /// Is IP Connect feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `ip_connect_enabled` is only supported when `sku` is `Standard` or `Premium`.
  late final pulumi.Output<bool?> ipConnectEnabled;
  /// Is Kerberos authentication feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `kerberos_enabled` is only supported when `sku` is `Standard` or `Premium`.
  late final pulumi.Output<bool?> kerberosEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. Review [Azure Bastion Host FAQ](https://docs.microsoft.com/azure/bastion/bastion-faq) for supported locations.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Bastion Host. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Bastion Host. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The number of scale units with which to provision the Bastion Host. Possible values are between `2` and `50`. Defaults to `2`.
  ///
  /// &gt; **Note:** `scale_units` only can be changed when `sku` is `Standard` or `Premium`. `scale_units` is always `2` when `sku` is `Basic`.
  late final pulumi.Output<int?> scaleUnits;
  /// Is Session Recording feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `session_recording_enabled` is only supported when `sku` is `Premium`.
  late final pulumi.Output<bool?> sessionRecordingEnabled;
  /// Is Shareable Link feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `shareable_link_enabled` is only supported when `sku` is `Standard` or `Premium`.
  late final pulumi.Output<bool?> shareableLinkEnabled;
  /// The SKU of the Bastion Host. Accepted values are `Developer`, `Basic`, `Standard` and `Premium`. Defaults to `Basic`.
  ///
  /// &gt; **Note:** Downgrading the SKU will force a new resource to be created.
  late final pulumi.Output<String?> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Is Tunneling feature enabled for the Bastion Host. Defaults to `false`.
  ///
  /// &gt; **Note:** `tunneling_enabled` is only supported when `sku` is `Standard` or `Premium`.
  late final pulumi.Output<bool?> tunnelingEnabled;
  /// The ID of the Virtual Network for the Developer Bastion Host. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> virtualNetworkId;
  /// Specifies a list of Availability Zones in which this Public Bastion Host should be located. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [BastionHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BastionHost]. {@macro pulumi_compute_bastion_host_bastion_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BastionHost(
    String name, {
    BastionHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/bastionHost:BastionHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    copyPasteEnabled = registerOutput<bool?>('copyPasteEnabled');
    dnsName = registerOutput<String>('dnsName');
    fileCopyEnabled = registerOutput<bool?>('fileCopyEnabled');
    ipConfiguration = registerOutput<BastionHostIpConfiguration?>('ipConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BastionHostIpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipConnectEnabled = registerOutput<bool?>('ipConnectEnabled');
    kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scaleUnits = registerOutput<int?>('scaleUnits');
    sessionRecordingEnabled = registerOutput<bool?>('sessionRecordingEnabled');
    shareableLinkEnabled = registerOutput<bool?>('shareableLinkEnabled');
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    tunnelingEnabled = registerOutput<bool?>('tunnelingEnabled');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
    zones = registerOutput<List<String>?>('zones');
  }

  /// Gets an existing [BastionHost] resource's state with the given [name] and [id].
  static BastionHost get(
    String name,
    pulumi.Input<String> id, {
    BastionHostState? state,
  }) {
    return BastionHost._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BastionHost._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/bastionHost:BastionHost',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    copyPasteEnabled = registerOutput<bool?>('copyPasteEnabled');
    dnsName = registerOutput<String>('dnsName');
    fileCopyEnabled = registerOutput<bool?>('fileCopyEnabled');
    ipConfiguration = registerOutput<BastionHostIpConfiguration?>('ipConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BastionHostIpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipConnectEnabled = registerOutput<bool?>('ipConnectEnabled');
    kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scaleUnits = registerOutput<int?>('scaleUnits');
    sessionRecordingEnabled = registerOutput<bool?>('sessionRecordingEnabled');
    shareableLinkEnabled = registerOutput<bool?>('shareableLinkEnabled');
    sku = registerOutput<String?>('sku');
    tags = registerOutput<Map<String, String>?>('tags');
    tunnelingEnabled = registerOutput<bool?>('tunnelingEnabled');
    virtualNetworkId = registerOutput<String?>('virtualNetworkId');
    zones = registerOutput<List<String>?>('zones');
  }
}
