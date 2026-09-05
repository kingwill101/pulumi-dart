import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';
import 'route_state.dart';

/// Manages a Route within a Route Table.
///
/// &gt; **NOTE on Route Tables and Routes:** This provider currently
/// provides both a standalone Route resource, and allows for Routes to be defined in-line within the Route Table resource.
/// At this time you cannot use a Route Table with in-line Routes in conjunction with any Route resources. Doing so will cause a conflict of Route configurations and will overwrite Routes.
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
/// const exampleRouteTable = new azure.network.RouteTable("example", {
///     name: "acceptanceTestRouteTable1",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleRoute = new azure.network.Route("example", {
///     name: "acceptanceTestRoute1",
///     resourceGroupName: example.name,
///     routeTableName: exampleRouteTable.name,
///     addressPrefix: "10.1.0.0/16",
///     nextHopType: "VnetLocal",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_route_table = azure.network.RouteTable("example",
///     name="acceptanceTestRouteTable1",
///     location=example.location,
///     resource_group_name=example.name)
/// example_route = azure.network.Route("example",
///     name="acceptanceTestRoute1",
///     resource_group_name=example.name,
///     route_table_name=example_route_table.name,
///     address_prefix="10.1.0.0/16",
///     next_hop_type="VnetLocal")
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
///     var exampleRouteTable = new Azure.Network.RouteTable("example", new()
///     {
///         Name = "acceptanceTestRouteTable1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleRoute = new Azure.Network.Route("example", new()
///     {
///         Name = "acceptanceTestRoute1",
///         ResourceGroupName = example.Name,
///         RouteTableName = exampleRouteTable.Name,
///         AddressPrefix = "10.1.0.0/16",
///         NextHopType = "VnetLocal",
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
/// 		exampleRouteTable, err := network.NewRouteTable(ctx, "example", &network.RouteTableArgs{
/// 			Name:              pulumi.String("acceptanceTestRouteTable1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewRoute(ctx, "example", &network.RouteArgs{
/// 			Name:              pulumi.String("acceptanceTestRoute1"),
/// 			ResourceGroupName: example.Name,
/// 			RouteTableName:    exampleRouteTable.Name,
/// 			AddressPrefix:     pulumi.String("10.1.0.0/16"),
/// 			NextHopType:       pulumi.String("VnetLocal"),
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
/// resource "azure_network_routetable" "example" {
///   name                = "acceptanceTestRouteTable1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_route" "example" {
///   name                = "acceptanceTestRoute1"
///   resource_group_name = azure_core_resourcegroup.example.name
///   route_table_name    = azure_network_routetable.example.name
///   address_prefix      = "10.1.0.0/16"
///   next_hop_type       = "VnetLocal"
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
/// import com.pulumi.azure.network.RouteTable;
/// import com.pulumi.azure.network.RouteTableArgs;
/// import com.pulumi.azure.network.Route;
/// import com.pulumi.azure.network.RouteArgs;
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
///         var exampleRouteTable = new RouteTable("exampleRouteTable", RouteTableArgs.builder()
///             .name("acceptanceTestRouteTable1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleRoute = new Route("exampleRoute", RouteArgs.builder()
///             .name("acceptanceTestRoute1")
///             .resourceGroupName(example.name())
///             .routeTableName(exampleRouteTable.name())
///             .addressPrefix("10.1.0.0/16")
///             .nextHopType("VnetLocal")
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
///   exampleRouteTable:
///     type: azure:network:RouteTable
///     name: example
///     properties:
///       name: acceptanceTestRouteTable1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleRoute:
///     type: azure:network:Route
///     name: example
///     properties:
///       name: acceptanceTestRoute1
///       resourceGroupName: ${example.name}
///       routeTableName: ${exampleRouteTable.name}
///       addressPrefix: 10.1.0.0/16
///       nextHopType: VnetLocal
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
/// Routes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/route:Route exampleRoute /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/routeTables/mytable1/routes/myroute1
/// ```
class Route extends pulumi.CustomResource {
  /// The destination to which the route applies. Can be CIDR (such as `10.1.0.0/16`) or [Azure Service Tag](https://docs.microsoft.com/azure/virtual-network/service-tags-overview) (such as `ApiManagement`, `AzureBackup` or `AzureMonitor`) format.
  late final pulumi.Output<String> addressPrefix;
  /// The name of the route. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is `VirtualAppliance`.
  late final pulumi.Output<String?> nextHopInIpAddress;
  /// The type of Azure hop the packet should be sent to. Possible values are `VirtualNetworkGateway`, `VnetLocal`, `Internet`, `VirtualAppliance` and `None`.
  late final pulumi.Output<String> nextHopType;
  /// The name of the resource group in which to create the route. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The name of the route table within which create the route. Changing this forces a new resource to be created.
  late final pulumi.Output<String> routeTableName;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_network_route_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    addressPrefix = registerOutput<String>('addressPrefix');
    this.name = registerOutput<String>('name');
    nextHopInIpAddress = registerOutput<String?>('nextHopInIpAddress');
    nextHopType = registerOutput<String>('nextHopType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routeTableName = registerOutput<String>('routeTableName');
  }

  /// Gets an existing [Route] resource's state with the given [name] and [id].
  static Route get(
    String name,
    pulumi.Input<String> id, {
    RouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Route._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Route._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/route:Route',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefix = registerOutput<String>('addressPrefix');
    this.name = registerOutput<String>('name');
    nextHopInIpAddress = registerOutput<String?>('nextHopInIpAddress');
    nextHopType = registerOutput<String>('nextHopType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routeTableName = registerOutput<String>('routeTableName');
  }

  /// Creates a typed reference to an existing [Route] resource.
  Route.reference(String urn)
    : super(
        'azure:network/route:Route',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addressPrefix = registerOutput<String>('addressPrefix');
    this.name = registerOutput<String>('name');
    nextHopInIpAddress = registerOutput<String?>('nextHopInIpAddress');
    nextHopType = registerOutput<String>('nextHopType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routeTableName = registerOutput<String>('routeTableName');
  }
}
