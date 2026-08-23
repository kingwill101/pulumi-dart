import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_table_v2_args.dart';

/// VirtualHubRouteTableV2 Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualHubRouteTableV2Put
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualHubRouteTableV2 = new AzureNative.Network.VirtualHubRouteTableV2("virtualHubRouteTableV2", new()
///     {
///         AttachedConnections = new[]
///         {
///             "All_Vnets",
///         },
///         ResourceGroupName = "rg1",
///         RouteTableName = "virtualHubRouteTable1a",
///         Routes = new[]
///         {
///             new AzureNative.Network.Inputs.VirtualHubRouteV2Args
///             {
///                 DestinationType = "CIDR",
///                 Destinations = new[]
///                 {
///                     "20.10.0.0/16",
///                     "20.20.0.0/16",
///                 },
///                 NextHopType = "IPAddress",
///                 NextHops = new[]
///                 {
///                     "10.0.0.68",
///                 },
///             },
///             new AzureNative.Network.Inputs.VirtualHubRouteV2Args
///             {
///                 DestinationType = "CIDR",
///                 Destinations = new[]
///                 {
///                     "0.0.0.0/0",
///                 },
///                 NextHopType = "IPAddress",
///                 NextHops = new[]
///                 {
///                     "10.0.0.68",
///                 },
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
/// 		_, err := network.NewVirtualHubRouteTableV2(ctx, "virtualHubRouteTableV2", &network.VirtualHubRouteTableV2Args{
/// 			AttachedConnections: pulumi.StringArray{
/// 				pulumi.String("All_Vnets"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RouteTableName:    pulumi.String("virtualHubRouteTable1a"),
/// 			Routes: network.VirtualHubRouteV2Array{
/// 				&network.VirtualHubRouteV2Args{
/// 					DestinationType: pulumi.String("CIDR"),
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("20.10.0.0/16"),
/// 						pulumi.String("20.20.0.0/16"),
/// 					},
/// 					NextHopType: pulumi.String("IPAddress"),
/// 					NextHops: pulumi.StringArray{
/// 						pulumi.String("10.0.0.68"),
/// 					},
/// 				},
/// 				&network.VirtualHubRouteV2Args{
/// 					DestinationType: pulumi.String("CIDR"),
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("0.0.0.0/0"),
/// 					},
/// 					NextHopType: pulumi.String("IPAddress"),
/// 					NextHops: pulumi.StringArray{
/// 						pulumi.String("10.0.0.68"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualhubroutetablev2" "virtualHubRouteTableV2" {
///   attached_connections = ["All_Vnets"]
///   resource_group_name  = "rg1"
///   route_table_name     = "virtualHubRouteTable1a"
///   routes {
///     destination_type = "CIDR"
///     destinations     = ["20.10.0.0/16", "20.20.0.0/16"]
///     next_hop_type    = "IPAddress"
///     next_hops        = ["10.0.0.68"]
///   }
///   routes {
///     destination_type = "CIDR"
///     destinations     = ["0.0.0.0/0"]
///     next_hop_type    = "IPAddress"
///     next_hops        = ["10.0.0.68"]
///   }
///   virtual_hub_name = "virtualHub1"
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
/// import com.pulumi.azurenative.network.VirtualHubRouteTableV2;
/// import com.pulumi.azurenative.network.VirtualHubRouteTableV2Args;
/// import com.pulumi.azurenative.network.inputs.VirtualHubRouteV2Args;
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
///         var virtualHubRouteTableV2 = new VirtualHubRouteTableV2("virtualHubRouteTableV2", VirtualHubRouteTableV2Args.builder()
///             .attachedConnections("All_Vnets")
///             .resourceGroupName("rg1")
///             .routeTableName("virtualHubRouteTable1a")
///             .routes(
///                 VirtualHubRouteV2Args.builder()
///                     .destinationType("CIDR")
///                     .destinations(
///                         "20.10.0.0/16",
///                         "20.20.0.0/16")
///                     .nextHopType("IPAddress")
///                     .nextHops("10.0.0.68")
///                     .build(),
///                 VirtualHubRouteV2Args.builder()
///                     .destinationType("CIDR")
///                     .destinations("0.0.0.0/0")
///                     .nextHopType("IPAddress")
///                     .nextHops("10.0.0.68")
///                     .build())
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
/// const virtualHubRouteTableV2 = new azure_native.network.VirtualHubRouteTableV2("virtualHubRouteTableV2", {
///     attachedConnections: ["All_Vnets"],
///     resourceGroupName: "rg1",
///     routeTableName: "virtualHubRouteTable1a",
///     routes: [
///         {
///             destinationType: "CIDR",
///             destinations: [
///                 "20.10.0.0/16",
///                 "20.20.0.0/16",
///             ],
///             nextHopType: "IPAddress",
///             nextHops: ["10.0.0.68"],
///         },
///         {
///             destinationType: "CIDR",
///             destinations: ["0.0.0.0/0"],
///             nextHopType: "IPAddress",
///             nextHops: ["10.0.0.68"],
///         },
///     ],
///     virtualHubName: "virtualHub1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_hub_route_table_v2 = azure_native.network.VirtualHubRouteTableV2("virtualHubRouteTableV2",
///     attached_connections=["All_Vnets"],
///     resource_group_name="rg1",
///     route_table_name="virtualHubRouteTable1a",
///     routes=[
///         {
///             "destination_type": "CIDR",
///             "destinations": [
///                 "20.10.0.0/16",
///                 "20.20.0.0/16",
///             ],
///             "next_hop_type": "IPAddress",
///             "next_hops": ["10.0.0.68"],
///         },
///         {
///             "destination_type": "CIDR",
///             "destinations": ["0.0.0.0/0"],
///             "next_hop_type": "IPAddress",
///             "next_hops": ["10.0.0.68"],
///         },
///     ],
///     virtual_hub_name="virtualHub1")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualHubRouteTableV2:
///     type: azure-native:network:VirtualHubRouteTableV2
///     properties:
///       attachedConnections:
///         - All_Vnets
///       resourceGroupName: rg1
///       routeTableName: virtualHubRouteTable1a
///       routes:
///         - destinationType: CIDR
///           destinations:
///             - 20.10.0.0/16
///             - 20.20.0.0/16
///           nextHopType: IPAddress
///           nextHops:
///             - 10.0.0.68
///         - destinationType: CIDR
///           destinations:
///             - 0.0.0.0/0
///           nextHopType: IPAddress
///           nextHops:
///             - 10.0.0.68
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
/// $ pulumi import azure-native:network:VirtualHubRouteTableV2 virtualHubRouteTable1a /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}/routeTables/{routeTableName}
/// ```
class VirtualHubRouteTableV2Network extends pulumi.CustomResource {
  /// List of all connections attached to this route table v2.
  late final pulumi.Output<List<String>?> attachedConnections;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// The provisioning state of the virtual hub route table v2 resource.
  late final pulumi.Output<String> provisioningState;
  /// List of all routes.
  late final pulumi.Output<List<Map<String, dynamic>>?> routes;

  /// Creates a new [VirtualHubRouteTableV2Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHubRouteTableV2Network]. {@macro pulumi_network_virtual_hub_route_table_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHubRouteTableV2Network(
    String name, {
    VirtualHubRouteTableV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VirtualHubRouteTableV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attachedConnections = registerOutput<List<String>?>('attachedConnections');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    routes = registerOutput<List<Map<String, dynamic>>?>('routes');
  }
}
