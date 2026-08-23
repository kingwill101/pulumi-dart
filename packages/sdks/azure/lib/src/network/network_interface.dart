import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_args.dart';
import 'network_interface_state.dart';

/// Manages a Network Interface.
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "example-nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
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
///     name="example-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
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
///         Name = "example-network",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "internal",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "example-nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "internal",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
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
/// 			Name: pulumi.String("example-network"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("example-nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("internal"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
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
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-network"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "internal"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_network_networkinterface" "example" {
///   name                = "example-nic"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   ip_configurations {
///     name                          = "internal"
///     subnet_id                     = azure_network_subnet.example.id
///     private_ip_address_allocation = "Dynamic"
///   }
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
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("example-nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("internal")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
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
///       name: example-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: internal
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: example-nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: internal
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Interfaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkInterface:NetworkInterface example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkInterfaces/nic1
/// ```
class NetworkInterface extends pulumi.CustomResource {
  /// Should Accelerated Networking be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** Only certain Virtual Machine sizes are supported for Accelerated Networking - [more information can be found in this document](https://docs.microsoft.com/azure/virtual-network/create-vm-accelerated-networking-cli).
  ///
  /// &gt; **Note:** To use Accelerated Networking in an Availability Set, the Availability Set must be deployed onto an Accelerated Networking enabled cluster.
  late final pulumi.Output<bool?> acceleratedNetworkingEnabled;
  /// If the Virtual Machine using this Network Interface is part of an Availability Set, then this list will have the union of all DNS servers from all Network Interfaces that are part of the Availability Set.
  late final pulumi.Output<List<String>> appliedDnsServers;
  /// Specifies the auxiliary mode used to enable network high-performance feature on Network Virtual Appliances (NVAs). This feature offers competitive performance in Connections Per Second (CPS) optimization, along with improvements to handling large amounts of simultaneous connections. Possible values are `AcceleratedConnections`, `Floating`, `MaxConnections` and `None`.
  ///
  /// &gt; **Note:** `auxiliaryMode` is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  late final pulumi.Output<String?> auxiliaryMode;
  /// Specifies the SKU used for the network high-performance feature on Network Virtual Appliances (NVAs). Possible values are `A8`, `A4`, `A1`, `A2` and `None`.
  ///
  /// &gt; **Note:** `auxiliarySku` is in **Preview** and requires that the preview is enabled - [more information can be found in the Azure documentation](https://learn.microsoft.com/azure/networking/nva-accelerated-connections#prerequisites).
  late final pulumi.Output<String?> auxiliarySku;
  /// A list of IP Addresses defining the DNS Servers which should be used for this Network Interface.
  ///
  /// &gt; **Note:** Configuring DNS Servers on the Network Interface will override the DNS Servers defined on the Virtual Network.
  late final pulumi.Output<List<String>?> dnsServers;
  /// Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created.
  late final pulumi.Output<String?> edgeZone;
  /// The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network.
  late final pulumi.Output<String?> internalDnsNameLabel;
  /// Even if `internalDnsNameLabel` is not specified, a DNS entry is created for the primary NIC of the VM. This DNS name can be constructed by concatenating the VM name with the value of `internalDomainNameSuffix`.
  late final pulumi.Output<String> internalDomainNameSuffix;
  /// One or more `ipConfiguration` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> ipConfigurations;
  /// Should IP Forwarding be enabled? Defaults to `false`.
  late final pulumi.Output<bool?> ipForwardingEnabled;
  /// The location where the Network Interface should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The Media Access Control (MAC) Address of the Network Interface.
  late final pulumi.Output<String> macAddress;
  /// The name of the Network Interface. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The first private IP address of the network interface.
  late final pulumi.Output<String> privateIpAddress;
  /// The private IP addresses of the network interface.
  late final pulumi.Output<List<String>> privateIpAddresses;
  /// The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Virtual Machine which this Network Interface is connected to.
  late final pulumi.Output<String> virtualMachineId;

  /// Creates a new [NetworkInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterface]. {@macro pulumi_network_network_interface_network_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterface(
    String name, {
    NetworkInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterface:NetworkInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratedNetworkingEnabled = registerOutput<bool?>('acceleratedNetworkingEnabled');
    appliedDnsServers = registerOutput<List<String>>('appliedDnsServers');
    auxiliaryMode = registerOutput<String?>('auxiliaryMode');
    auxiliarySku = registerOutput<String?>('auxiliarySku');
    dnsServers = registerOutput<List<String>?>('dnsServers');
    edgeZone = registerOutput<String?>('edgeZone');
    internalDnsNameLabel = registerOutput<String?>('internalDnsNameLabel');
    internalDomainNameSuffix = registerOutput<String>('internalDomainNameSuffix');
    ipConfigurations = registerOutput<List<Map<String, dynamic>>>('ipConfigurations');
    ipForwardingEnabled = registerOutput<bool?>('ipForwardingEnabled');
    location = registerOutput<String>('location');
    macAddress = registerOutput<String>('macAddress');
    this.name = registerOutput<String>('name');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Gets an existing [NetworkInterface] resource's state with the given [name] and [id].
  static NetworkInterface get(
    String name,
    pulumi.Input<String> id, {
    NetworkInterfaceState? state,
  }) {
    return NetworkInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterface:NetworkInterface',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratedNetworkingEnabled = registerOutput<bool?>('acceleratedNetworkingEnabled');
    appliedDnsServers = registerOutput<List<String>>('appliedDnsServers');
    auxiliaryMode = registerOutput<String?>('auxiliaryMode');
    auxiliarySku = registerOutput<String?>('auxiliarySku');
    dnsServers = registerOutput<List<String>?>('dnsServers');
    edgeZone = registerOutput<String?>('edgeZone');
    internalDnsNameLabel = registerOutput<String?>('internalDnsNameLabel');
    internalDomainNameSuffix = registerOutput<String>('internalDomainNameSuffix');
    ipConfigurations = registerOutput<List<Map<String, dynamic>>>('ipConfigurations');
    ipForwardingEnabled = registerOutput<bool?>('ipForwardingEnabled');
    location = registerOutput<String>('location');
    macAddress = registerOutput<String>('macAddress');
    this.name = registerOutput<String>('name');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }
}
