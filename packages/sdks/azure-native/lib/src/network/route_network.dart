import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';

/// Route resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create route
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var route = new AzureNative.Network.Route("route", new()
///     {
///         AddressPrefix = "10.0.3.0/24",
///         NextHopType = AzureNative.Network.RouteNextHopType.VirtualNetworkGateway,
///         ResourceGroupName = "rg1",
///         RouteName = "route1",
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
/// 		_, err := network.NewRoute(ctx, "route", &network.RouteArgs{
/// 			AddressPrefix:     pulumi.String("10.0.3.0/24"),
/// 			NextHopType:       pulumi.String(network.RouteNextHopTypeVirtualNetworkGateway),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RouteName:         pulumi.String("route1"),
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
/// import com.pulumi.azurenative.network.Route;
/// import com.pulumi.azurenative.network.RouteArgs;
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
///         var route = new Route("route", RouteArgs.builder()
///             .addressPrefix("10.0.3.0/24")
///             .nextHopType("VirtualNetworkGateway")
///             .resourceGroupName("rg1")
///             .routeName("route1")
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
/// const route = new azure_native.network.Route("route", {
///     addressPrefix: "10.0.3.0/24",
///     nextHopType: azure_native.network.RouteNextHopType.VirtualNetworkGateway,
///     resourceGroupName: "rg1",
///     routeName: "route1",
///     routeTableName: "testrt",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route = azure_native.network.Route("route",
///     address_prefix="10.0.3.0/24",
///     next_hop_type=azure_native.network.RouteNextHopType.VIRTUAL_NETWORK_GATEWAY,
///     resource_group_name="rg1",
///     route_name="route1",
///     route_table_name="testrt")
///
/// ```
///
/// ```yaml
/// resources:
///   route:
///     type: azure-native:network:Route
///     properties:
///       addressPrefix: 10.0.3.0/24
///       nextHopType: VirtualNetworkGateway
///       resourceGroupName: rg1
///       routeName: route1
///       routeTableName: testrt
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
/// $ pulumi import azure-native:network:Route route1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeTables/{routeTableName}/routes/{routeName}
/// ```
class RouteNetwork extends pulumi.CustomResource {
  /// The destination CIDR to which the route applies.
  late final pulumi.Output<String?> addressPrefix;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// A value indicating whether this route overrides overlapping BGP routes regardless of LPM.
  late final pulumi.Output<bool> hasBgpOverride;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  late final pulumi.Output<String?> nextHopIpAddress;
  /// The type of Azure hop the packet should be sent to.
  late final pulumi.Output<String> nextHopType;
  /// The provisioning state of the route resource.
  late final pulumi.Output<String> provisioningState;
  /// The type of the resource.
  late final pulumi.Output<String?> type;

  /// Creates a new [RouteNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteNetwork]. {@macro pulumi_network_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteNetwork(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressPrefix = registerOutput<String?>('addressPrefix');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.etag = registerOutput<String>('etag');
    this.hasBgpOverride = registerOutput<bool>('hasBgpOverride');
    this.name = registerOutput<String?>('name');
    this.nextHopIpAddress = registerOutput<String?>('nextHopIpAddress');
    this.nextHopType = registerOutput<String>('nextHopType');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.type = registerOutput<String?>('type');
  }
}
