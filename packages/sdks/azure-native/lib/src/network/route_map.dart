import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_args.dart';
import 'route_map_rule_response.dart';

/// The RouteMap child resource of a Virtual hub.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### RouteMapPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routeMap = new AzureNative.Network.RouteMap("routeMap", new()
///     {
///         AssociatedInboundConnections = new[]
///         {
///             "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteGateways/exrGateway1/expressRouteConnections/exrConn1",
///         },
///         AssociatedOutboundConnections = new[] {},
///         ResourceGroupName = "rg1",
///         RouteMapName = "routeMap1",
///         Rules = new[]
///         {
///             new AzureNative.Network.Inputs.RouteMapRuleArgs
///             {
///                 Actions = new[]
///                 {
///                     new AzureNative.Network.Inputs.ActionArgs
///                     {
///                         Parameters = new[]
///                         {
///                             new AzureNative.Network.Inputs.ParameterArgs
///                             {
///                                 AsPath = new[]
///                                 {
///                                     "22334",
///                                 },
///                                 Community = new() { },
///                                 RoutePrefix = new() { },
///                             },
///                         },
///                         Type = AzureNative.Network.RouteMapActionType.Add,
///                     },
///                 },
///                 MatchCriteria = new[]
///                 {
///                     new AzureNative.Network.Inputs.CriterionArgs
///                     {
///                         AsPath = new() { },
///                         Community = new() { },
///                         MatchCondition = AzureNative.Network.RouteMapMatchCondition.Contains,
///                         RoutePrefix = new[]
///                         {
///                             "10.0.0.0/8",
///                         },
///                     },
///                 },
///                 Name = "rule1",
///                 NextStepIfMatched = AzureNative.Network.NextStep.Continue,
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
/// 		_, err := network.NewRouteMap(ctx, "routeMap", &network.RouteMapArgs{
/// 			AssociatedInboundConnections: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteGateways/exrGateway1/expressRouteConnections/exrConn1"),
/// 			},
/// 			AssociatedOutboundConnections: pulumi.StringArray{},
/// 			ResourceGroupName:             pulumi.String("rg1"),
/// 			RouteMapName:                  pulumi.String("routeMap1"),
/// 			Rules: network.RouteMapRuleArray{
/// 				&network.RouteMapRuleArgs{
/// 					Actions: network.ActionArray{
/// 						&network.ActionArgs{
/// 							Parameters: network.ParameterArray{
/// 								&network.ParameterArgs{
/// 									AsPath: pulumi.StringArray{
/// 										pulumi.String("22334"),
/// 									},
/// 									Community:   pulumi.StringArray{},
/// 									RoutePrefix: pulumi.StringArray{},
/// 								},
/// 							},
/// 							Type: pulumi.String(network.RouteMapActionTypeAdd),
/// 						},
/// 					},
/// 					MatchCriteria: network.CriterionArray{
/// 						&network.CriterionArgs{
/// 							AsPath:         pulumi.StringArray{},
/// 							Community:      pulumi.StringArray{},
/// 							MatchCondition: pulumi.String(network.RouteMapMatchConditionContains),
/// 							RoutePrefix: pulumi.StringArray{
/// 								pulumi.String("10.0.0.0/8"),
/// 							},
/// 						},
/// 					},
/// 					Name:              pulumi.String("rule1"),
/// 					NextStepIfMatched: pulumi.String(network.NextStepContinue),
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
/// resource "azure-native_network_routemap" "routeMap" {
///   associated_inbound_connections  = ["/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteGateways/exrGateway1/expressRouteConnections/exrConn1"]
///   associated_outbound_connections = []
///   resource_group_name             = "rg1"
///   route_map_name                  = "routeMap1"
///   rules {
///     actions {
///       parameters {
///         as_path      = ["22334"]
///         community    = []
///         route_prefix = []
///       }
///       type = "Add"
///     }
///     match_criteria {
///       as_path         = []
///       community       = []
///       match_condition = "Contains"
///       route_prefix    = ["10.0.0.0/8"]
///     }
///     name                 = "rule1"
///     next_step_if_matched = "Continue"
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
/// import com.pulumi.azurenative.network.RouteMap;
/// import com.pulumi.azurenative.network.RouteMapArgs;
/// import com.pulumi.azurenative.network.inputs.RouteMapRuleArgs;
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
///         var routeMap = new RouteMap("routeMap", RouteMapArgs.builder()
///             .associatedInboundConnections("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteGateways/exrGateway1/expressRouteConnections/exrConn1")
///             .associatedOutboundConnections()
///             .resourceGroupName("rg1")
///             .routeMapName("routeMap1")
///             .rules(RouteMapRuleArgs.builder()
///                 .actions(ActionArgs.builder()
///                     .parameters(ParameterArgs.builder()
///                         .asPath("22334")
///                         .community()
///                         .routePrefix()
///                         .build())
///                     .type("Add")
///                     .build())
///                 .matchCriteria(CriterionArgs.builder()
///                     .asPath()
///                     .community()
///                     .matchCondition("Contains")
///                     .routePrefix("10.0.0.0/8")
///                     .build())
///                 .name("rule1")
///                 .nextStepIfMatched("Continue")
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
/// const routeMap = new azure_native.network.RouteMap("routeMap", {
///     associatedInboundConnections: ["/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteGateways/exrGateway1/expressRouteConnections/exrConn1"],
///     associatedOutboundConnections: [],
///     resourceGroupName: "rg1",
///     routeMapName: "routeMap1",
///     rules: [{
///         actions: [{
///             parameters: [{
///                 asPath: ["22334"],
///                 community: [],
///                 routePrefix: [],
///             }],
///             type: azure_native.network.RouteMapActionType.Add,
///         }],
///         matchCriteria: [{
///             asPath: [],
///             community: [],
///             matchCondition: azure_native.network.RouteMapMatchCondition.Contains,
///             routePrefix: ["10.0.0.0/8"],
///         }],
///         name: "rule1",
///         nextStepIfMatched: azure_native.network.NextStep.Continue,
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
/// route_map = azure_native.network.RouteMap("routeMap",
///     associated_inbound_connections=["/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteGateways/exrGateway1/expressRouteConnections/exrConn1"],
///     associated_outbound_connections=[],
///     resource_group_name="rg1",
///     route_map_name="routeMap1",
///     rules=[{
///         "actions": [{
///             "parameters": [{
///                 "as_path": ["22334"],
///                 "community": [],
///                 "route_prefix": [],
///             }],
///             "type": azure_native.network.RouteMapActionType.ADD,
///         }],
///         "match_criteria": [{
///             "as_path": [],
///             "community": [],
///             "match_condition": azure_native.network.RouteMapMatchCondition.CONTAINS,
///             "route_prefix": ["10.0.0.0/8"],
///         }],
///         "name": "rule1",
///         "next_step_if_matched": azure_native.network.NextStep.CONTINUE_,
///     }],
///     virtual_hub_name="virtualHub1")
///
/// ```
///
/// ```yaml
/// resources:
///   routeMap:
///     type: azure-native:network:RouteMap
///     properties:
///       associatedInboundConnections:
///         - /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/expressRouteGateways/exrGateway1/expressRouteConnections/exrConn1
///       associatedOutboundConnections: []
///       resourceGroupName: rg1
///       routeMapName: routeMap1
///       rules:
///         - actions:
///             - parameters:
///                 - asPath:
///                     - '22334'
///                   community: []
///                   routePrefix: []
///               type: Add
///           matchCriteria:
///             - asPath: []
///               community: []
///               matchCondition: Contains
///               routePrefix:
///                 - 10.0.0.0/8
///           name: rule1
///           nextStepIfMatched: Continue
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
/// $ pulumi import azure-native:network:RouteMap routeMap1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}/routeMaps/{routeMapName}
/// ```
class RouteMap extends pulumi.CustomResource {
  /// List of connections which have this RoutMap associated for inbound traffic.
  late final pulumi.Output<List<String>?> associatedInboundConnections;
  /// List of connections which have this RoutMap associated for outbound traffic.
  late final pulumi.Output<List<String>?> associatedOutboundConnections;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String> name;
  /// The provisioning state of the RouteMap resource.
  late final pulumi.Output<String> provisioningState;
  /// List of RouteMap rules to be applied.
  late final pulumi.Output<List<RouteMapRuleResponse>?> rules;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [RouteMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteMap]. {@macro pulumi_network_route_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteMap(
    String name, {
    RouteMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:RouteMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedInboundConnections = registerOutput<List<String>?>('associatedInboundConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    associatedOutboundConnections = registerOutput<List<String>?>('associatedOutboundConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    rules = registerOutput<List<RouteMapRuleResponse>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteMapRuleResponse>(guardedValue, (value) => RouteMapRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [RouteMap] resource.
  RouteMap.reference(String urn)
    : super(
        'azure-native:network:RouteMap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    associatedInboundConnections = registerOutput<List<String>?>('associatedInboundConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    associatedOutboundConnections = registerOutput<List<String>?>('associatedOutboundConnections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    rules = registerOutput<List<RouteMapRuleResponse>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteMapRuleResponse>(guardedValue, (value) => RouteMapRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    type = registerOutput<String>('type');
  }
}
