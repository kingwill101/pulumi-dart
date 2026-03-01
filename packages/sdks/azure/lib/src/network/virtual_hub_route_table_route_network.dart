import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_table_route_args.dart';
import 'virtual_hub_route_table_route_state.dart';

/// Manages a Route in a Virtual Hub Route Table.
///
/// > **Note:** Route table routes can managed with this resource, or in-line with the virtual_hub_route_table resource. Using both is not supported.
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
///     name: "example-vnet",
///     addressSpaces: ["10.5.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("example", {
///     name: "example-nsg",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "examplesubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.5.1.0/24"],
/// });
/// const exampleSubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("example", {
///     subnetId: exampleSubnet.id,
///     networkSecurityGroupId: exampleNetworkSecurityGroup.id,
/// });
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-vwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-vhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.2.0/24",
/// });
/// const exampleVirtualHubRouteTable = new azure.network.VirtualHubRouteTable("example", {
///     name: "example-vhubroutetable",
///     virtualHubId: exampleVirtualHub.id,
///     labels: ["label1"],
/// });
/// const exampleVirtualHubConnection = new azure.network.VirtualHubConnection("example", {
///     name: "example-vhubconn",
///     virtualHubId: exampleVirtualHub.id,
///     remoteVirtualNetworkId: exampleVirtualNetwork.id,
///     routing: {
///         associatedRouteTableId: exampleVirtualHubRouteTable.id,
///     },
/// });
/// const exampleVirtualHubRouteTableRoute = new azure.network.VirtualHubRouteTableRoute("example", {
///     routeTableId: exampleVirtualHubRouteTable.id,
///     name: "example-route",
///     destinationsType: "CIDR",
///     destinations: ["10.0.0.0/16"],
///     nextHopType: "ResourceId",
///     nextHop: exampleVirtualHubConnection.id,
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
///     name="example-vnet",
///     address_spaces=["10.5.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_network_security_group = azure.network.NetworkSecurityGroup("example",
///     name="example-nsg",
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="examplesubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.5.1.0/24"])
/// example_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("example",
///     subnet_id=example_subnet.id,
///     network_security_group_id=example_network_security_group.id)
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-vwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-vhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.2.0/24")
/// example_virtual_hub_route_table = azure.network.VirtualHubRouteTable("example",
///     name="example-vhubroutetable",
///     virtual_hub_id=example_virtual_hub.id,
///     labels=["label1"])
/// example_virtual_hub_connection = azure.network.VirtualHubConnection("example",
///     name="example-vhubconn",
///     virtual_hub_id=example_virtual_hub.id,
///     remote_virtual_network_id=example_virtual_network.id,
///     routing={
///         "associated_route_table_id": example_virtual_hub_route_table.id,
///     })
/// example_virtual_hub_route_table_route = azure.network.VirtualHubRouteTableRoute("example",
///     route_table_id=example_virtual_hub_route_table.id,
///     name="example-route",
///     destinations_type="CIDR",
///     destinations=["10.0.0.0/16"],
///     next_hop_type="ResourceId",
///     next_hop=example_virtual_hub_connection.id)
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
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.5.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("example", new()
///     {
///         Name = "example-nsg",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "examplesubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.5.1.0/24",
///         },
///     });
///
///     var exampleSubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("example", new()
///     {
///         SubnetId = exampleSubnet.Id,
///         NetworkSecurityGroupId = exampleNetworkSecurityGroup.Id,
///     });
///
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-vwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-vhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.2.0/24",
///     });
///
///     var exampleVirtualHubRouteTable = new Azure.Network.VirtualHubRouteTable("example", new()
///     {
///         Name = "example-vhubroutetable",
///         VirtualHubId = exampleVirtualHub.Id,
///         Labels = new[]
///         {
///             "label1",
///         },
///     });
///
///     var exampleVirtualHubConnection = new Azure.Network.VirtualHubConnection("example", new()
///     {
///         Name = "example-vhubconn",
///         VirtualHubId = exampleVirtualHub.Id,
///         RemoteVirtualNetworkId = exampleVirtualNetwork.Id,
///         Routing = new Azure.Network.Inputs.VirtualHubConnectionRoutingArgs
///         {
///             AssociatedRouteTableId = exampleVirtualHubRouteTable.Id,
///         },
///     });
///
///     var exampleVirtualHubRouteTableRoute = new Azure.Network.VirtualHubRouteTableRoute("example", new()
///     {
///         RouteTableId = exampleVirtualHubRouteTable.Id,
///         Name = "example-route",
///         DestinationsType = "CIDR",
///         Destinations = new[]
///         {
///             "10.0.0.0/16",
///         },
///         NextHopType = "ResourceId",
///         NextHop = exampleVirtualHubConnection.Id,
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
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.5.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "example", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String("example-nsg"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("examplesubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.5.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnetNetworkSecurityGroupAssociation(ctx, "example", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// 			SubnetId:               exampleSubnet.ID(),
/// 			NetworkSecurityGroupId: exampleNetworkSecurityGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-vwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-vhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHubRouteTable, err := network.NewVirtualHubRouteTable(ctx, "example", &network.VirtualHubRouteTableArgs{
/// 			Name:         pulumi.String("example-vhubroutetable"),
/// 			VirtualHubId: exampleVirtualHub.ID(),
/// 			Labels: pulumi.StringArray{
/// 				pulumi.String("label1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHubConnection, err := network.NewVirtualHubConnection(ctx, "example", &network.VirtualHubConnectionArgs{
/// 			Name:                   pulumi.String("example-vhubconn"),
/// 			VirtualHubId:           exampleVirtualHub.ID(),
/// 			RemoteVirtualNetworkId: exampleVirtualNetwork.ID(),
/// 			Routing: &network.VirtualHubConnectionRoutingArgs{
/// 				AssociatedRouteTableId: exampleVirtualHubRouteTable.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualHubRouteTableRoute(ctx, "example", &network.VirtualHubRouteTableRouteArgs{
/// 			RouteTableId:     exampleVirtualHubRouteTable.ID(),
/// 			Name:             pulumi.String("example-route"),
/// 			DestinationsType: pulumi.String("CIDR"),
/// 			Destinations: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			NextHopType: pulumi.String("ResourceId"),
/// 			NextHop:     exampleVirtualHubConnection.ID(),
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
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociation;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociationArgs;
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.VirtualHubRouteTable;
/// import com.pulumi.azure.network.VirtualHubRouteTableArgs;
/// import com.pulumi.azure.network.VirtualHubConnection;
/// import com.pulumi.azure.network.VirtualHubConnectionArgs;
/// import com.pulumi.azure.network.inputs.VirtualHubConnectionRoutingArgs;
/// import com.pulumi.azure.network.VirtualHubRouteTableRoute;
/// import com.pulumi.azure.network.VirtualHubRouteTableRouteArgs;
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
///             .name("example-vnet")
///             .addressSpaces("10.5.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleNetworkSecurityGroup = new NetworkSecurityGroup("exampleNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("example-nsg")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("examplesubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.5.1.0/24")
///             .build());
///
///         var exampleSubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("exampleSubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(exampleSubnet.id())
///             .networkSecurityGroupId(exampleNetworkSecurityGroup.id())
///             .build());
///
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-vwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-vhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.2.0/24")
///             .build());
///
///         var exampleVirtualHubRouteTable = new VirtualHubRouteTable("exampleVirtualHubRouteTable", VirtualHubRouteTableArgs.builder()
///             .name("example-vhubroutetable")
///             .virtualHubId(exampleVirtualHub.id())
///             .labels("label1")
///             .build());
///
///         var exampleVirtualHubConnection = new VirtualHubConnection("exampleVirtualHubConnection", VirtualHubConnectionArgs.builder()
///             .name("example-vhubconn")
///             .virtualHubId(exampleVirtualHub.id())
///             .remoteVirtualNetworkId(exampleVirtualNetwork.id())
///             .routing(VirtualHubConnectionRoutingArgs.builder()
///                 .associatedRouteTableId(exampleVirtualHubRouteTable.id())
///                 .build())
///             .build());
///
///         var exampleVirtualHubRouteTableRoute = new VirtualHubRouteTableRoute("exampleVirtualHubRouteTableRoute", VirtualHubRouteTableRouteArgs.builder()
///             .routeTableId(exampleVirtualHubRouteTable.id())
///             .name("example-route")
///             .destinationsType("CIDR")
///             .destinations("10.0.0.0/16")
///             .nextHopType("ResourceId")
///             .nextHop(exampleVirtualHubConnection.id())
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
///       name: example-vnet
///       addressSpaces:
///         - 10.5.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: example
///     properties:
///       name: example-nsg
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: examplesubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.5.1.0/24
///   exampleSubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: example
///     properties:
///       subnetId: ${exampleSubnet.id}
///       networkSecurityGroupId: ${exampleNetworkSecurityGroup.id}
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-vwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-vhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.2.0/24
///   exampleVirtualHubConnection:
///     type: azure:network:VirtualHubConnection
///     name: example
///     properties:
///       name: example-vhubconn
///       virtualHubId: ${exampleVirtualHub.id}
///       remoteVirtualNetworkId: ${exampleVirtualNetwork.id}
///       routing:
///         associatedRouteTableId: ${exampleVirtualHubRouteTable.id}
///   exampleVirtualHubRouteTable:
///     type: azure:network:VirtualHubRouteTable
///     name: example
///     properties:
///       name: example-vhubroutetable
///       virtualHubId: ${exampleVirtualHub.id}
///       labels:
///         - label1
///   exampleVirtualHubRouteTableRoute:
///     type: azure:network:VirtualHubRouteTableRoute
///     name: example
///     properties:
///       routeTableId: ${exampleVirtualHubRouteTable.id}
///       name: example-route
///       destinationsType: CIDR
///       destinations:
///         - 10.0.0.0/16
///       nextHopType: ResourceId
///       nextHop: ${exampleVirtualHubConnection.id}
/// ```
///
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
/// Virtual Hub Route Table Routes can be imported using `<Route Table Resource Id>/routes/<Route Name>`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualHubRouteTableRoute:VirtualHubRouteTableRoute example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/routeTable1/routes/routeName
/// ```
class VirtualHubRouteTableRouteNetwork extends pulumi.CustomResource {
  /// A list of destination addresses for this route.
  late final pulumi.Output<List<String>> destinations;
  /// The type of destinations. Possible values are `CIDR`, `ResourceId` and `Service`.
  late final pulumi.Output<String> destinationsType;
  /// The name which should be used for this route. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The next hop's resource ID.
  late final pulumi.Output<String> nextHop;
  /// The type of next hop. Currently the only possible value is `ResourceId`. Defaults to `ResourceId`.
  late final pulumi.Output<String?> nextHopType;
  /// The ID of the Virtual Hub Route Table to link this route to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> routeTableId;

  /// Creates a new [VirtualHubRouteTableRouteNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHubRouteTableRouteNetwork]. {@macro pulumi_network_virtual_hub_route_table_route_virtual_hub_route_table_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHubRouteTableRouteNetwork(
    String name, {
    VirtualHubRouteTableRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualHubRouteTableRoute:VirtualHubRouteTableRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destinations = registerOutput<List<String>>('destinations');
    this.destinationsType = registerOutput<String>('destinationsType');
    this.name = registerOutput<String>('name');
    this.nextHop = registerOutput<String>('nextHop');
    this.nextHopType = registerOutput<String?>('nextHopType');
    this.routeTableId = registerOutput<String>('routeTableId');
  }

  /// Gets an existing [VirtualHubRouteTableRouteNetwork] resource's state with the given [name] and [id].
  static VirtualHubRouteTableRouteNetwork get(
    String name,
    pulumi.Input<String> id, {
    VirtualHubRouteTableRouteState? state,
  }) {
    return VirtualHubRouteTableRouteNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualHubRouteTableRouteNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualHubRouteTableRoute:VirtualHubRouteTableRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destinations = registerOutput<List<String>>('destinations');
    this.destinationsType = registerOutput<String>('destinationsType');
    this.name = registerOutput<String>('name');
    this.nextHop = registerOutput<String>('nextHop');
    this.nextHopType = registerOutput<String?>('nextHopType');
    this.routeTableId = registerOutput<String>('routeTableId');
  }
}
