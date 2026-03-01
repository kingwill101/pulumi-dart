import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_server_args.dart';
import 'route_server_state.dart';

/// Manages an Azure Route Server
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
///     hubRoutingPreference: "ASPath",
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
///     branch_to_branch_traffic_enabled=True,
///     hub_routing_preference="ASPath")
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
///         HubRoutingPreference = "ASPath",
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
/// 		_, err = network.NewRouteServer(ctx, "example", &network.RouteServerArgs{
/// 			Name:                         pulumi.String("example-routerserver"),
/// 			ResourceGroupName:            example.Name,
/// 			Location:                     example.Location,
/// 			Sku:                          pulumi.String("Standard"),
/// 			PublicIpAddressId:            examplePublicIp.ID(),
/// 			SubnetId:                     exampleSubnet.ID(),
/// 			BranchToBranchTrafficEnabled: pulumi.Bool(true),
/// 			HubRoutingPreference:         pulumi.String("ASPath"),
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
///             .hubRoutingPreference("ASPath")
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
///       hubRoutingPreference: ASPath
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
/// Route Server can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/routeServer:RouteServer example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/virtualHubs/routeServer1
/// ```
class RouteServer extends pulumi.CustomResource {
  /// Whether to enable route exchange between Azure Route Server and the gateway(s).
  late final pulumi.Output<bool?> branchToBranchTrafficEnabled;
  /// The hub routing preference. Valid values are `ASPath`, `ExpressRoute` or `VpnGateway`. Defaults to `ExpressRoute`.
  late final pulumi.Output<String?> hubRoutingPreference;
  /// Specifies the supported Azure location where the Route Server should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Route Server. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Public IP Address. This option is required since September 1st 2021. Changing this forces a new resource to be created.
  late final pulumi.Output<String> publicIpAddressId;
  /// Specifies the name of the Resource Group where the Route Server should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  late final pulumi.Output<String> routingState;
  /// The SKU of the Route Server. The only possible value is `Standard`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sku;
  /// The ID of the Subnet that the Route Server will reside. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Azure Route Server requires a dedicated subnet named RouteServerSubnet. The subnet size has to be at least /27 or short prefix (such as /26 or /25) and cannot be attached to any security group, otherwise, you'll receive an error message when deploying the Route Server.
  late final pulumi.Output<String> subnetId;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<int> virtualRouterAsn;
  late final pulumi.Output<List<String>> virtualRouterIps;

  /// Creates a new [RouteServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteServer]. {@macro pulumi_network_route_server_route_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteServer(
    String name, {
    RouteServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/routeServer:RouteServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.branchToBranchTrafficEnabled = registerOutput<bool?>('branchToBranchTrafficEnabled');
    this.hubRoutingPreference = registerOutput<String?>('hubRoutingPreference');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicIpAddressId = registerOutput<String>('publicIpAddressId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.routingState = registerOutput<String>('routingState');
    this.sku = registerOutput<String>('sku');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualRouterAsn = registerOutput<int>('virtualRouterAsn');
    this.virtualRouterIps = registerOutput<List<String>>('virtualRouterIps');
  }

  /// Gets an existing [RouteServer] resource's state with the given [name] and [id].
  static RouteServer get(
    String name,
    pulumi.Input<String> id, {
    RouteServerState? state,
  }) {
    return RouteServer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteServer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/routeServer:RouteServer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.branchToBranchTrafficEnabled = registerOutput<bool?>('branchToBranchTrafficEnabled');
    this.hubRoutingPreference = registerOutput<String?>('hubRoutingPreference');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicIpAddressId = registerOutput<String>('publicIpAddressId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.routingState = registerOutput<String>('routingState');
    this.sku = registerOutput<String>('sku');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualRouterAsn = registerOutput<int>('virtualRouterAsn');
    this.virtualRouterIps = registerOutput<List<String>>('virtualRouterIps');
  }
}
