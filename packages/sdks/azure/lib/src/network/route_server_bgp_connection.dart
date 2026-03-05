import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_bgp_connection_args.dart';
import 'route_server_bgp_connection_state.dart';

/// Manages a Bgp Connection for a Route Server
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
///     name: "example-vn",
///     addressSpaces: ["10.0.0.0/16"],
///     resourceGroupName: example.name,
///     location: example.location,
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "RouteServerSubnet",
///     virtualNetworkName: exampleVirtualNetwork.name,
///     resourceGroupName: example.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-pip",
///     resourceGroupName: example.name,
///     location: example.location,
///     allocationMethod: "Static",
///     sku: "Standard",
/// });
/// const exampleRouteServer = new azure.network.RouteServer("example", {
///     name: "example-routerserver",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Standard",
///     publicIpAddressId: examplePublicIp.id,
///     subnetId: exampleSubnet.id,
///     branchToBranchTrafficEnabled: true,
/// });
/// const exampleRouteServerBgpConnection = new azure.network.RouteServerBgpConnection("example", {
///     name: "example-rs-bgpconnection",
///     routeServerId: exampleRouteServer.id,
///     peerAsn: 65501,
///     peerIp: "169.254.21.5",
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
///     name="example-vn",
///     address_spaces=["10.0.0.0/16"],
///     resource_group_name=example.name,
///     location=example.location,
///     tags={
///         "environment": "Production",
///     })
/// example_subnet = azure.network.Subnet("example",
///     name="RouteServerSubnet",
///     virtual_network_name=example_virtual_network.name,
///     resource_group_name=example.name,
///     address_prefixes=["10.0.1.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-pip",
///     resource_group_name=example.name,
///     location=example.location,
///     allocation_method="Static",
///     sku="Standard")
/// example_route_server = azure.network.RouteServer("example",
///     name="example-routerserver",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Standard",
///     public_ip_address_id=example_public_ip.id,
///     subnet_id=example_subnet.id,
///     branch_to_branch_traffic_enabled=True)
/// example_route_server_bgp_connection = azure.network.RouteServerBgpConnection("example",
///     name="example-rs-bgpconnection",
///     route_server_id=example_route_server.id,
///     peer_asn=65501,
///     peer_ip="169.254.21.5")
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
///         Name = "example-vn",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "RouteServerSubnet",
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         ResourceGroupName = example.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-pip",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///     });
///
///     var exampleRouteServer = new Azure.Network.RouteServer("example", new()
///     {
///         Name = "example-routerserver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Standard",
///         PublicIpAddressId = examplePublicIp.Id,
///         SubnetId = exampleSubnet.Id,
///         BranchToBranchTrafficEnabled = true,
///     });
///
///     var exampleRouteServerBgpConnection = new Azure.Network.RouteServerBgpConnection("example", new()
///     {
///         Name = "example-rs-bgpconnection",
///         RouteServerId = exampleRouteServer.Id,
///         PeerAsn = 65501,
///         PeerIp = "169.254.21.5",
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
/// 			Name: pulumi.String("example-vn"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("RouteServerSubnet"),
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			ResourceGroupName:  example.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-pip"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRouteServer, err := network.NewRouteServer(ctx, "example", &network.RouteServerArgs{
/// 			Name:                         pulumi.String("example-routerserver"),
/// 			ResourceGroupName:            example.Name,
/// 			Location:                     example.Location,
/// 			Sku:                          pulumi.String("Standard"),
/// 			PublicIpAddressId:            examplePublicIp.ID(),
/// 			SubnetId:                     exampleSubnet.ID(),
/// 			BranchToBranchTrafficEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewRouteServerBgpConnection(ctx, "example", &network.RouteServerBgpConnectionArgs{
/// 			Name:          pulumi.String("example-rs-bgpconnection"),
/// 			RouteServerId: exampleRouteServer.ID(),
/// 			PeerAsn:       pulumi.Int(65501),
/// 			PeerIp:        pulumi.String("169.254.21.5"),
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
/// import com.pulumi.azure.network.RouteServer;
/// import com.pulumi.azure.network.RouteServerArgs;
/// import com.pulumi.azure.network.RouteServerBgpConnection;
/// import com.pulumi.azure.network.RouteServerBgpConnectionArgs;
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
///             .name("example-vn")
///             .addressSpaces("10.0.0.0/16")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("RouteServerSubnet")
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .resourceGroupName(example.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-pip")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .build());
///
///         var exampleRouteServer = new RouteServer("exampleRouteServer", RouteServerArgs.builder()
///             .name("example-routerserver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Standard")
///             .publicIpAddressId(examplePublicIp.id())
///             .subnetId(exampleSubnet.id())
///             .branchToBranchTrafficEnabled(true)
///             .build());
///
///         var exampleRouteServerBgpConnection = new RouteServerBgpConnection("exampleRouteServerBgpConnection", RouteServerBgpConnectionArgs.builder()
///             .name("example-rs-bgpconnection")
///             .routeServerId(exampleRouteServer.id())
///             .peerAsn(65501)
///             .peerIp("169.254.21.5")
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
///       name: example-vn
///       addressSpaces:
///         - 10.0.0.0/16
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       tags:
///         environment: Production
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: RouteServerSubnet
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       resourceGroupName: ${example.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-pip
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       allocationMethod: Static
///       sku: Standard
///   exampleRouteServer:
///     type: azure:network:RouteServer
///     name: example
///     properties:
///       name: example-routerserver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Standard
///       publicIpAddressId: ${examplePublicIp.id}
///       subnetId: ${exampleSubnet.id}
///       branchToBranchTrafficEnabled: true
///   exampleRouteServerBgpConnection:
///     type: azure:network:RouteServerBgpConnection
///     name: example
///     properties:
///       name: example-rs-bgpconnection
///       routeServerId: ${exampleRouteServer.id}
///       peerAsn: 65501
///       peerIp: 169.254.21.5
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
/// Route Server Bgp Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/routeServerBgpConnection:RouteServerBgpConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/virtualHubs/routeServer1/bgpConnections/connection1
/// ```
class RouteServerBgpConnection extends pulumi.CustomResource {
  /// The name which should be used for this Route Server Bgp Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The peer autonomous system number for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<int> peerAsn;
  /// The peer ip address for the Route Server Bgp Connection. Changing this forces a new resource to be created.
  late final pulumi.Output<String> peerIp;
  /// The ID of the Route Server within which this Bgp connection should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> routeServerId;

  /// Creates a new [RouteServerBgpConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteServerBgpConnection]. {@macro pulumi_network_route_server_bgp_connection_route_server_bgp_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteServerBgpConnection(
    String name, {
    RouteServerBgpConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/routeServerBgpConnection:RouteServerBgpConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    peerAsn = registerOutput<int>('peerAsn');
    peerIp = registerOutput<String>('peerIp');
    routeServerId = registerOutput<String>('routeServerId');
  }

  /// Gets an existing [RouteServerBgpConnection] resource's state with the given [name] and [id].
  static RouteServerBgpConnection get(
    String name,
    pulumi.Input<String> id, {
    RouteServerBgpConnectionState? state,
  }) {
    return RouteServerBgpConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteServerBgpConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/routeServerBgpConnection:RouteServerBgpConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    peerAsn = registerOutput<int>('peerAsn');
    peerIp = registerOutput<String>('peerIp');
    routeServerId = registerOutput<String>('routeServerId');
  }
}
