import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_args.dart';
import 'route_map_rule.dart';
import 'route_map_state.dart';

/// Manages a Route Map.
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
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-vwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-vhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.1.0/24",
/// });
/// const exampleRouteMap = new azure.network.RouteMap("example", {
///     name: "example-rm",
///     virtualHubId: exampleVirtualHub.id,
///     rules: [{
///         name: "rule1",
///         nextStepIfMatched: "Continue",
///         actions: [{
///             type: "Add",
///             parameters: [{
///                 asPaths: ["22334"],
///             }],
///         }],
///         matchCriterions: [{
///             matchCondition: "Contains",
///             routePrefixes: ["10.0.0.0/8"],
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-vwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-vhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.1.0/24")
/// example_route_map = azure.network.RouteMap("example",
///     name="example-rm",
///     virtual_hub_id=example_virtual_hub.id,
///     rules=[{
///         "name": "rule1",
///         "next_step_if_matched": "Continue",
///         "actions": [{
///             "type": "Add",
///             "parameters": [{
///                 "as_paths": ["22334"],
///             }],
///         }],
///         "match_criterions": [{
///             "match_condition": "Contains",
///             "route_prefixes": ["10.0.0.0/8"],
///         }],
///     }])
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
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-vwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-vhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.1.0/24",
///     });
///
///     var exampleRouteMap = new Azure.Network.RouteMap("example", new()
///     {
///         Name = "example-rm",
///         VirtualHubId = exampleVirtualHub.Id,
///         Rules = new[]
///         {
///             new Azure.Network.Inputs.RouteMapRuleArgs
///             {
///                 Name = "rule1",
///                 NextStepIfMatched = "Continue",
///                 Actions = new[]
///                 {
///                     new Azure.Network.Inputs.RouteMapRuleActionArgs
///                     {
///                         Type = "Add",
///                         Parameters = new[]
///                         {
///                             new Azure.Network.Inputs.RouteMapRuleActionParameterArgs
///                             {
///                                 AsPaths = new[]
///                                 {
///                                     "22334",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 MatchCriterions = new[]
///                 {
///                     new Azure.Network.Inputs.RouteMapRuleMatchCriterionArgs
///                     {
///                         MatchCondition = "Contains",
///                         RoutePrefixes = new[]
///                         {
///                             "10.0.0.0/8",
///                         },
///                     },
///                 },
///             },
///         },
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
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-vwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-vhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewRouteMapResource(ctx, "example", &network.RouteMapResourceArgs{
/// 			Name:         pulumi.String("example-rm"),
/// 			VirtualHubId: exampleVirtualHub.ID(),
/// 			Rules: network.RouteMapRuleArray{
/// 				&network.RouteMapRuleArgs{
/// 					Name:              pulumi.String("rule1"),
/// 					NextStepIfMatched: pulumi.String("Continue"),
/// 					Actions: network.RouteMapRuleActionArray{
/// 						&network.RouteMapRuleActionArgs{
/// 							Type: pulumi.String("Add"),
/// 							Parameters: network.RouteMapRuleActionParameterArray{
/// 								&network.RouteMapRuleActionParameterArgs{
/// 									AsPaths: pulumi.StringArray{
/// 										pulumi.String("22334"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					MatchCriterions: network.RouteMapRuleMatchCriterionArray{
/// 						&network.RouteMapRuleMatchCriterionArgs{
/// 							MatchCondition: pulumi.String("Contains"),
/// 							RoutePrefixes: pulumi.StringArray{
/// 								pulumi.String("10.0.0.0/8"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.RouteMap;
/// import com.pulumi.azure.network.RouteMapArgs;
/// import com.pulumi.azure.network.inputs.RouteMapRuleArgs;
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
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-vwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-vhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.1.0/24")
///             .build());
///
///         var exampleRouteMap = new RouteMap("exampleRouteMap", RouteMapArgs.builder()
///             .name("example-rm")
///             .virtualHubId(exampleVirtualHub.id())
///             .rules(RouteMapRuleArgs.builder()
///                 .name("rule1")
///                 .nextStepIfMatched("Continue")
///                 .actions(RouteMapRuleActionArgs.builder()
///                     .type("Add")
///                     .parameters(RouteMapRuleActionParameterArgs.builder()
///                         .asPaths("22334")
///                         .build())
///                     .build())
///                 .matchCriterions(RouteMapRuleMatchCriterionArgs.builder()
///                     .matchCondition("Contains")
///                     .routePrefixes("10.0.0.0/8")
///                     .build())
///                 .build())
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
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-vwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-vhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.1.0/24
///   exampleRouteMap:
///     type: azure:network:RouteMap
///     name: example
///     properties:
///       name: example-rm
///       virtualHubId: ${exampleVirtualHub.id}
///       rules:
///         - name: rule1
///           nextStepIfMatched: Continue
///           actions:
///             - type: Add
///               parameters:
///                 - asPaths:
///                     - '22334'
///           matchCriterions:
///             - matchCondition: Contains
///               routePrefixes:
///                 - 10.0.0.0/8
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
/// Route Maps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/routeMap:RouteMap example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/virtualHubs/virtualHub1/routeMaps/routeMap1
/// ```
class RouteMap extends pulumi.CustomResource {
  /// The name which should be used for this Route Map. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `rule` block as defined below.
  late final pulumi.Output<List<RouteMapRule>?> rules;
  /// The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualHubId;

  /// Creates a new [RouteMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteMap]. {@macro pulumi_network_route_map_route_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteMap(
    String name, {
    RouteMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/routeMap:RouteMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.rules = registerOutput<List<RouteMapRule>?>('rules');
    this.virtualHubId = registerOutput<String>('virtualHubId');
  }

  /// Gets an existing [RouteMap] resource's state with the given [name] and [id].
  static RouteMap get(
    String name,
    pulumi.Input<String> id, {
    RouteMapState? state,
  }) {
    return RouteMap._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteMap._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/routeMap:RouteMap',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.rules = registerOutput<List<RouteMapRule>?>('rules');
    this.virtualHubId = registerOutput<String>('virtualHubId');
  }
}
