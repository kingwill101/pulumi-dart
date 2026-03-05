import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_intent_args.dart';

/// The routing intent child resource of a Virtual hub.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var routingIntent = new AzureNative.Network.RoutingIntent("routingIntent", new()
///     {
///         ResourceGroupName = "rg1",
///         RoutingIntentName = "Intent1",
///         RoutingPolicies = new[]
///         {
///             new AzureNative.Network.Inputs.RoutingPolicyArgs
///             {
///                 Destinations = new[]
///                 {
///                     "Internet",
///                 },
///                 Name = "InternetTraffic",
///                 NextHop = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1",
///             },
///             new AzureNative.Network.Inputs.RoutingPolicyArgs
///             {
///                 Destinations = new[]
///                 {
///                     "PrivateTraffic",
///                 },
///                 Name = "PrivateTrafficPolicy",
///                 NextHop = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1",
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
/// 		_, err := network.NewRoutingIntent(ctx, "routingIntent", &network.RoutingIntentArgs{
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RoutingIntentName: pulumi.String("Intent1"),
/// 			RoutingPolicies: network.RoutingPolicyArray{
/// 				&network.RoutingPolicyArgs{
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("Internet"),
/// 					},
/// 					Name:    pulumi.String("InternetTraffic"),
/// 					NextHop: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1"),
/// 				},
/// 				&network.RoutingPolicyArgs{
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("PrivateTraffic"),
/// 					},
/// 					Name:    pulumi.String("PrivateTrafficPolicy"),
/// 					NextHop: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1"),
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
/// import com.pulumi.azurenative.network.RoutingIntent;
/// import com.pulumi.azurenative.network.RoutingIntentArgs;
/// import com.pulumi.azurenative.network.inputs.RoutingPolicyArgs;
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
///         var routingIntent = new RoutingIntent("routingIntent", RoutingIntentArgs.builder()
///             .resourceGroupName("rg1")
///             .routingIntentName("Intent1")
///             .routingPolicies(
///                 RoutingPolicyArgs.builder()
///                     .destinations("Internet")
///                     .name("InternetTraffic")
///                     .nextHop("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1")
///                     .build(),
///                 RoutingPolicyArgs.builder()
///                     .destinations("PrivateTraffic")
///                     .name("PrivateTrafficPolicy")
///                     .nextHop("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1")
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
/// const routingIntent = new azure_native.network.RoutingIntent("routingIntent", {
///     resourceGroupName: "rg1",
///     routingIntentName: "Intent1",
///     routingPolicies: [
///         {
///             destinations: ["Internet"],
///             name: "InternetTraffic",
///             nextHop: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1",
///         },
///         {
///             destinations: ["PrivateTraffic"],
///             name: "PrivateTrafficPolicy",
///             nextHop: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1",
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
/// routing_intent = azure_native.network.RoutingIntent("routingIntent",
///     resource_group_name="rg1",
///     routing_intent_name="Intent1",
///     routing_policies=[
///         {
///             "destinations": ["Internet"],
///             "name": "InternetTraffic",
///             "next_hop": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1",
///         },
///         {
///             "destinations": ["PrivateTraffic"],
///             "name": "PrivateTrafficPolicy",
///             "next_hop": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1",
///         },
///     ],
///     virtual_hub_name="virtualHub1")
///
/// ```
///
/// ```yaml
/// resources:
///   routingIntent:
///     type: azure-native:network:RoutingIntent
///     properties:
///       resourceGroupName: rg1
///       routingIntentName: Intent1
///       routingPolicies:
///         - destinations:
///             - Internet
///           name: InternetTraffic
///           nextHop: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1
///         - destinations:
///             - PrivateTraffic
///           name: PrivateTrafficPolicy
///           nextHop: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/azureFirewalls/azfw1
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
/// $ pulumi import azure-native:network:RoutingIntent Intent1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}/routingIntent/{routingIntentName}
/// ```
class RoutingIntent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// The provisioning state of the RoutingIntent resource.
  late final pulumi.Output<String> provisioningState;
  /// List of routing policies.
  late final pulumi.Output<List<Map<String, dynamic>>?> routingPolicies;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RoutingIntent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutingIntent]. {@macro pulumi_network_routing_intent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutingIntent(
    String name, {
    RoutingIntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:RoutingIntent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    provisioningState = registerOutput<String>('provisioningState');
    routingPolicies = registerOutput<List<Map<String, dynamic>>?>('routingPolicies');
    type = registerOutput<String>('type');
  }
}
