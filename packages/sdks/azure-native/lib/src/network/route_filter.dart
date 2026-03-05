import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_filter_args.dart';

/// Route Filter Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RouteFilterCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routeFilter = new AzureNative.Network.RouteFilter("routeFilter", new()
///     {
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         RouteFilterName = "filterName",
///         Rules = new[]
///         {
///             new AzureNative.Network.Inputs.RouteFilterRuleArgs
///             {
///                 Access = AzureNative.Network.Access.Allow,
///                 Communities = new[]
///                 {
///                     "12076:5030",
///                     "12076:5040",
///                 },
///                 Name = "ruleName",
///                 RouteFilterRuleType = AzureNative.Network.RouteFilterRuleType.Community,
///             },
///         },
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 		_, err := network.NewRouteFilter(ctx, "routeFilter", &network.RouteFilterArgs{
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			RouteFilterName:   pulumi.String("filterName"),
/// 			Rules: network.RouteFilterRuleTypeArray{
/// 				&network.RouteFilterRuleTypeArgs{
/// 					Access: pulumi.String(network.AccessAllow),
/// 					Communities: pulumi.StringArray{
/// 						pulumi.String("12076:5030"),
/// 						pulumi.String("12076:5040"),
/// 					},
/// 					Name:                pulumi.String("ruleName"),
/// 					RouteFilterRuleType: pulumi.String(network.RouteFilterRuleTypeCommunity),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// import com.pulumi.azurenative.network.RouteFilter;
/// import com.pulumi.azurenative.network.RouteFilterArgs;
/// import com.pulumi.azurenative.network.inputs.RouteFilterRuleArgs;
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
///         var routeFilter = new RouteFilter("routeFilter", RouteFilterArgs.builder()
///             .location("West US")
///             .resourceGroupName("rg1")
///             .routeFilterName("filterName")
///             .rules(RouteFilterRuleArgs.builder()
///                 .access("Allow")
///                 .communities(
///                     "12076:5030",
///                     "12076:5040")
///                 .name("ruleName")
///                 .routeFilterRuleType("Community")
///                 .build())
///             .tags(Map.of("key1", "value1"))
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
/// const routeFilter = new azure_native.network.RouteFilter("routeFilter", {
///     location: "West US",
///     resourceGroupName: "rg1",
///     routeFilterName: "filterName",
///     rules: [{
///         access: azure_native.network.Access.Allow,
///         communities: [
///             "12076:5030",
///             "12076:5040",
///         ],
///         name: "ruleName",
///         routeFilterRuleType: azure_native.network.RouteFilterRuleType.Community,
///     }],
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// route_filter = azure_native.network.RouteFilter("routeFilter",
///     location="West US",
///     resource_group_name="rg1",
///     route_filter_name="filterName",
///     rules=[{
///         "access": azure_native.network.Access.ALLOW,
///         "communities": [
///             "12076:5030",
///             "12076:5040",
///         ],
///         "name": "ruleName",
///         "route_filter_rule_type": azure_native.network.RouteFilterRuleType.COMMUNITY,
///     }],
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   routeFilter:
///     type: azure-native:network:RouteFilter
///     properties:
///       location: West US
///       resourceGroupName: rg1
///       routeFilterName: filterName
///       rules:
///         - access: Allow
///           communities:
///             - 12076:5030
///             - 12076:5040
///           name: ruleName
///           routeFilterRuleType: Community
///       tags:
///         key1: value1
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
/// $ pulumi import azure-native:network:RouteFilter filterName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/routeFilters/{routeFilterName}
/// ```
class RouteFilter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// A collection of references to express route circuit ipv6 peerings.
  late final pulumi.Output<List<Map<String, dynamic>>> ipv6Peerings;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// A collection of references to express route circuit peerings.
  late final pulumi.Output<List<Map<String, dynamic>>> peerings;
  /// The provisioning state of the route filter resource.
  late final pulumi.Output<String> provisioningState;
  /// Collection of RouteFilterRules contained within a route filter.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RouteFilter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteFilter]. {@macro pulumi_network_route_filter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteFilter(
    String name, {
    RouteFilterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:RouteFilter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    ipv6Peerings = registerOutput<List<Map<String, dynamic>>>('ipv6Peerings');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    peerings = registerOutput<List<Map<String, dynamic>>>('peerings');
    provisioningState = registerOutput<String>('provisioningState');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
