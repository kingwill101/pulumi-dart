import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_peering_args.dart';
import 'virtual_network_peering_state.dart';

/// Manages a virtual network peering which allows resources to access other
/// resources in the linked virtual network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "peeredvnets-rg",
///     location: "West Europe",
/// });
/// const example_1 = new azure.network.VirtualNetwork("example-1", {
///     name: "peternetwork1",
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.1.0/24"],
///     location: example.location,
/// });
/// const example_2 = new azure.network.VirtualNetwork("example-2", {
///     name: "peternetwork2",
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.2.0/24"],
///     location: example.location,
/// });
/// const example_1VirtualNetworkPeering = new azure.network.VirtualNetworkPeering("example-1", {
///     name: "peer1to2",
///     resourceGroupName: example.name,
///     virtualNetworkName: example_1.name,
///     remoteVirtualNetworkId: example_2.id,
/// });
/// const example_2VirtualNetworkPeering = new azure.network.VirtualNetworkPeering("example-2", {
///     name: "peer2to1",
///     resourceGroupName: example.name,
///     virtualNetworkName: example_2.name,
///     remoteVirtualNetworkId: example_1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="peeredvnets-rg",
///     location="West Europe")
/// example_1 = azure.network.VirtualNetwork("example-1",
///     name="peternetwork1",
///     resource_group_name=example.name,
///     address_spaces=["10.0.1.0/24"],
///     location=example.location)
/// example_2 = azure.network.VirtualNetwork("example-2",
///     name="peternetwork2",
///     resource_group_name=example.name,
///     address_spaces=["10.0.2.0/24"],
///     location=example.location)
/// example_1_virtual_network_peering = azure.network.VirtualNetworkPeering("example-1",
///     name="peer1to2",
///     resource_group_name=example.name,
///     virtual_network_name=example_1.name,
///     remote_virtual_network_id=example_2.id)
/// example_2_virtual_network_peering = azure.network.VirtualNetworkPeering("example-2",
///     name="peer2to1",
///     resource_group_name=example.name,
///     virtual_network_name=example_2.name,
///     remote_virtual_network_id=example_1.id)
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
///         Name = "peeredvnets-rg",
///         Location = "West Europe",
///     });
///
///     var example_1 = new Azure.Network.VirtualNetwork("example-1", new()
///     {
///         Name = "peternetwork1",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.1.0/24",
///         },
///         Location = example.Location,
///     });
///
///     var example_2 = new Azure.Network.VirtualNetwork("example-2", new()
///     {
///         Name = "peternetwork2",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.2.0/24",
///         },
///         Location = example.Location,
///     });
///
///     var example_1VirtualNetworkPeering = new Azure.Network.VirtualNetworkPeering("example-1", new()
///     {
///         Name = "peer1to2",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = example_1.Name,
///         RemoteVirtualNetworkId = example_2.Id,
///     });
///
///     var example_2VirtualNetworkPeering = new Azure.Network.VirtualNetworkPeering("example-2", new()
///     {
///         Name = "peer2to1",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = example_2.Name,
///         RemoteVirtualNetworkId = example_1.Id,
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
/// 			Name:     pulumi.String("peeredvnets-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_1, err := network.NewVirtualNetwork(ctx, "example-1", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("peternetwork1"),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			Location: example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example_2, err := network.NewVirtualNetwork(ctx, "example-2", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("peternetwork2"),
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Location: example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkPeering(ctx, "example-1", &network.VirtualNetworkPeeringArgs{
/// 			Name:                   pulumi.String("peer1to2"),
/// 			ResourceGroupName:      example.Name,
/// 			VirtualNetworkName:     example_1.Name,
/// 			RemoteVirtualNetworkId: example_2.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkPeering(ctx, "example-2", &network.VirtualNetworkPeeringArgs{
/// 			Name:                   pulumi.String("peer2to1"),
/// 			ResourceGroupName:      example.Name,
/// 			VirtualNetworkName:     example_2.Name,
/// 			RemoteVirtualNetworkId: example_1.ID(),
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
/// import com.pulumi.azure.network.VirtualNetworkPeering;
/// import com.pulumi.azure.network.VirtualNetworkPeeringArgs;
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
///             .name("peeredvnets-rg")
///             .location("West Europe")
///             .build());
///
///         var example_1 = new VirtualNetwork("example-1", VirtualNetworkArgs.builder()
///             .name("peternetwork1")
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.1.0/24")
///             .location(example.location())
///             .build());
///
///         var example_2 = new VirtualNetwork("example-2", VirtualNetworkArgs.builder()
///             .name("peternetwork2")
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.2.0/24")
///             .location(example.location())
///             .build());
///
///         var example_1VirtualNetworkPeering = new VirtualNetworkPeering("example-1VirtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .name("peer1to2")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(example_1.name())
///             .remoteVirtualNetworkId(example_2.id())
///             .build());
///
///         var example_2VirtualNetworkPeering = new VirtualNetworkPeering("example-2VirtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .name("peer2to1")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(example_2.name())
///             .remoteVirtualNetworkId(example_1.id())
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
///       name: peeredvnets-rg
///       location: West Europe
///   example-1:
///     type: azure:network:VirtualNetwork
///     properties:
///       name: peternetwork1
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.1.0/24
///       location: ${example.location}
///   example-2:
///     type: azure:network:VirtualNetwork
///     properties:
///       name: peternetwork2
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.2.0/24
///       location: ${example.location}
///   example-1VirtualNetworkPeering:
///     type: azure:network:VirtualNetworkPeering
///     name: example-1
///     properties:
///       name: peer1to2
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${["example-1"].name}
///       remoteVirtualNetworkId: ${["example-2"].id}
///   example-2VirtualNetworkPeering:
///     type: azure:network:VirtualNetworkPeering
///     name: example-2
///     properties:
///       name: peer2to1
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${["example-2"].name}
///       remoteVirtualNetworkId: ${["example-1"].id}
/// ```
///
///
///
/// ### Global Virtual Network Peering)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const location = config.getObject<any>("location") || [
///     "uksouth",
///     "southeastasia",
/// ];
/// const vnetAddressSpace = config.getObject<any>("vnetAddressSpace") || [
///     "10.0.0.0/16",
///     "10.1.0.0/16",
/// ];
/// const example: azure.core.ResourceGroup[] = [];
/// for (const range = {value: 0}; range.value < location.length; range.value++) {
///     example.push(new azure.core.ResourceGroup(`example-${range.value}`, {
///         name: `rg-global-vnet-peering-${range.value}`,
///         location: location[range.value],
///     }));
/// }
/// const vnet: azure.network.VirtualNetwork[] = [];
/// for (const range = {value: 0}; range.value < location.length; range.value++) {
///     vnet.push(new azure.network.VirtualNetwork(`vnet-${range.value}`, {
///         name: `vnet-${range.value}`,
///         resourceGroupName: example.map(__item => __item.name)[range.value],
///         addressSpaces: [vnetAddressSpace[range.value]],
///         location: example.map(__item => __item.location)[range.value],
///     }));
/// }
/// const nva: azure.network.Subnet[] = [];
/// for (const range = {value: 0}; range.value < location.length; range.value++) {
///     nva.push(new azure.network.Subnet(`nva-${range.value}`, {
///         name: "nva",
///         resourceGroupName: example.map(__item => __item.name)[range.value],
///         virtualNetworkName: vnet.map(__item => __item.name)[range.value],
///         addressPrefix: std.cidrsubnet({
///             input: vnet[range.value].addressSpace[range.value],
///             newbits: 13,
///             netnum: 0,
///         }).then(invoke => invoke.result),
///     }));
/// }
/// // enable global peering between the two virtual network
/// const peering: azure.network.VirtualNetworkPeering[] = [];
/// for (const range = {value: 0}; range.value < location.length; range.value++) {
///     peering.push(new azure.network.VirtualNetworkPeering(`peering-${range.value}`, {
///         name: vnet.map(__item => __item.name)[1 - range.value].apply(names => `peering-to-${names}`),
///         resourceGroupName: example.map(__item => __item.name)[range.value],
///         virtualNetworkName: vnet.map(__item => __item.name)[range.value],
///         remoteVirtualNetworkId: vnet.map(__item => __item.id)[1 - range.value],
///         allowVirtualNetworkAccess: true,
///         allowForwardedTraffic: true,
///         allowGatewayTransit: false,
///     }));
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// location = config.get_object("location")
/// if location is None:
///     location = [
///         "uksouth",
///         "southeastasia",
///     ]
/// vnet_address_space = config.get_object("vnetAddressSpace")
/// if vnet_address_space is None:
///     vnet_address_space = [
///         "10.0.0.0/16",
///         "10.1.0.0/16",
///     ]
/// example = []
/// for range in [{"value": i} for i in range(0, len(location))]:
///     example.append(azure.core.ResourceGroup(f"example-{range['value']}",
///         name=f"rg-global-vnet-peering-{range['value']}",
///         location=location[range["value"]]))
/// vnet = []
/// for range in [{"value": i} for i in range(0, len(location))]:
///     vnet.append(azure.network.VirtualNetwork(f"vnet-{range['value']}",
///         name=f"vnet-{range['value']}",
///         resource_group_name=[__item.name for __item in example][range["value"]],
///         address_spaces=[vnet_address_space[range["value"]]],
///         location=[__item.location for __item in example][range["value"]]))
/// nva = []
/// for range in [{"value": i} for i in range(0, len(location))]:
///     nva.append(azure.network.Subnet(f"nva-{range['value']}",
///         name="nva",
///         resource_group_name=[__item.name for __item in example][range["value"]],
///         virtual_network_name=[__item.name for __item in vnet][range["value"]],
///         address_prefix=std.cidrsubnet(input=vnet[range["value"]].address_space[range["value"]],
///             newbits=13,
///             netnum=0).result))
/// # enable global peering between the two virtual network
/// peering = []
/// for range in [{"value": i} for i in range(0, len(location))]:
///     peering.append(azure.network.VirtualNetworkPeering(f"peering-{range['value']}",
///         name=[__item.name for __item in vnet][1 - range["value"]].apply(lambda names: f"peering-to-{names}"),
///         resource_group_name=[__item.name for __item in example][range["value"]],
///         virtual_network_name=[__item.name for __item in vnet][range["value"]],
///         remote_virtual_network_id=[__item.id for __item in vnet][1 - range["value"]],
///         allow_virtual_network_access=True,
///         allow_forwarded_traffic=True,
///         allow_gateway_transit=False))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var location = config.GetObject<dynamic>("location") ?? new[]
///     {
///         "uksouth",
///         "southeastasia",
///     };
///     var vnetAddressSpace = config.GetObject<dynamic>("vnetAddressSpace") ?? new[]
///     {
///         "10.0.0.0/16",
///         "10.1.0.0/16",
///     };
///     var example = new List<Azure.Core.ResourceGroup>();
///     for (var rangeIndex = 0; rangeIndex < location.Length; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         example.Add(new Azure.Core.ResourceGroup($"example-{range.Value}", new()
///         {
///             Name = $"rg-global-vnet-peering-{range.Value}",
///             Location = location[range.Value],
///         }));
///     }
///     var vnet = new List<Azure.Network.VirtualNetwork>();
///     for (var rangeIndex = 0; rangeIndex < location.Length; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vnet.Add(new Azure.Network.VirtualNetwork($"vnet-{range.Value}", new()
///         {
///             Name = $"vnet-{range.Value}",
///             ResourceGroupName = example.Select(__item => __item.Name).ToList()[range.Value],
///             AddressSpaces = new[]
///             {
///                 vnetAddressSpace[range.Value],
///             },
///             Location = example.Select(__item => __item.Location).ToList()[range.Value],
///         }));
///     }
///     var nva = new List<Azure.Network.Subnet>();
///     for (var rangeIndex = 0; rangeIndex < location.Length; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         nva.Add(new Azure.Network.Subnet($"nva-{range.Value}", new()
///         {
///             Name = "nva",
///             ResourceGroupName = example.Select(__item => __item.Name).ToList()[range.Value],
///             VirtualNetworkName = vnet.Select(__item => __item.Name).ToList()[range.Value],
///             AddressPrefix = Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = vnet[range.Value].AddressSpace[range.Value],
///                 Newbits = 13,
///                 Netnum = 0,
///             }).Apply(invoke => invoke.Result),
///         }));
///     }
///     // enable global peering between the two virtual network
///     var peering = new List<Azure.Network.VirtualNetworkPeering>();
///     for (var rangeIndex = 0; rangeIndex < location.Length; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         peering.Add(new Azure.Network.VirtualNetworkPeering($"peering-{range.Value}", new()
///         {
///             Name = vnet.Select(__item => __item.Name).ToList()[1 - range.Value].Apply(names => $"peering-to-{names}"),
///             ResourceGroupName = example.Select(__item => __item.Name).ToList()[range.Value],
///             VirtualNetworkName = vnet.Select(__item => __item.Name).ToList()[range.Value],
///             RemoteVirtualNetworkId = vnet.Select(__item => __item.Id).ToList()[1 - range.Value],
///             AllowVirtualNetworkAccess = true,
///             AllowForwardedTraffic = true,
///             AllowGatewayTransit = false,
///         }));
///     }
/// });
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
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.azure.network.VirtualNetworkPeering;
/// import com.pulumi.azure.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var config = ctx.config();
///         final var location = config.get("location").orElse(List.of(
///             "uksouth",
///             "southeastasia"));
///         final var vnetAddressSpace = config.get("vnetAddressSpace").orElse(List.of(
///             "10.0.0.0/16",
///             "10.1.0.0/16"));
///         for (var i = 0; i < location.length(); i++) {
///             new ResourceGroup("example-" + i, ResourceGroupArgs.builder()
///                 .name(String.format("rg-global-vnet-peering-%s", range.value()))
///                 .location(location[range.value()])
///                 .build());
///
///
/// }
///         for (var i = 0; i < location.length(); i++) {
///             new VirtualNetwork("vnet-" + i, VirtualNetworkArgs.builder()
///                 .name(String.format("vnet-%s", range.value()))
///                 .resourceGroupName(example.stream().map(element -> element.name()).collect(toList())[range.value()])
///                 .addressSpaces(vnetAddressSpace[range.value()])
///                 .location(example.stream().map(element -> element.location()).collect(toList())[range.value()])
///                 .build());
///
///
/// }
///         for (var i = 0; i < location.length(); i++) {
///             new Subnet("nva-" + i, SubnetArgs.builder()
///                 .name("nva")
///                 .resourceGroupName(example.stream().map(element -> element.name()).collect(toList())[range.value()])
///                 .virtualNetworkName(vnet.stream().map(element -> element.name()).collect(toList())[range.value()])
///                 .addressPrefix(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(vnet[range.value()].addressSpace()[range.value()])
///                     .newbits(13)
///                     .netnum(0)
///                     .build()).result())
///                 .build());
///
///
/// }
///         // enable global peering between the two virtual network
///         for (var i = 0; i < location.length(); i++) {
///             new VirtualNetworkPeering("peering-" + i, VirtualNetworkPeeringArgs.builder()
///                 .name(vnet.stream().map(element -> element.name()).collect(toList())[1 - range.value()].applyValue(_names -> String.format("peering-to-%s", _names)))
///                 .resourceGroupName(example.stream().map(element -> element.name()).collect(toList())[range.value()])
///                 .virtualNetworkName(vnet.stream().map(element -> element.name()).collect(toList())[range.value()])
///                 .remoteVirtualNetworkId(vnet.stream().map(element -> element.id()).collect(toList())[1 - range.value()])
///                 .allowVirtualNetworkAccess(true)
///                 .allowForwardedTraffic(true)
///                 .allowGatewayTransit(false)
///                 .build());
///
///
/// }
///     }
/// }
/// ```
///
///
///
///
/// ### Triggers)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "peeredvnets-rg",
///     location: "West Europe",
/// });
/// const example_1 = new azure.network.VirtualNetwork("example-1", {
///     name: "peternetwork1",
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.1.0/24"],
///     location: example.location,
/// });
/// const example_2 = new azure.network.VirtualNetwork("example-2", {
///     name: "peternetwork2",
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.2.0/24"],
///     location: example.location,
/// });
/// const example_1VirtualNetworkPeering = new azure.network.VirtualNetworkPeering("example-1", {
///     name: "peer1to2",
///     resourceGroupName: example.name,
///     virtualNetworkName: example_1.name,
///     remoteVirtualNetworkId: example_2.id,
///     triggers: {
///         remote_address_space: example_2.addressSpaces.apply(addressSpaces => std.joinOutput({
///             separator: ",",
///             input: addressSpaces,
///         })).apply(invoke => invoke.result),
///     },
/// });
/// const example_2VirtualNetworkPeering = new azure.network.VirtualNetworkPeering("example-2", {
///     name: "peer2to1",
///     resourceGroupName: example.name,
///     virtualNetworkName: example_2.name,
///     remoteVirtualNetworkId: example_1.id,
///     triggers: {
///         remote_address_space: example_1.addressSpaces.apply(addressSpaces => std.joinOutput({
///             separator: ",",
///             input: addressSpaces,
///         })).apply(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="peeredvnets-rg",
///     location="West Europe")
/// example_1 = azure.network.VirtualNetwork("example-1",
///     name="peternetwork1",
///     resource_group_name=example.name,
///     address_spaces=["10.0.1.0/24"],
///     location=example.location)
/// example_2 = azure.network.VirtualNetwork("example-2",
///     name="peternetwork2",
///     resource_group_name=example.name,
///     address_spaces=["10.0.2.0/24"],
///     location=example.location)
/// example_1_virtual_network_peering = azure.network.VirtualNetworkPeering("example-1",
///     name="peer1to2",
///     resource_group_name=example.name,
///     virtual_network_name=example_1.name,
///     remote_virtual_network_id=example_2.id,
///     triggers={
///         "remote_address_space": example_2.address_spaces.apply(lambda address_spaces: std.join_output(separator=",",
///             input=address_spaces)).apply(lambda invoke: invoke.result),
///     })
/// example_2_virtual_network_peering = azure.network.VirtualNetworkPeering("example-2",
///     name="peer2to1",
///     resource_group_name=example.name,
///     virtual_network_name=example_2.name,
///     remote_virtual_network_id=example_1.id,
///     triggers={
///         "remote_address_space": example_1.address_spaces.apply(lambda address_spaces: std.join_output(separator=",",
///             input=address_spaces)).apply(lambda invoke: invoke.result),
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "peeredvnets-rg",
///         Location = "West Europe",
///     });
///
///     var example_1 = new Azure.Network.VirtualNetwork("example-1", new()
///     {
///         Name = "peternetwork1",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.1.0/24",
///         },
///         Location = example.Location,
///     });
///
///     var example_2 = new Azure.Network.VirtualNetwork("example-2", new()
///     {
///         Name = "peternetwork2",
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.2.0/24",
///         },
///         Location = example.Location,
///     });
///
///     var example_1VirtualNetworkPeering = new Azure.Network.VirtualNetworkPeering("example-1", new()
///     {
///         Name = "peer1to2",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = example_1.Name,
///         RemoteVirtualNetworkId = example_2.Id,
///         Triggers =
///         {
///             { "remote_address_space", example_2.AddressSpaces.Apply(addressSpaces => Std.Join.Invoke(new()
///             {
///                 Separator = ",",
///                 Input = addressSpaces,
///             })).Apply(invoke => invoke.Result) },
///         },
///     });
///
///     var example_2VirtualNetworkPeering = new Azure.Network.VirtualNetworkPeering("example-2", new()
///     {
///         Name = "peer2to1",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = example_2.Name,
///         RemoteVirtualNetworkId = example_1.Id,
///         Triggers =
///         {
///             { "remote_address_space", example_1.AddressSpaces.Apply(addressSpaces => Std.Join.Invoke(new()
///             {
///                 Separator = ",",
///                 Input = addressSpaces,
///             })).Apply(invoke => invoke.Result) },
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// Name: pulumi.String("peeredvnets-rg"),
/// Location: pulumi.String("West Europe"),
/// })
/// if err != nil {
/// return err
/// }
/// example_1, err := network.NewVirtualNetwork(ctx, "example-1", &network.VirtualNetworkArgs{
/// Name: pulumi.String("peternetwork1"),
/// ResourceGroupName: example.Name,
/// AddressSpaces: pulumi.StringArray{
/// pulumi.String("10.0.1.0/24"),
/// },
/// Location: example.Location,
/// })
/// if err != nil {
/// return err
/// }
/// example_2, err := network.NewVirtualNetwork(ctx, "example-2", &network.VirtualNetworkArgs{
/// Name: pulumi.String("peternetwork2"),
/// ResourceGroupName: example.Name,
/// AddressSpaces: pulumi.StringArray{
/// pulumi.String("10.0.2.0/24"),
/// },
/// Location: example.Location,
/// })
/// if err != nil {
/// return err
/// }
/// invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// Separator: ",",
/// Input: addressSpaces,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = network.NewVirtualNetworkPeering(ctx, "example-1", &network.VirtualNetworkPeeringArgs{
/// Name: pulumi.String("peer1to2"),
/// ResourceGroupName: example.Name,
/// VirtualNetworkName: example_1.Name,
/// RemoteVirtualNetworkId: example_2.ID(),
/// Triggers: pulumi.StringMap{
/// "remote_address_space": pulumi.String(example_2.AddressSpaces.ApplyT(func(addressSpaces interface{}) (std.JoinResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.JoinResultOutput).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// invokeJoin1, err := std.Join(ctx, &std.JoinArgs{
/// Separator: ",",
/// Input: addressSpaces,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = network.NewVirtualNetworkPeering(ctx, "example-2", &network.VirtualNetworkPeeringArgs{
/// Name: pulumi.String("peer2to1"),
/// ResourceGroupName: example.Name,
/// VirtualNetworkName: example_2.Name,
/// RemoteVirtualNetworkId: example_1.ID(),
/// Triggers: pulumi.StringMap{
/// "remote_address_space": pulumi.String(example_1.AddressSpaces.ApplyT(func(addressSpaces interface{}) (std.JoinResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.JoinResultOutput).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.azure.network.VirtualNetworkPeering;
/// import com.pulumi.azure.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///             .name("peeredvnets-rg")
///             .location("West Europe")
///             .build());
///
///         var example_1 = new VirtualNetwork("example-1", VirtualNetworkArgs.builder()
///             .name("peternetwork1")
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.1.0/24")
///             .location(example.location())
///             .build());
///
///         var example_2 = new VirtualNetwork("example-2", VirtualNetworkArgs.builder()
///             .name("peternetwork2")
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.2.0/24")
///             .location(example.location())
///             .build());
///
///         var example_1VirtualNetworkPeering = new VirtualNetworkPeering("example-1VirtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .name("peer1to2")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(example_1.name())
///             .remoteVirtualNetworkId(example_2.id())
///             .triggers(Map.of("remote_address_space", example_2.addressSpaces().applyValue(_addressSpaces -> StdFunctions.join(JoinArgs.builder()
///                 .separator(",")
///                 .input(_addressSpaces)
///                 .build())).applyValue(_invoke -> _invoke.result())))
///             .build());
///
///         var example_2VirtualNetworkPeering = new VirtualNetworkPeering("example-2VirtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .name("peer2to1")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(example_2.name())
///             .remoteVirtualNetworkId(example_1.id())
///             .triggers(Map.of("remote_address_space", example_1.addressSpaces().applyValue(_addressSpaces -> StdFunctions.join(JoinArgs.builder()
///                 .separator(",")
///                 .input(_addressSpaces)
///                 .build())).applyValue(_invoke -> _invoke.result())))
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
///       name: peeredvnets-rg
///       location: West Europe
///   example-1:
///     type: azure:network:VirtualNetwork
///     properties:
///       name: peternetwork1
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.1.0/24
///       location: ${example.location}
///   example-2:
///     type: azure:network:VirtualNetwork
///     properties:
///       name: peternetwork2
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.2.0/24
///       location: ${example.location}
///   example-1VirtualNetworkPeering:
///     type: azure:network:VirtualNetworkPeering
///     name: example-1
///     properties:
///       name: peer1to2
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${["example-1"].name}
///       remoteVirtualNetworkId: ${["example-2"].id}
///       triggers:
///         remote_address_space:
///           fn::invoke:
///             function: std:join
///             arguments:
///               separator: ','
///               input: ${["example-2"].addressSpaces}
///             return: result
///   example-2VirtualNetworkPeering:
///     type: azure:network:VirtualNetworkPeering
///     name: example-2
///     properties:
///       name: peer2to1
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${["example-2"].name}
///       remoteVirtualNetworkId: ${["example-1"].id}
///       triggers:
///         remote_address_space:
///           fn::invoke:
///             function: std:join
///             arguments:
///               separator: ','
///               input: ${["example-1"].addressSpaces}
///             return: result
/// ```
///
///
/// ## Note
///
/// Virtual Network peerings cannot be created, updated or deleted concurrently.
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Virtual Network Peerings can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualNetworkPeering:VirtualNetworkPeering examplePeering /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/virtualNetworks/myvnet1/virtualNetworkPeerings/myvnet1peering
/// ```
class VirtualNetworkPeering extends pulumi.CustomResource {
  /// Controls if forwarded traffic from VMs in the remote virtual network is allowed. Defaults to `false`.
  late final pulumi.Output<bool?> allowForwardedTraffic;
  /// Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network. Defaults to `false`.
  late final pulumi.Output<bool?> allowGatewayTransit;
  /// Controls if the traffic from the local virtual network can reach the remote virtual network. Defaults to `true`.
  late final pulumi.Output<bool?> allowVirtualNetworkAccess;
  /// A list of local Subnet names that are Subnet peered with remote Virtual Network.
  late final pulumi.Output<List<String>?> localSubnetNames;
  /// The name of the virtual network peering. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies whether only IPv6 address space is peered for Subnet peering. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> onlyIpv6PeeringEnabled;
  /// Specifies whether complete Virtual Network address space is peered. Defaults to `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> peerCompleteVirtualNetworksEnabled;
  /// A list of remote Subnet names from remote Virtual Network that are Subnet peered.
  late final pulumi.Output<List<String>?> remoteSubnetNames;
  /// The full Azure resource ID of the remote virtual network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> remoteVirtualNetworkId;
  /// The name of the resource group in which to create the virtual network peering. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of key values pairs that can be used to sync network routes from the remote virtual network to the local virtual network. See the trigger example for an example on how to set it up.
  late final pulumi.Output<Map<String, String>?> triggers;
  /// Controls if remote gateways can be used on the local virtual network. If the flag is set to `true`, and `allow_gateway_transit` on the remote peering is also `true`, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to `true`. This flag cannot be set if virtual network already has a gateway. Defaults to `false`.
  ///
  /// > **Note:** `use_remote_gateways` must be set to `false` if using Global Virtual Network Peerings.
  late final pulumi.Output<bool?> useRemoteGateways;
  /// The name of the virtual network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualNetworkName;

  /// Creates a new [VirtualNetworkPeering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkPeering]. {@macro pulumi_network_virtual_network_peering_virtual_network_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkPeering(
    String name, {
    VirtualNetworkPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualNetworkPeering:VirtualNetworkPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowForwardedTraffic = registerOutput<bool?>('allowForwardedTraffic');
    this.allowGatewayTransit = registerOutput<bool?>('allowGatewayTransit');
    this.allowVirtualNetworkAccess = registerOutput<bool?>('allowVirtualNetworkAccess');
    this.localSubnetNames = registerOutput<List<String>?>('localSubnetNames');
    this.name = registerOutput<String>('name');
    this.onlyIpv6PeeringEnabled = registerOutput<bool?>('onlyIpv6PeeringEnabled');
    this.peerCompleteVirtualNetworksEnabled = registerOutput<bool?>('peerCompleteVirtualNetworksEnabled');
    this.remoteSubnetNames = registerOutput<List<String>?>('remoteSubnetNames');
    this.remoteVirtualNetworkId = registerOutput<String>('remoteVirtualNetworkId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
    this.useRemoteGateways = registerOutput<bool?>('useRemoteGateways');
    this.virtualNetworkName = registerOutput<String>('virtualNetworkName');
  }

  /// Gets an existing [VirtualNetworkPeering] resource's state with the given [name] and [id].
  static VirtualNetworkPeering get(
    String name,
    pulumi.Input<String> id, {
    VirtualNetworkPeeringState? state,
  }) {
    return VirtualNetworkPeering._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualNetworkPeering._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualNetworkPeering:VirtualNetworkPeering',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowForwardedTraffic = registerOutput<bool?>('allowForwardedTraffic');
    this.allowGatewayTransit = registerOutput<bool?>('allowGatewayTransit');
    this.allowVirtualNetworkAccess = registerOutput<bool?>('allowVirtualNetworkAccess');
    this.localSubnetNames = registerOutput<List<String>?>('localSubnetNames');
    this.name = registerOutput<String>('name');
    this.onlyIpv6PeeringEnabled = registerOutput<bool?>('onlyIpv6PeeringEnabled');
    this.peerCompleteVirtualNetworksEnabled = registerOutput<bool?>('peerCompleteVirtualNetworksEnabled');
    this.remoteSubnetNames = registerOutput<List<String>?>('remoteSubnetNames');
    this.remoteVirtualNetworkId = registerOutput<String>('remoteVirtualNetworkId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.triggers = registerOutput<Map<String, String>?>('triggers');
    this.useRemoteGateways = registerOutput<bool?>('useRemoteGateways');
    this.virtualNetworkName = registerOutput<String>('virtualNetworkName');
  }
}
