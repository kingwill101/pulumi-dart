import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_route_table_association_args.dart';
import 'subnet_route_table_association_state.dart';

/// Associates a Route Table with a Subnet within a Virtual Network.
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
///     name: "frontend",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleRouteTable = new azure.network.RouteTable("example", {
///     name: "example-routetable",
///     location: example.location,
///     resourceGroupName: example.name,
///     routes: [{
///         name: "example",
///         addressPrefix: "10.100.0.0/14",
///         nextHopType: "VirtualAppliance",
///         nextHopInIpAddress: "10.10.1.1",
///     }],
/// });
/// const exampleSubnetRouteTableAssociation = new azure.network.SubnetRouteTableAssociation("example", {
///     subnetId: exampleSubnet.id,
///     routeTableId: exampleRouteTable.id,
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
///     name="frontend",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_route_table = azure.network.RouteTable("example",
///     name="example-routetable",
///     location=example.location,
///     resource_group_name=example.name,
///     routes=[{
///         "name": "example",
///         "address_prefix": "10.100.0.0/14",
///         "next_hop_type": "VirtualAppliance",
///         "next_hop_in_ip_address": "10.10.1.1",
///     }])
/// example_subnet_route_table_association = azure.network.SubnetRouteTableAssociation("example",
///     subnet_id=example_subnet.id,
///     route_table_id=example_route_table.id)
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
///         Name = "frontend",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleRouteTable = new Azure.Network.RouteTable("example", new()
///     {
///         Name = "example-routetable",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Routes = new[]
///         {
///             new Azure.Network.Inputs.RouteTableRouteArgs
///             {
///                 Name = "example",
///                 AddressPrefix = "10.100.0.0/14",
///                 NextHopType = "VirtualAppliance",
///                 NextHopInIpAddress = "10.10.1.1",
///             },
///         },
///     });
///
///     var exampleSubnetRouteTableAssociation = new Azure.Network.SubnetRouteTableAssociation("example", new()
///     {
///         SubnetId = exampleSubnet.Id,
///         RouteTableId = exampleRouteTable.Id,
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
/// 			Name:               pulumi.String("frontend"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRouteTable, err := network.NewRouteTable(ctx, "example", &network.RouteTableArgs{
/// 			Name:              pulumi.String("example-routetable"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Routes: network.RouteTableRouteArray{
/// 				&network.RouteTableRouteArgs{
/// 					Name:               pulumi.String("example"),
/// 					AddressPrefix:      pulumi.String("10.100.0.0/14"),
/// 					NextHopType:        pulumi.String("VirtualAppliance"),
/// 					NextHopInIpAddress: pulumi.String("10.10.1.1"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnetRouteTableAssociation(ctx, "example", &network.SubnetRouteTableAssociationArgs{
/// 			SubnetId:     exampleSubnet.ID(),
/// 			RouteTableId: exampleRouteTable.ID(),
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
/// import com.pulumi.azure.network.RouteTable;
/// import com.pulumi.azure.network.RouteTableArgs;
/// import com.pulumi.azure.network.inputs.RouteTableRouteArgs;
/// import com.pulumi.azure.network.SubnetRouteTableAssociation;
/// import com.pulumi.azure.network.SubnetRouteTableAssociationArgs;
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
///             .name("example-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("frontend")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleRouteTable = new RouteTable("exampleRouteTable", RouteTableArgs.builder()
///             .name("example-routetable")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .routes(RouteTableRouteArgs.builder()
///                 .name("example")
///                 .addressPrefix("10.100.0.0/14")
///                 .nextHopType("VirtualAppliance")
///                 .nextHopInIpAddress("10.10.1.1")
///                 .build())
///             .build());
///
///         var exampleSubnetRouteTableAssociation = new SubnetRouteTableAssociation("exampleSubnetRouteTableAssociation", SubnetRouteTableAssociationArgs.builder()
///             .subnetId(exampleSubnet.id())
///             .routeTableId(exampleRouteTable.id())
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
///       name: frontend
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleRouteTable:
///     type: azure:network:RouteTable
///     name: example
///     properties:
///       name: example-routetable
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       routes:
///         - name: example
///           addressPrefix: 10.100.0.0/14
///           nextHopType: VirtualAppliance
///           nextHopInIpAddress: 10.10.1.1
///   exampleSubnetRouteTableAssociation:
///     type: azure:network:SubnetRouteTableAssociation
///     name: example
///     properties:
///       subnetId: ${exampleSubnet.id}
///       routeTableId: ${exampleRouteTable.id}
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
/// Subnet Route Table Associations can be imported using the `resource id` of the Subnet, e.g.
///
/// ```sh
/// $ pulumi import azure:network/subnetRouteTableAssociation:SubnetRouteTableAssociation association1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/virtualNetworks/myvnet1/subnets/mysubnet1
/// ```
class SubnetRouteTableAssociation extends pulumi.CustomResource {
  /// The ID of the Route Table which should be associated with the Subnet. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Use this resource only when the subnet is managed as a standalone `azure.network.Subnet`. If the subnet is declared inline inside `azure.network.VirtualNetwork`, set `route_table_id` in the inline `subnet` block and do not create this association for the same subnet.
  late final pulumi.Output<String> routeTableId;

  /// The ID of the Subnet. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [SubnetRouteTableAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetRouteTableAssociation]. {@macro pulumi_network_subnet_route_table_association_subnet_route_table_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetRouteTableAssociation(
    String name, {
    SubnetRouteTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/subnetRouteTableAssociation:SubnetRouteTableAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    routeTableId = registerOutput<String>('routeTableId');
    subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [SubnetRouteTableAssociation] resource's state with the given [name] and [id].
  static SubnetRouteTableAssociation get(
    String name,
    pulumi.Input<String> id, {
    SubnetRouteTableAssociationState? state,
  }) {
    return SubnetRouteTableAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubnetRouteTableAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/subnetRouteTableAssociation:SubnetRouteTableAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    routeTableId = registerOutput<String>('routeTableId');
    subnetId = registerOutput<String>('subnetId');
  }
}
