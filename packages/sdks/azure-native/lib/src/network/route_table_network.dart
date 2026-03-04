import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_table_args.dart';

/// Route table resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create route table
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routeTable = new AzureNative.Network.RouteTable("routeTable", new()
///     {
///         Location = "westus",
///         ResourceGroupName = "rg1",
///         RouteTableName = "testrt",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewRouteTable(ctx, "routeTable", &network.RouteTableArgs{
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RouteTableName:    pulumi.String("testrt"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.RouteTable;
/// import com.pulumi.azurenative.network.RouteTableArgs;
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
///         var routeTable = new RouteTable("routeTable", RouteTableArgs.builder()
///             .location("westus")
///             .resourceGroupName("rg1")
///             .routeTableName("testrt")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const routeTable = new azure_native.network.RouteTable("routeTable", {
///     location: "westus",
///     resourceGroupName: "rg1",
///     routeTableName: "testrt",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route_table = azure_native.network.RouteTable("routeTable",
///     location="westus",
///     resource_group_name="rg1",
///     route_table_name="testrt")
///
/// ```
///
/// ```yaml
/// resources:
///   routeTable:
///     type: azure-native:network:RouteTable
///     properties:
///       location: westus
///       resourceGroupName: rg1
///       routeTableName: testrt
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create route table with route
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routeTable = new AzureNative.Network.RouteTable("routeTable", new()
///     {
///         DisableBgpRoutePropagation = true,
///         Location = "westus",
///         ResourceGroupName = "rg1",
///         RouteTableName = "testrt",
///         Routes = new[]
///         {
///             new AzureNative.Network.Inputs.RouteArgs
///             {
///                 AddressPrefix = "10.0.3.0/24",
///                 Name = "route1",
///                 NextHopType = AzureNative.Network.RouteNextHopType.VirtualNetworkGateway,
///             },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewRouteTable(ctx, "routeTable", &network.RouteTableArgs{
/// 			DisableBgpRoutePropagation: pulumi.Bool(true),
/// 			Location:                   pulumi.String("westus"),
/// 			ResourceGroupName:          pulumi.String("rg1"),
/// 			RouteTableName:             pulumi.String("testrt"),
/// 			Routes: network.RouteTypeArray{
/// 				&network.RouteTypeArgs{
/// 					AddressPrefix: pulumi.String("10.0.3.0/24"),
/// 					Name:          pulumi.String("route1"),
/// 					NextHopType:   pulumi.String(network.RouteNextHopTypeVirtualNetworkGateway),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.RouteTable;
/// import com.pulumi.azurenative.network.RouteTableArgs;
/// import com.pulumi.azurenative.network.inputs.RouteArgs;
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
///         var routeTable = new RouteTable("routeTable", RouteTableArgs.builder()
///             .disableBgpRoutePropagation(true)
///             .location("westus")
///             .resourceGroupName("rg1")
///             .routeTableName("testrt")
///             .routes(RouteArgs.builder()
///                 .addressPrefix("10.0.3.0/24")
///                 .name("route1")
///                 .nextHopType("VirtualNetworkGateway")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const routeTable = new azure_native.network.RouteTable("routeTable", {
///     disableBgpRoutePropagation: true,
///     location: "westus",
///     resourceGroupName: "rg1",
///     routeTableName: "testrt",
///     routes: [{
///         addressPrefix: "10.0.3.0/24",
///         name: "route1",
///         nextHopType: azure_native.network.RouteNextHopType.VirtualNetworkGateway,
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route_table = azure_native.network.RouteTable("routeTable",
///     disable_bgp_route_propagation=True,
///     location="westus",
///     resource_group_name="rg1",
///     route_table_name="testrt",
///     routes=[{
///         "address_prefix": "10.0.3.0/24",
///         "name": "route1",
///         "next_hop_type": azure_native.network.RouteNextHopType.VIRTUAL_NETWORK_GATEWAY,
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   routeTable:
///     type: azure-native:network:RouteTable
///     properties:
///       disableBgpRoutePropagation: true
///       location: westus
///       resourceGroupName: rg1
///       routeTableName: testrt
///       routes:
///         - addressPrefix: 10.0.3.0/24
///           name: route1
///           nextHopType: VirtualNetworkGateway
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:RouteTable testrt /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}
/// ```
class RouteTableNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Whether to disable the routes learned by BGP on that route table. True means disable.
  late final pulumi.Output<bool?> disableBgpRoutePropagation;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// The provisioning state of the route table resource.
  late final pulumi.Output<String> provisioningState;

  /// The resource GUID property of the route table.
  late final pulumi.Output<String> resourceGuid;

  /// Collection of routes contained within a route table.
  late final pulumi.Output<List<Map<String, dynamic>>?> routes;

  /// A collection of references to subnets.
  late final pulumi.Output<List<Map<String, dynamic>>> subnets;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RouteTableNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteTableNetwork]. {@macro pulumi_network_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteTableNetwork(
    String name, {
    RouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:RouteTable',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    disableBgpRoutePropagation = registerOutput<bool?>(
      'disableBgpRoutePropagation',
    );
    etag = registerOutput<String>('etag');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    resourceGuid = registerOutput<String>('resourceGuid');
    routes = registerOutput<List<Map<String, dynamic>>?>('routes');
    subnets = registerOutput<List<Map<String, dynamic>>>('subnets');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
