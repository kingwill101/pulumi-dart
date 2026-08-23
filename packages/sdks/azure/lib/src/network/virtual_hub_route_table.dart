import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_table_args.dart';
import 'virtual_hub_route_table_state.dart';

/// Manages a Virtual Hub Route Table.
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
/// const exampleVirtualHubConnection = new azure.network.VirtualHubConnection("example", {
///     name: "example-vhubconn",
///     virtualHubId: exampleVirtualHub.id,
///     remoteVirtualNetworkId: exampleVirtualNetwork.id,
/// });
/// const exampleVirtualHubRouteTable = new azure.network.VirtualHubRouteTable("example", {
///     name: "example-vhubroutetable",
///     virtualHubId: exampleVirtualHub.id,
///     labels: ["label1"],
///     routes: [{
///         name: "example-route",
///         destinationsType: "CIDR",
///         destinations: ["10.0.0.0/16"],
///         nextHopType: "ResourceId",
///         nextHop: exampleVirtualHubConnection.id,
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
/// example_virtual_hub_connection = azure.network.VirtualHubConnection("example",
///     name="example-vhubconn",
///     virtual_hub_id=example_virtual_hub.id,
///     remote_virtual_network_id=example_virtual_network.id)
/// example_virtual_hub_route_table = azure.network.VirtualHubRouteTable("example",
///     name="example-vhubroutetable",
///     virtual_hub_id=example_virtual_hub.id,
///     labels=["label1"],
///     routes=[{
///         "name": "example-route",
///         "destinations_type": "CIDR",
///         "destinations": ["10.0.0.0/16"],
///         "next_hop_type": "ResourceId",
///         "next_hop": example_virtual_hub_connection.id,
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
///     var exampleVirtualHubConnection = new Azure.Network.VirtualHubConnection("example", new()
///     {
///         Name = "example-vhubconn",
///         VirtualHubId = exampleVirtualHub.Id,
///         RemoteVirtualNetworkId = exampleVirtualNetwork.Id,
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
///         Routes = new[]
///         {
///             new Azure.Network.Inputs.VirtualHubRouteTableRouteArgs
///             {
///                 Name = "example-route",
///                 DestinationsType = "CIDR",
///                 Destinations = new[]
///                 {
///                     "10.0.0.0/16",
///                 },
///                 NextHopType = "ResourceId",
///                 NextHop = exampleVirtualHubConnection.Id,
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
/// 		exampleVirtualHubConnection, err := network.NewVirtualHubConnection(ctx, "example", &network.VirtualHubConnectionArgs{
/// 			Name:                   pulumi.String("example-vhubconn"),
/// 			VirtualHubId:           exampleVirtualHub.ID(),
/// 			RemoteVirtualNetworkId: exampleVirtualNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualHubRouteTable(ctx, "example", &network.VirtualHubRouteTableArgs{
/// 			Name:         pulumi.String("example-vhubroutetable"),
/// 			VirtualHubId: exampleVirtualHub.ID(),
/// 			Labels: pulumi.StringArray{
/// 				pulumi.String("label1"),
/// 			},
/// 			Routes: network.VirtualHubRouteTableRouteTypeArray{
/// 				&network.VirtualHubRouteTableRouteTypeArgs{
/// 					Name:             pulumi.String("example-route"),
/// 					DestinationsType: pulumi.String("CIDR"),
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("10.0.0.0/16"),
/// 					},
/// 					NextHopType: pulumi.String("ResourceId"),
/// 					NextHop:     exampleVirtualHubConnection.ID(),
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
///   name                = "example-vnet"
///   address_spaces      = ["10.5.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_networksecuritygroup" "example" {
///   name                = "example-nsg"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "examplesubnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.5.1.0/24"]
/// }
/// resource "azure_network_subnetnetworksecuritygroupassociation" "example" {
///   subnet_id                 = azure_network_subnet.example.id
///   network_security_group_id = azure_network_networksecuritygroup.example.id
/// }
/// resource "azure_network_virtualwan" "example" {
///   name                = "example-vwan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_network_virtualhub" "example" {
///   name                = "example-vhub"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   virtual_wan_id      = azure_network_virtualwan.example.id
///   address_prefix      = "10.0.2.0/24"
/// }
/// resource "azure_network_virtualhubconnection" "example" {
///   name                      = "example-vhubconn"
///   virtual_hub_id            = azure_network_virtualhub.example.id
///   remote_virtual_network_id = azure_network_virtualnetwork.example.id
/// }
/// resource "azure_network_virtualhubroutetable" "example" {
///   name           = "example-vhubroutetable"
///   virtual_hub_id = azure_network_virtualhub.example.id
///   labels         = ["label1"]
///   routes {
///     name              = "example-route"
///     destinations_type = "CIDR"
///     destinations      = ["10.0.0.0/16"]
///     next_hop_type     = "ResourceId"
///     next_hop          = azure_network_virtualhubconnection.example.id
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
/// import com.pulumi.azure.network.VirtualHubConnection;
/// import com.pulumi.azure.network.VirtualHubConnectionArgs;
/// import com.pulumi.azure.network.VirtualHubRouteTable;
/// import com.pulumi.azure.network.VirtualHubRouteTableArgs;
/// import com.pulumi.azure.network.inputs.VirtualHubRouteTableRouteArgs;
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
///         var exampleVirtualHubConnection = new VirtualHubConnection("exampleVirtualHubConnection", VirtualHubConnectionArgs.builder()
///             .name("example-vhubconn")
///             .virtualHubId(exampleVirtualHub.id())
///             .remoteVirtualNetworkId(exampleVirtualNetwork.id())
///             .build());
///
///         var exampleVirtualHubRouteTable = new VirtualHubRouteTable("exampleVirtualHubRouteTable", VirtualHubRouteTableArgs.builder()
///             .name("example-vhubroutetable")
///             .virtualHubId(exampleVirtualHub.id())
///             .labels("label1")
///             .routes(VirtualHubRouteTableRouteArgs.builder()
///                 .name("example-route")
///                 .destinationsType("CIDR")
///                 .destinations("10.0.0.0/16")
///                 .nextHopType("ResourceId")
///                 .nextHop(exampleVirtualHubConnection.id())
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
///   exampleVirtualHubRouteTable:
///     type: azure:network:VirtualHubRouteTable
///     name: example
///     properties:
///       name: example-vhubroutetable
///       virtualHubId: ${exampleVirtualHub.id}
///       labels:
///         - label1
///       routes:
///         - name: example-route
///           destinationsType: CIDR
///           destinations:
///             - 10.0.0.0/16
///           nextHopType: ResourceId
///           nextHop: ${exampleVirtualHubConnection.id}
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
/// Virtual Hub Route Tables can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualHubRouteTable:VirtualHubRouteTable example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/virtualHubs/virtualHub1/hubRouteTables/routeTable1
/// ```
class VirtualHubRouteTable extends pulumi.CustomResource {
  /// List of labels associated with this route table.
  late final pulumi.Output<List<String>?> labels;
  /// The name which should be used for Virtual Hub Route Table. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `route` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> routes;
  /// The ID of the Virtual Hub within which this route table should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualHubId;

  /// Creates a new [VirtualHubRouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHubRouteTable]. {@macro pulumi_network_virtual_hub_route_table_virtual_hub_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHubRouteTable(
    String name, {
    VirtualHubRouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualHubRouteTable:VirtualHubRouteTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
    virtualHubId = registerOutput<String>('virtualHubId');
  }

  /// Gets an existing [VirtualHubRouteTable] resource's state with the given [name] and [id].
  static VirtualHubRouteTable get(
    String name,
    pulumi.Input<String> id, {
    VirtualHubRouteTableState? state,
  }) {
    return VirtualHubRouteTable._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualHubRouteTable._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualHubRouteTable:VirtualHubRouteTable',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    routes = registerOutput<List<Map<String, dynamic>>>('routes');
    virtualHubId = registerOutput<String>('virtualHubId');
  }
}
