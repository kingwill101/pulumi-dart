import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_engine_args.dart';
import 'rules_engine_state.dart';

/// !&gt; **Note:** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new Azure Front Door (standard/premium) resources. For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.
///
/// !&gt; **Note:** The creation of new Azure Front Door (classic) resources is no longer supported following its deprecation on `April 1, 2025`. However, modifications to existing Azure Front Door (classic) resources will continue to be supported until the API reaches full retirement on `March 31, 2027`.
///
/// Manages an Azure Front Door (classic) Rules Engine configuration and rules.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleFrontdoor = new azure.frontdoor.Frontdoor("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     backendPools: [{
///         name: "exampleBackendBing",
///         loadBalancingName: "exampleLoadBalancingSettings1",
///         healthProbeName: "exampleHealthProbeSetting1",
///         backends: [{
///             hostHeader: "www.bing.com",
///             address: "www.bing.com",
///             httpPort: 80,
///             httpsPort: 443,
///         }],
///     }],
///     backendPoolHealthProbes: [{
///         name: "exampleHealthProbeSetting1",
///     }],
///     backendPoolLoadBalancings: [{
///         name: "exampleLoadBalancingSettings1",
///     }],
///     frontendEndpoints: [{
///         name: "exampleFrontendEndpoint1",
///         hostName: "example-FrontDoor.azurefd.net",
///     }],
///     routingRules: [{
///         name: "exampleRoutingRule1",
///         acceptedProtocols: [
///             "Http",
///             "Https",
///         ],
///         patternsToMatches: ["/*"],
///         frontendEndpoints: ["exampleFrontendEndpoint1"],
///     }],
/// });
/// const exampleRulesEngine = new azure.frontdoor.RulesEngine("example_rules_engine", {
///     name: "exampleRulesEngineConfig1",
///     frontdoorName: exampleFrontdoor.name,
///     resourceGroupName: exampleFrontdoor.resourceGroupName,
///     rules: [
///         {
///             name: "debuggingoutput",
///             priority: 1,
///             action: {
///                 responseHeaders: [{
///                     headerActionType: "Append",
///                     headerName: "X-TEST-HEADER",
///                     value: "Append Header Rule",
///                 }],
///             },
///         },
///         {
///             name: "overwriteorigin",
///             priority: 2,
///             matchConditions: [{
///                 variable: "RequestMethod",
///                 operator: "Equal",
///                 values: [
///                     "GET",
///                     "POST",
///                 ],
///             }],
///             action: {
///                 responseHeaders: [
///                     {
///                         headerActionType: "Overwrite",
///                         headerName: "Access-Control-Allow-Origin",
///                         value: "*",
///                     },
///                     {
///                         headerActionType: "Overwrite",
///                         headerName: "Access-Control-Allow-Credentials",
///                         value: "true",
///                     },
///                 ],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_frontdoor = azure.frontdoor.Frontdoor("example",
///     name="example",
///     resource_group_name=example.name,
///     backend_pools=[{
///         "name": "exampleBackendBing",
///         "load_balancing_name": "exampleLoadBalancingSettings1",
///         "health_probe_name": "exampleHealthProbeSetting1",
///         "backends": [{
///             "host_header": "www.bing.com",
///             "address": "www.bing.com",
///             "http_port": 80,
///             "https_port": 443,
///         }],
///     }],
///     backend_pool_health_probes=[{
///         "name": "exampleHealthProbeSetting1",
///     }],
///     backend_pool_load_balancings=[{
///         "name": "exampleLoadBalancingSettings1",
///     }],
///     frontend_endpoints=[{
///         "name": "exampleFrontendEndpoint1",
///         "host_name": "example-FrontDoor.azurefd.net",
///     }],
///     routing_rules=[{
///         "name": "exampleRoutingRule1",
///         "accepted_protocols": [
///             "Http",
///             "Https",
///         ],
///         "patterns_to_matches": ["/*"],
///         "frontend_endpoints": ["exampleFrontendEndpoint1"],
///     }])
/// example_rules_engine = azure.frontdoor.RulesEngine("example_rules_engine",
///     name="exampleRulesEngineConfig1",
///     frontdoor_name=example_frontdoor.name,
///     resource_group_name=example_frontdoor.resource_group_name,
///     rules=[
///         {
///             "name": "debuggingoutput",
///             "priority": 1,
///             "action": {
///                 "response_headers": [{
///                     "header_action_type": "Append",
///                     "header_name": "X-TEST-HEADER",
///                     "value": "Append Header Rule",
///                 }],
///             },
///         },
///         {
///             "name": "overwriteorigin",
///             "priority": 2,
///             "match_conditions": [{
///                 "variable": "RequestMethod",
///                 "operator": "Equal",
///                 "values": [
///                     "GET",
///                     "POST",
///                 ],
///             }],
///             "action": {
///                 "response_headers": [
///                     {
///                         "header_action_type": "Overwrite",
///                         "header_name": "Access-Control-Allow-Origin",
///                         "value": "*",
///                     },
///                     {
///                         "header_action_type": "Overwrite",
///                         "header_name": "Access-Control-Allow-Credentials",
///                         "value": "true",
///                     },
///                 ],
///             },
///         },
///     ])
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleFrontdoor = new Azure.FrontDoor.Frontdoor("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         BackendPools = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorBackendPoolArgs
///             {
///                 Name = "exampleBackendBing",
///                 LoadBalancingName = "exampleLoadBalancingSettings1",
///                 HealthProbeName = "exampleHealthProbeSetting1",
///                 Backends = new[]
///                 {
///                     new Azure.FrontDoor.Inputs.FrontdoorBackendPoolBackendArgs
///                     {
///                         HostHeader = "www.bing.com",
///                         Address = "www.bing.com",
///                         HttpPort = 80,
///                         HttpsPort = 443,
///                     },
///                 },
///             },
///         },
///         BackendPoolHealthProbes = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorBackendPoolHealthProbeArgs
///             {
///                 Name = "exampleHealthProbeSetting1",
///             },
///         },
///         BackendPoolLoadBalancings = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorBackendPoolLoadBalancingArgs
///             {
///                 Name = "exampleLoadBalancingSettings1",
///             },
///         },
///         FrontendEndpoints = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorFrontendEndpointArgs
///             {
///                 Name = "exampleFrontendEndpoint1",
///                 HostName = "example-FrontDoor.azurefd.net",
///             },
///         },
///         RoutingRules = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorRoutingRuleArgs
///             {
///                 Name = "exampleRoutingRule1",
///                 AcceptedProtocols = new[]
///                 {
///                     "Http",
///                     "Https",
///                 },
///                 PatternsToMatches = new[]
///                 {
///                     "/*",
///                 },
///                 FrontendEndpoints = new[]
///                 {
///                     "exampleFrontendEndpoint1",
///                 },
///             },
///         },
///     });
///
///     var exampleRulesEngine = new Azure.FrontDoor.RulesEngine("example_rules_engine", new()
///     {
///         Name = "exampleRulesEngineConfig1",
///         FrontdoorName = exampleFrontdoor.Name,
///         ResourceGroupName = exampleFrontdoor.ResourceGroupName,
///         Rules = new[]
///         {
///             new Azure.FrontDoor.Inputs.RulesEngineRuleArgs
///             {
///                 Name = "debuggingoutput",
///                 Priority = 1,
///                 Action = new Azure.FrontDoor.Inputs.RulesEngineRuleActionArgs
///                 {
///                     ResponseHeaders = new[]
///                     {
///                         new Azure.FrontDoor.Inputs.RulesEngineRuleActionResponseHeaderArgs
///                         {
///                             HeaderActionType = "Append",
///                             HeaderName = "X-TEST-HEADER",
///                             Value = "Append Header Rule",
///                         },
///                     },
///                 },
///             },
///             new Azure.FrontDoor.Inputs.RulesEngineRuleArgs
///             {
///                 Name = "overwriteorigin",
///                 Priority = 2,
///                 MatchConditions = new[]
///                 {
///                     new Azure.FrontDoor.Inputs.RulesEngineRuleMatchConditionArgs
///                     {
///                         Variable = "RequestMethod",
///                         Operator = "Equal",
///                         Values = new[]
///                         {
///                             "GET",
///                             "POST",
///                         },
///                     },
///                 },
///                 Action = new Azure.FrontDoor.Inputs.RulesEngineRuleActionArgs
///                 {
///                     ResponseHeaders = new[]
///                     {
///                         new Azure.FrontDoor.Inputs.RulesEngineRuleActionResponseHeaderArgs
///                         {
///                             HeaderActionType = "Overwrite",
///                             HeaderName = "Access-Control-Allow-Origin",
///                             Value = "*",
///                         },
///                         new Azure.FrontDoor.Inputs.RulesEngineRuleActionResponseHeaderArgs
///                         {
///                             HeaderActionType = "Overwrite",
///                             HeaderName = "Access-Control-Allow-Credentials",
///                             Value = "true",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/frontdoor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoor, err := frontdoor.NewFrontdoor(ctx, "example", &frontdoor.FrontdoorArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			BackendPools: frontdoor.FrontdoorBackendPoolArray{
/// 				&frontdoor.FrontdoorBackendPoolArgs{
/// 					Name:              pulumi.String("exampleBackendBing"),
/// 					LoadBalancingName: pulumi.String("exampleLoadBalancingSettings1"),
/// 					HealthProbeName:   pulumi.String("exampleHealthProbeSetting1"),
/// 					Backends: frontdoor.FrontdoorBackendPoolBackendArray{
/// 						&frontdoor.FrontdoorBackendPoolBackendArgs{
/// 							HostHeader: pulumi.String("www.bing.com"),
/// 							Address:    pulumi.String("www.bing.com"),
/// 							HttpPort:   pulumi.Int(80),
/// 							HttpsPort:  pulumi.Int(443),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			BackendPoolHealthProbes: frontdoor.FrontdoorBackendPoolHealthProbeArray{
/// 				&frontdoor.FrontdoorBackendPoolHealthProbeArgs{
/// 					Name: pulumi.String("exampleHealthProbeSetting1"),
/// 				},
/// 			},
/// 			BackendPoolLoadBalancings: frontdoor.FrontdoorBackendPoolLoadBalancingArray{
/// 				&frontdoor.FrontdoorBackendPoolLoadBalancingArgs{
/// 					Name: pulumi.String("exampleLoadBalancingSettings1"),
/// 				},
/// 			},
/// 			FrontendEndpoints: frontdoor.FrontdoorFrontendEndpointArray{
/// 				&frontdoor.FrontdoorFrontendEndpointArgs{
/// 					Name:     pulumi.String("exampleFrontendEndpoint1"),
/// 					HostName: pulumi.String("example-FrontDoor.azurefd.net"),
/// 				},
/// 			},
/// 			RoutingRules: frontdoor.FrontdoorRoutingRuleArray{
/// 				&frontdoor.FrontdoorRoutingRuleArgs{
/// 					Name: pulumi.String("exampleRoutingRule1"),
/// 					AcceptedProtocols: pulumi.StringArray{
/// 						pulumi.String("Http"),
/// 						pulumi.String("Https"),
/// 					},
/// 					PatternsToMatches: pulumi.StringArray{
/// 						pulumi.String("/*"),
/// 					},
/// 					FrontendEndpoints: pulumi.StringArray{
/// 						pulumi.String("exampleFrontendEndpoint1"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = frontdoor.NewRulesEngine(ctx, "example_rules_engine", &frontdoor.RulesEngineArgs{
/// 			Name:              pulumi.String("exampleRulesEngineConfig1"),
/// 			FrontdoorName:     exampleFrontdoor.Name,
/// 			ResourceGroupName: exampleFrontdoor.ResourceGroupName,
/// 			Rules: frontdoor.RulesEngineRuleArray{
/// 				&frontdoor.RulesEngineRuleArgs{
/// 					Name:     pulumi.String("debuggingoutput"),
/// 					Priority: pulumi.Int(1),
/// 					Action: &frontdoor.RulesEngineRuleActionArgs{
/// 						ResponseHeaders: frontdoor.RulesEngineRuleActionResponseHeaderArray{
/// 							&frontdoor.RulesEngineRuleActionResponseHeaderArgs{
/// 								HeaderActionType: pulumi.String("Append"),
/// 								HeaderName:       pulumi.String("X-TEST-HEADER"),
/// 								Value:            pulumi.String("Append Header Rule"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&frontdoor.RulesEngineRuleArgs{
/// 					Name:     pulumi.String("overwriteorigin"),
/// 					Priority: pulumi.Int(2),
/// 					MatchConditions: frontdoor.RulesEngineRuleMatchConditionArray{
/// 						&frontdoor.RulesEngineRuleMatchConditionArgs{
/// 							Variable: pulumi.String("RequestMethod"),
/// 							Operator: pulumi.String("Equal"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("GET"),
/// 								pulumi.String("POST"),
/// 							},
/// 						},
/// 					},
/// 					Action: &frontdoor.RulesEngineRuleActionArgs{
/// 						ResponseHeaders: frontdoor.RulesEngineRuleActionResponseHeaderArray{
/// 							&frontdoor.RulesEngineRuleActionResponseHeaderArgs{
/// 								HeaderActionType: pulumi.String("Overwrite"),
/// 								HeaderName:       pulumi.String("Access-Control-Allow-Origin"),
/// 								Value:            pulumi.String("*"),
/// 							},
/// 							&frontdoor.RulesEngineRuleActionResponseHeaderArgs{
/// 								HeaderActionType: pulumi.String("Overwrite"),
/// 								HeaderName:       pulumi.String("Access-Control-Allow-Credentials"),
/// 								Value:            pulumi.String("true"),
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
/// import com.pulumi.azure.frontdoor.Frontdoor;
/// import com.pulumi.azure.frontdoor.FrontdoorArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolHealthProbeArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolLoadBalancingArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorFrontendEndpointArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorRoutingRuleArgs;
/// import com.pulumi.azure.frontdoor.RulesEngine;
/// import com.pulumi.azure.frontdoor.RulesEngineArgs;
/// import com.pulumi.azure.frontdoor.inputs.RulesEngineRuleArgs;
/// import com.pulumi.azure.frontdoor.inputs.RulesEngineRuleActionArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleFrontdoor = new Frontdoor("exampleFrontdoor", FrontdoorArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .backendPools(FrontdoorBackendPoolArgs.builder()
///                 .name("exampleBackendBing")
///                 .loadBalancingName("exampleLoadBalancingSettings1")
///                 .healthProbeName("exampleHealthProbeSetting1")
///                 .backends(FrontdoorBackendPoolBackendArgs.builder()
///                     .hostHeader("www.bing.com")
///                     .address("www.bing.com")
///                     .httpPort(80)
///                     .httpsPort(443)
///                     .build())
///                 .build())
///             .backendPoolHealthProbes(FrontdoorBackendPoolHealthProbeArgs.builder()
///                 .name("exampleHealthProbeSetting1")
///                 .build())
///             .backendPoolLoadBalancings(FrontdoorBackendPoolLoadBalancingArgs.builder()
///                 .name("exampleLoadBalancingSettings1")
///                 .build())
///             .frontendEndpoints(FrontdoorFrontendEndpointArgs.builder()
///                 .name("exampleFrontendEndpoint1")
///                 .hostName("example-FrontDoor.azurefd.net")
///                 .build())
///             .routingRules(FrontdoorRoutingRuleArgs.builder()
///                 .name("exampleRoutingRule1")
///                 .acceptedProtocols(
///                     "Http",
///                     "Https")
///                 .patternsToMatches("/*")
///                 .frontendEndpoints("exampleFrontendEndpoint1")
///                 .build())
///             .build());
///
///         var exampleRulesEngine = new RulesEngine("exampleRulesEngine", RulesEngineArgs.builder()
///             .name("exampleRulesEngineConfig1")
///             .frontdoorName(exampleFrontdoor.name())
///             .resourceGroupName(exampleFrontdoor.resourceGroupName())
///             .rules(
///                 RulesEngineRuleArgs.builder()
///                     .name("debuggingoutput")
///                     .priority(1)
///                     .action(RulesEngineRuleActionArgs.builder()
///                         .responseHeaders(RulesEngineRuleActionResponseHeaderArgs.builder()
///                             .headerActionType("Append")
///                             .headerName("X-TEST-HEADER")
///                             .value("Append Header Rule")
///                             .build())
///                         .build())
///                     .build(),
///                 RulesEngineRuleArgs.builder()
///                     .name("overwriteorigin")
///                     .priority(2)
///                     .matchConditions(RulesEngineRuleMatchConditionArgs.builder()
///                         .variable("RequestMethod")
///                         .operator("Equal")
///                         .values(
///                             "GET",
///                             "POST")
///                         .build())
///                     .action(RulesEngineRuleActionArgs.builder()
///                         .responseHeaders(
///                             RulesEngineRuleActionResponseHeaderArgs.builder()
///                                 .headerActionType("Overwrite")
///                                 .headerName("Access-Control-Allow-Origin")
///                                 .value("*")
///                                 .build(),
///                             RulesEngineRuleActionResponseHeaderArgs.builder()
///                                 .headerActionType("Overwrite")
///                                 .headerName("Access-Control-Allow-Credentials")
///                                 .value("true")
///                                 .build())
///                         .build())
///                     .build())
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
///       name: example-rg
///       location: West Europe
///   exampleFrontdoor:
///     type: azure:frontdoor:Frontdoor
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       backendPools:
///         - name: exampleBackendBing
///           loadBalancingName: exampleLoadBalancingSettings1
///           healthProbeName: exampleHealthProbeSetting1
///           backends:
///             - hostHeader: www.bing.com
///               address: www.bing.com
///               httpPort: 80
///               httpsPort: 443
///       backendPoolHealthProbes:
///         - name: exampleHealthProbeSetting1
///       backendPoolLoadBalancings:
///         - name: exampleLoadBalancingSettings1
///       frontendEndpoints:
///         - name: exampleFrontendEndpoint1
///           hostName: example-FrontDoor.azurefd.net
///       routingRules:
///         - name: exampleRoutingRule1
///           acceptedProtocols:
///             - Http
///             - Https
///           patternsToMatches:
///             - /*
///           frontendEndpoints:
///             - exampleFrontendEndpoint1
///   exampleRulesEngine:
///     type: azure:frontdoor:RulesEngine
///     name: example_rules_engine
///     properties:
///       name: exampleRulesEngineConfig1
///       frontdoorName: ${exampleFrontdoor.name}
///       resourceGroupName: ${exampleFrontdoor.resourceGroupName}
///       rules:
///         - name: debuggingoutput
///           priority: 1
///           action:
///             responseHeaders:
///               - headerActionType: Append
///                 headerName: X-TEST-HEADER
///                 value: Append Header Rule
///         - name: overwriteorigin
///           priority: 2
///           matchConditions:
///             - variable: RequestMethod
///               operator: Equal
///               values:
///                 - GET
///                 - POST
///           action:
///             responseHeaders:
///               - headerActionType: Overwrite
///                 headerName: Access-Control-Allow-Origin
///                 value: '*'
///               - headerActionType: Overwrite
///                 headerName: Access-Control-Allow-Credentials
///                 value: 'true'
/// ```
///
///
/// ## Import
///
/// Azure Front Door Rules Engine's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:frontdoor/rulesEngine:RulesEngine example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Network/frontdoors/frontdoor1/rulesEngines/rule1
/// ```
class RulesEngine extends pulumi.CustomResource {
  /// Whether this Rules engine configuration is enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// The name of the Front Door instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> frontdoorName;

  /// The location in which the Front Door Rules Engine exists.
  late final pulumi.Output<String> location;

  /// The name of the Rules engine configuration. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `rule` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;

  /// Creates a new [RulesEngine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RulesEngine]. {@macro pulumi_frontdoor_rules_engine_rules_engine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RulesEngine(
    String name, {
    RulesEngineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:frontdoor/rulesEngine:RulesEngine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enabled = registerOutput<bool?>('enabled');
    frontdoorName = registerOutput<String>('frontdoorName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
  }

  /// Gets an existing [RulesEngine] resource's state with the given [name] and [id].
  static RulesEngine get(
    String name,
    pulumi.Input<String> id, {
    RulesEngineState? state,
  }) {
    return RulesEngine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RulesEngine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:frontdoor/rulesEngine:RulesEngine',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enabled = registerOutput<bool?>('enabled');
    frontdoorName = registerOutput<String>('frontdoorName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
  }
}
