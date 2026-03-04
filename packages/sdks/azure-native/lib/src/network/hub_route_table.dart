import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_route_table_args.dart';

/// RouteTable resource in a virtual hub.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RouteTablePut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hubRouteTable = new AzureNative.Network.HubRouteTable("hubRouteTable", new()
///     {
///         Labels = new[]
///         {
///             "label1",
///             "label2",
///         },
///         ResourceGroupName = "rg1",
///         RouteTableName = "hubRouteTable1",
///         Routes = new[]
///         {
///             new AzureNative.Network.Inputs.HubRouteArgs
///             {
///                 DestinationType = "CIDR",
///                 Destinations = new[]
///                 {
///                     "10.0.0.0/8",
///                     "20.0.0.0/8",
///                     "30.0.0.0/8",
///                 },
///                 Name = "route1",
///                 NextHop = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azureFirewall1",
///                 NextHopType = "ResourceId",
///             },
///         },
///         VirtualHubName = "virtualHub1",
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
/// 		_, err := network.NewHubRouteTable(ctx, "hubRouteTable", &network.HubRouteTableArgs{
/// 			Labels: pulumi.StringArray{
/// 				pulumi.String("label1"),
/// 				pulumi.String("label2"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RouteTableName:    pulumi.String("hubRouteTable1"),
/// 			Routes: network.HubRouteArray{
/// 				&network.HubRouteArgs{
/// 					DestinationType: pulumi.String("CIDR"),
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("10.0.0.0/8"),
/// 						pulumi.String("20.0.0.0/8"),
/// 						pulumi.String("30.0.0.0/8"),
/// 					},
/// 					Name:        pulumi.String("route1"),
/// 					NextHop:     pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azureFirewall1"),
/// 					NextHopType: pulumi.String("ResourceId"),
/// 				},
/// 			},
/// 			VirtualHubName: pulumi.String("virtualHub1"),
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
/// import com.pulumi.azurenative.network.HubRouteTable;
/// import com.pulumi.azurenative.network.HubRouteTableArgs;
/// import com.pulumi.azurenative.network.inputs.HubRouteArgs;
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
///         var hubRouteTable = new HubRouteTable("hubRouteTable", HubRouteTableArgs.builder()
///             .labels(
///                 "label1",
///                 "label2")
///             .resourceGroupName("rg1")
///             .routeTableName("hubRouteTable1")
///             .routes(HubRouteArgs.builder()
///                 .destinationType("CIDR")
///                 .destinations(
///                     "10.0.0.0/8",
///                     "20.0.0.0/8",
///                     "30.0.0.0/8")
///                 .name("route1")
///                 .nextHop("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azureFirewall1")
///                 .nextHopType("ResourceId")
///                 .build())
///             .virtualHubName("virtualHub1")
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
/// const hubRouteTable = new azure_native.network.HubRouteTable("hubRouteTable", {
///     labels: [
///         "label1",
///         "label2",
///     ],
///     resourceGroupName: "rg1",
///     routeTableName: "hubRouteTable1",
///     routes: [{
///         destinationType: "CIDR",
///         destinations: [
///             "10.0.0.0/8",
///             "20.0.0.0/8",
///             "30.0.0.0/8",
///         ],
///         name: "route1",
///         nextHop: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azureFirewall1",
///         nextHopType: "ResourceId",
///     }],
///     virtualHubName: "virtualHub1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// hub_route_table = azure_native.network.HubRouteTable("hubRouteTable",
///     labels=[
///         "label1",
///         "label2",
///     ],
///     resource_group_name="rg1",
///     route_table_name="hubRouteTable1",
///     routes=[{
///         "destination_type": "CIDR",
///         "destinations": [
///             "10.0.0.0/8",
///             "20.0.0.0/8",
///             "30.0.0.0/8",
///         ],
///         "name": "route1",
///         "next_hop": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azureFirewall1",
///         "next_hop_type": "ResourceId",
///     }],
///     virtual_hub_name="virtualHub1")
///
/// ```
///
/// ```yaml
/// resources:
///   hubRouteTable:
///     type: azure-native:network:HubRouteTable
///     properties:
///       labels:
///         - label1
///         - label2
///       resourceGroupName: rg1
///       routeTableName: hubRouteTable1
///       routes:
///         - destinationType: CIDR
///           destinations:
///             - 10.0.0.0/8
///             - 20.0.0.0/8
///             - 30.0.0.0/8
///           name: route1
///           nextHop: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azureFirewall1
///           nextHopType: ResourceId
///       virtualHubName: virtualHub1
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
/// $ pulumi import azure-native:network:HubRouteTable hubRouteTable1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}/hubRouteTables/{routeTableName}
/// ```
class HubRouteTable extends pulumi.CustomResource {
  /// List of all connections associated with this route table.
  late final pulumi.Output<List<String>> associatedConnections;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// List of labels associated with this route table.
  late final pulumi.Output<List<String>?> labels;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;

  /// List of all connections that advertise to this route table.
  late final pulumi.Output<List<String>> propagatingConnections;

  /// The provisioning state of the RouteTable resource.
  late final pulumi.Output<String> provisioningState;

  /// List of all routes.
  late final pulumi.Output<List<Map<String, dynamic>>?> routes;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [HubRouteTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HubRouteTable]. {@macro pulumi_network_hub_route_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HubRouteTable(
    String name, {
    HubRouteTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:HubRouteTable',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    associatedConnections = registerOutput<List<String>>(
      'associatedConnections',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String?>('name');
    propagatingConnections = registerOutput<List<String>>(
      'propagatingConnections',
    );
    provisioningState = registerOutput<String>('provisioningState');
    routes = registerOutput<List<Map<String, dynamic>>?>('routes');
    type = registerOutput<String>('type');
  }
}
