import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_args.dart';
import 'frontdoor_backend_pool.dart';
import 'frontdoor_backend_pool_health_probe.dart';
import 'frontdoor_backend_pool_load_balancing.dart';
import 'frontdoor_backend_pool_setting.dart';
import 'frontdoor_explicit_resource_order.dart';
import 'frontdoor_frontend_endpoint.dart';
import 'frontdoor_routing_rule.dart';
import 'frontdoor_state.dart';

/// &gt; **IMPORTANT** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new Azure Front Door (standard/premium) resources. For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.
///
/// Manages an Azure Front Door (classic) instance.
///
/// Azure Front Door Service is Microsoft's highly available and scalable web application acceleration platform and global HTTP(S) load balancer. It provides built-in DDoS protection and application layer security and caching. Front Door enables you to build applications that maximize and automate high-availability and performance for your end-users. Use Front Door with Azure services including Web/Mobile Apps, Cloud Services and Virtual Machines – or combine it with on-premises services for hybrid deployments and smooth cloud migration.
///
/// Below are some of the key scenarios that Azure Front Door Service addresses:
///
/// * Use Front Door to improve application scale and availability with instant multi-region failover
/// * Use Front Door to improve application performance with SSL offload and routing requests to the fastest available application backend.
/// * Use Front Door for application layer security and DDoS protection for your application.
///
/// &gt; **Note:** The `customHttpsProvisioningEnabled` field and the `customHttpsConfiguration` block have been removed from the `azure.frontdoor.Frontdoor` resource in the `v2.58.0` provider due to changes made by the service team. If you wish to enable the custom HTTPS configuration functionality within your `azure.frontdoor.Frontdoor` resource moving forward you will need to define a separate `azure.frontdoor.CustomHttpsConfiguration` block in your configuration file.
///
/// &gt; **Note:** With the release of the `v2.58.0` provider, if you run the `apply` command against an existing Front Door resource it **will not** apply the detected changes. Instead it will persist the `explicitResourceOrder` mapping structure to the state file. Once this operation has completed the resource will resume functioning normally.This change in behavior in Terraform is due to an issue where the underlying service teams API is now returning the response JSON out of order from the way it was sent to the resource via Terraform causing unexpected discrepancies in the `plan` after the resource has been provisioned. If your pre-existing Front Door instance contains `customHttpsConfiguration` blocks there are additional steps that will need to be completed to successfully migrate your Front Door onto the `v2.58.0` provider which can be found in this guide.
///
/// &gt; **Note:** The creation of new Azure Front Door (classic) resources is no longer supported following its deprecation on `April 1, 2025`. However, modifications to existing Azure Front Door (classic) resources will continue to be supported until the API reaches full retirement on `March 31, 2027`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "FrontDoorExampleResourceGroup",
///     location: "West Europe",
/// });
/// const exampleFrontdoor = new azure.frontdoor.Frontdoor("example", {
///     name: "example-FrontDoor",
///     resourceGroupName: example.name,
///     routingRules: [{
///         name: "exampleRoutingRule1",
///         acceptedProtocols: [
///             "Http",
///             "Https",
///         ],
///         patternsToMatches: ["/*"],
///         frontendEndpoints: ["exampleFrontendEndpoint1"],
///         forwardingConfiguration: {
///             forwardingProtocol: "MatchRequest",
///             backendPoolName: "exampleBackendBing",
///         },
///     }],
///     backendPoolLoadBalancings: [{
///         name: "exampleLoadBalancingSettings1",
///     }],
///     backendPoolHealthProbes: [{
///         name: "exampleHealthProbeSetting1",
///     }],
///     backendPools: [{
///         name: "exampleBackendBing",
///         backends: [{
///             hostHeader: "www.bing.com",
///             address: "www.bing.com",
///             httpPort: 80,
///             httpsPort: 443,
///         }],
///         loadBalancingName: "exampleLoadBalancingSettings1",
///         healthProbeName: "exampleHealthProbeSetting1",
///     }],
///     frontendEndpoints: [{
///         name: "exampleFrontendEndpoint1",
///         hostName: "example-FrontDoor.azurefd.net",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="FrontDoorExampleResourceGroup",
///     location="West Europe")
/// example_frontdoor = azure.frontdoor.Frontdoor("example",
///     name="example-FrontDoor",
///     resource_group_name=example.name,
///     routing_rules=[{
///         "name": "exampleRoutingRule1",
///         "accepted_protocols": [
///             "Http",
///             "Https",
///         ],
///         "patterns_to_matches": ["/*"],
///         "frontend_endpoints": ["exampleFrontendEndpoint1"],
///         "forwarding_configuration": {
///             "forwarding_protocol": "MatchRequest",
///             "backend_pool_name": "exampleBackendBing",
///         },
///     }],
///     backend_pool_load_balancings=[{
///         "name": "exampleLoadBalancingSettings1",
///     }],
///     backend_pool_health_probes=[{
///         "name": "exampleHealthProbeSetting1",
///     }],
///     backend_pools=[{
///         "name": "exampleBackendBing",
///         "backends": [{
///             "host_header": "www.bing.com",
///             "address": "www.bing.com",
///             "http_port": 80,
///             "https_port": 443,
///         }],
///         "load_balancing_name": "exampleLoadBalancingSettings1",
///         "health_probe_name": "exampleHealthProbeSetting1",
///     }],
///     frontend_endpoints=[{
///         "name": "exampleFrontendEndpoint1",
///         "host_name": "example-FrontDoor.azurefd.net",
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
///         Name = "FrontDoorExampleResourceGroup",
///         Location = "West Europe",
///     });
///
///     var exampleFrontdoor = new Azure.FrontDoor.Frontdoor("example", new()
///     {
///         Name = "example-FrontDoor",
///         ResourceGroupName = example.Name,
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
///                 ForwardingConfiguration = new Azure.FrontDoor.Inputs.FrontdoorRoutingRuleForwardingConfigurationArgs
///                 {
///                     ForwardingProtocol = "MatchRequest",
///                     BackendPoolName = "exampleBackendBing",
///                 },
///             },
///         },
///         BackendPoolLoadBalancings = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorBackendPoolLoadBalancingArgs
///             {
///                 Name = "exampleLoadBalancingSettings1",
///             },
///         },
///         BackendPoolHealthProbes = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorBackendPoolHealthProbeArgs
///             {
///                 Name = "exampleHealthProbeSetting1",
///             },
///         },
///         BackendPools = new[]
///         {
///             new Azure.FrontDoor.Inputs.FrontdoorBackendPoolArgs
///             {
///                 Name = "exampleBackendBing",
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
///                 LoadBalancingName = "exampleLoadBalancingSettings1",
///                 HealthProbeName = "exampleHealthProbeSetting1",
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
/// 			Name:     pulumi.String("FrontDoorExampleResourceGroup"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = frontdoor.NewFrontdoor(ctx, "example", &frontdoor.FrontdoorArgs{
/// 			Name:              pulumi.String("example-FrontDoor"),
/// 			ResourceGroupName: example.Name,
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
/// 					ForwardingConfiguration: &frontdoor.FrontdoorRoutingRuleForwardingConfigurationArgs{
/// 						ForwardingProtocol: pulumi.String("MatchRequest"),
/// 						BackendPoolName:    pulumi.String("exampleBackendBing"),
/// 					},
/// 				},
/// 			},
/// 			BackendPoolLoadBalancings: frontdoor.FrontdoorBackendPoolLoadBalancingArray{
/// 				&frontdoor.FrontdoorBackendPoolLoadBalancingArgs{
/// 					Name: pulumi.String("exampleLoadBalancingSettings1"),
/// 				},
/// 			},
/// 			BackendPoolHealthProbes: frontdoor.FrontdoorBackendPoolHealthProbeArray{
/// 				&frontdoor.FrontdoorBackendPoolHealthProbeArgs{
/// 					Name: pulumi.String("exampleHealthProbeSetting1"),
/// 				},
/// 			},
/// 			BackendPools: frontdoor.FrontdoorBackendPoolArray{
/// 				&frontdoor.FrontdoorBackendPoolArgs{
/// 					Name: pulumi.String("exampleBackendBing"),
/// 					Backends: frontdoor.FrontdoorBackendPoolBackendArray{
/// 						&frontdoor.FrontdoorBackendPoolBackendArgs{
/// 							HostHeader: pulumi.String("www.bing.com"),
/// 							Address:    pulumi.String("www.bing.com"),
/// 							HttpPort:   pulumi.Int(80),
/// 							HttpsPort:  pulumi.Int(443),
/// 						},
/// 					},
/// 					LoadBalancingName: pulumi.String("exampleLoadBalancingSettings1"),
/// 					HealthProbeName:   pulumi.String("exampleHealthProbeSetting1"),
/// 				},
/// 			},
/// 			FrontendEndpoints: frontdoor.FrontdoorFrontendEndpointArray{
/// 				&frontdoor.FrontdoorFrontendEndpointArgs{
/// 					Name:     pulumi.String("exampleFrontendEndpoint1"),
/// 					HostName: pulumi.String("example-FrontDoor.azurefd.net"),
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
///   name     = "FrontDoorExampleResourceGroup"
///   location = "West Europe"
/// }
/// resource "azure_frontdoor_frontdoor" "example" {
///   name                = "example-FrontDoor"
///   resource_group_name = azure_core_resourcegroup.example.name
///   routing_rules {
///     name                = "exampleRoutingRule1"
///     accepted_protocols  = ["Http", "Https"]
///     patterns_to_matches = ["/*"]
///     frontend_endpoints  = ["exampleFrontendEndpoint1"]
///     forwarding_configuration = {
///       forwarding_protocol = "MatchRequest"
///       backend_pool_name   = "exampleBackendBing"
///     }
///   }
///   backend_pool_load_balancings {
///     name = "exampleLoadBalancingSettings1"
///   }
///   backend_pool_health_probes {
///     name = "exampleHealthProbeSetting1"
///   }
///   backend_pools {
///     name = "exampleBackendBing"
///     backends {
///       host_header = "www.bing.com"
///       address     = "www.bing.com"
///       http_port   = 80
///       https_port  = 443
///     }
///     load_balancing_name = "exampleLoadBalancingSettings1"
///     health_probe_name   = "exampleHealthProbeSetting1"
///   }
///   frontend_endpoints {
///     name      = "exampleFrontendEndpoint1"
///     host_name = "example-FrontDoor.azurefd.net"
///   }
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
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorRoutingRuleArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorRoutingRuleForwardingConfigurationArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolLoadBalancingArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolHealthProbeArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorBackendPoolBackendArgs;
/// import com.pulumi.azure.frontdoor.inputs.FrontdoorFrontendEndpointArgs;
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
///             .name("FrontDoorExampleResourceGroup")
///             .location("West Europe")
///             .build());
///
///         var exampleFrontdoor = new Frontdoor("exampleFrontdoor", FrontdoorArgs.builder()
///             .name("example-FrontDoor")
///             .resourceGroupName(example.name())
///             .routingRules(FrontdoorRoutingRuleArgs.builder()
///                 .name("exampleRoutingRule1")
///                 .acceptedProtocols(
///                     "Http",
///                     "Https")
///                 .patternsToMatches("/*")
///                 .frontendEndpoints("exampleFrontendEndpoint1")
///                 .forwardingConfiguration(FrontdoorRoutingRuleForwardingConfigurationArgs.builder()
///                     .forwardingProtocol("MatchRequest")
///                     .backendPoolName("exampleBackendBing")
///                     .build())
///                 .build())
///             .backendPoolLoadBalancings(FrontdoorBackendPoolLoadBalancingArgs.builder()
///                 .name("exampleLoadBalancingSettings1")
///                 .build())
///             .backendPoolHealthProbes(FrontdoorBackendPoolHealthProbeArgs.builder()
///                 .name("exampleHealthProbeSetting1")
///                 .build())
///             .backendPools(FrontdoorBackendPoolArgs.builder()
///                 .name("exampleBackendBing")
///                 .backends(FrontdoorBackendPoolBackendArgs.builder()
///                     .hostHeader("www.bing.com")
///                     .address("www.bing.com")
///                     .httpPort(80)
///                     .httpsPort(443)
///                     .build())
///                 .loadBalancingName("exampleLoadBalancingSettings1")
///                 .healthProbeName("exampleHealthProbeSetting1")
///                 .build())
///             .frontendEndpoints(FrontdoorFrontendEndpointArgs.builder()
///                 .name("exampleFrontendEndpoint1")
///                 .hostName("example-FrontDoor.azurefd.net")
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
///       name: FrontDoorExampleResourceGroup
///       location: West Europe
///   exampleFrontdoor:
///     type: azure:frontdoor:Frontdoor
///     name: example
///     properties:
///       name: example-FrontDoor
///       resourceGroupName: ${example.name}
///       routingRules:
///         - name: exampleRoutingRule1
///           acceptedProtocols:
///             - Http
///             - Https
///           patternsToMatches:
///             - /*
///           frontendEndpoints:
///             - exampleFrontendEndpoint1
///           forwardingConfiguration:
///             forwardingProtocol: MatchRequest
///             backendPoolName: exampleBackendBing
///       backendPoolLoadBalancings:
///         - name: exampleLoadBalancingSettings1
///       backendPoolHealthProbes:
///         - name: exampleHealthProbeSetting1
///       backendPools:
///         - name: exampleBackendBing
///           backends:
///             - hostHeader: www.bing.com
///               address: www.bing.com
///               httpPort: 80
///               httpsPort: 443
///           loadBalancingName: exampleLoadBalancingSettings1
///           healthProbeName: exampleHealthProbeSetting1
///       frontendEndpoints:
///         - name: exampleFrontendEndpoint1
///           hostName: example-FrontDoor.azurefd.net
/// ```
///
///
/// ## Import
///
/// Front Doors can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:frontdoor/frontdoor:Frontdoor example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/frontDoors/frontdoor1
/// ```
class Frontdoor extends pulumi.CustomResource {
  /// A `backendPoolHealthProbe` block as defined below.
  late final pulumi.Output<List<FrontdoorBackendPoolHealthProbe>> backendPoolHealthProbes;
  /// A map/dictionary of Backend Pool Health Probe Names (key) to the Backend Pool Health Probe ID (value)
  late final pulumi.Output<Map<String, String>> backendPoolHealthProbesMap;
  /// A map/dictionary of Backend Pool Load Balancing Setting Names (key) to the Backend Pool Load Balancing Setting ID (value)
  late final pulumi.Output<Map<String, String>> backendPoolLoadBalancingSettingsMap;
  /// A `backendPoolLoadBalancing` block as defined below.
  late final pulumi.Output<List<FrontdoorBackendPoolLoadBalancing>> backendPoolLoadBalancings;
  /// A `backendPoolSettings` block as defined below.
  late final pulumi.Output<List<FrontdoorBackendPoolSetting>> backendPoolSettings;
  /// A `backendPool` block as defined below.
  ///
  /// &gt; Azure by default allows specifying up to 50 Backend Pools - but this quota can be increased via Microsoft Support.
  late final pulumi.Output<List<FrontdoorBackendPool>> backendPools;
  /// A map/dictionary of Backend Pool Names (key) to the Backend Pool ID (value)
  late final pulumi.Output<Map<String, String>> backendPoolsMap;
  /// The host that each frontendEndpoint must CNAME to.
  late final pulumi.Output<String> cname;
  late final pulumi.Output<List<FrontdoorExplicitResourceOrder>> explicitResourceOrders;
  /// A friendly name for the Front Door service.
  late final pulumi.Output<String?> friendlyName;
  /// A `frontendEndpoint` block as defined below.
  late final pulumi.Output<List<FrontdoorFrontendEndpoint>> frontendEndpoints;
  /// A map/dictionary of Frontend Endpoint Names (key) to the Frontend Endpoint ID (value)
  late final pulumi.Output<Map<String, String>> frontendEndpointsMap;
  /// The unique ID of the Front Door which is embedded into the incoming headers `X-Azure-FDID` attribute and maybe used to filter traffic sent by the Front Door to your backend.
  late final pulumi.Output<String> headerFrontdoorId;
  /// Should the Front Door Load Balancer be Enabled? Defaults to `true`.
  late final pulumi.Output<bool?> loadBalancerEnabled;
  /// Specifies the name of the Front Door service. Must be globally unique. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group in which the Front Door service should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `routingRule` block as defined below.
  late final pulumi.Output<List<FrontdoorRoutingRule>> routingRules;
  /// A map/dictionary of Routing Rule Names (key) to the Routing Rule ID (value)
  late final pulumi.Output<Map<String, String>> routingRulesMap;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Frontdoor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Frontdoor]. {@macro pulumi_frontdoor_frontdoor_frontdoor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Frontdoor(
    String name, {
    FrontdoorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:frontdoor/frontdoor:Frontdoor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    backendPoolHealthProbes = registerOutput<List<FrontdoorBackendPoolHealthProbe>>('backendPoolHealthProbes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPoolHealthProbe>(guardedValue, (value) => FrontdoorBackendPoolHealthProbe.fromMap((value as Map).cast<String, dynamic>())); });
    backendPoolHealthProbesMap = registerOutput<Map<String, String>>('backendPoolHealthProbesMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    backendPoolLoadBalancingSettingsMap = registerOutput<Map<String, String>>('backendPoolLoadBalancingSettingsMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    backendPoolLoadBalancings = registerOutput<List<FrontdoorBackendPoolLoadBalancing>>('backendPoolLoadBalancings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPoolLoadBalancing>(guardedValue, (value) => FrontdoorBackendPoolLoadBalancing.fromMap((value as Map).cast<String, dynamic>())); });
    backendPoolSettings = registerOutput<List<FrontdoorBackendPoolSetting>>('backendPoolSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPoolSetting>(guardedValue, (value) => FrontdoorBackendPoolSetting.fromMap((value as Map).cast<String, dynamic>())); });
    backendPools = registerOutput<List<FrontdoorBackendPool>>('backendPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPool>(guardedValue, (value) => FrontdoorBackendPool.fromMap((value as Map).cast<String, dynamic>())); });
    backendPoolsMap = registerOutput<Map<String, String>>('backendPoolsMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    cname = registerOutput<String>('cname');
    explicitResourceOrders = registerOutput<List<FrontdoorExplicitResourceOrder>>('explicitResourceOrders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorExplicitResourceOrder>(guardedValue, (value) => FrontdoorExplicitResourceOrder.fromMap((value as Map).cast<String, dynamic>())); });
    friendlyName = registerOutput<String?>('friendlyName');
    frontendEndpoints = registerOutput<List<FrontdoorFrontendEndpoint>>('frontendEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorFrontendEndpoint>(guardedValue, (value) => FrontdoorFrontendEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    frontendEndpointsMap = registerOutput<Map<String, String>>('frontendEndpointsMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    headerFrontdoorId = registerOutput<String>('headerFrontdoorId');
    loadBalancerEnabled = registerOutput<bool?>('loadBalancerEnabled');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routingRules = registerOutput<List<FrontdoorRoutingRule>>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorRoutingRule>(guardedValue, (value) => FrontdoorRoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    routingRulesMap = registerOutput<Map<String, String>>('routingRulesMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Frontdoor] resource's state with the given [name] and [id].
  static Frontdoor get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Frontdoor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Frontdoor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:frontdoor/frontdoor:Frontdoor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    backendPoolHealthProbes = registerOutput<List<FrontdoorBackendPoolHealthProbe>>('backendPoolHealthProbes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPoolHealthProbe>(guardedValue, (value) => FrontdoorBackendPoolHealthProbe.fromMap((value as Map).cast<String, dynamic>())); });
    backendPoolHealthProbesMap = registerOutput<Map<String, String>>('backendPoolHealthProbesMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    backendPoolLoadBalancingSettingsMap = registerOutput<Map<String, String>>('backendPoolLoadBalancingSettingsMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    backendPoolLoadBalancings = registerOutput<List<FrontdoorBackendPoolLoadBalancing>>('backendPoolLoadBalancings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPoolLoadBalancing>(guardedValue, (value) => FrontdoorBackendPoolLoadBalancing.fromMap((value as Map).cast<String, dynamic>())); });
    backendPoolSettings = registerOutput<List<FrontdoorBackendPoolSetting>>('backendPoolSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPoolSetting>(guardedValue, (value) => FrontdoorBackendPoolSetting.fromMap((value as Map).cast<String, dynamic>())); });
    backendPools = registerOutput<List<FrontdoorBackendPool>>('backendPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPool>(guardedValue, (value) => FrontdoorBackendPool.fromMap((value as Map).cast<String, dynamic>())); });
    backendPoolsMap = registerOutput<Map<String, String>>('backendPoolsMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    cname = registerOutput<String>('cname');
    explicitResourceOrders = registerOutput<List<FrontdoorExplicitResourceOrder>>('explicitResourceOrders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorExplicitResourceOrder>(guardedValue, (value) => FrontdoorExplicitResourceOrder.fromMap((value as Map).cast<String, dynamic>())); });
    friendlyName = registerOutput<String?>('friendlyName');
    frontendEndpoints = registerOutput<List<FrontdoorFrontendEndpoint>>('frontendEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorFrontendEndpoint>(guardedValue, (value) => FrontdoorFrontendEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    frontendEndpointsMap = registerOutput<Map<String, String>>('frontendEndpointsMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    headerFrontdoorId = registerOutput<String>('headerFrontdoorId');
    loadBalancerEnabled = registerOutput<bool?>('loadBalancerEnabled');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routingRules = registerOutput<List<FrontdoorRoutingRule>>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorRoutingRule>(guardedValue, (value) => FrontdoorRoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    routingRulesMap = registerOutput<Map<String, String>>('routingRulesMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Frontdoor] resource.
  Frontdoor.reference(String urn)
    : super(
        'azure:frontdoor/frontdoor:Frontdoor',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    backendPoolHealthProbes = registerOutput<List<FrontdoorBackendPoolHealthProbe>>('backendPoolHealthProbes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPoolHealthProbe>(guardedValue, (value) => FrontdoorBackendPoolHealthProbe.fromMap((value as Map).cast<String, dynamic>())); });
    backendPoolHealthProbesMap = registerOutput<Map<String, String>>('backendPoolHealthProbesMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    backendPoolLoadBalancingSettingsMap = registerOutput<Map<String, String>>('backendPoolLoadBalancingSettingsMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    backendPoolLoadBalancings = registerOutput<List<FrontdoorBackendPoolLoadBalancing>>('backendPoolLoadBalancings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPoolLoadBalancing>(guardedValue, (value) => FrontdoorBackendPoolLoadBalancing.fromMap((value as Map).cast<String, dynamic>())); });
    backendPoolSettings = registerOutput<List<FrontdoorBackendPoolSetting>>('backendPoolSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPoolSetting>(guardedValue, (value) => FrontdoorBackendPoolSetting.fromMap((value as Map).cast<String, dynamic>())); });
    backendPools = registerOutput<List<FrontdoorBackendPool>>('backendPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorBackendPool>(guardedValue, (value) => FrontdoorBackendPool.fromMap((value as Map).cast<String, dynamic>())); });
    backendPoolsMap = registerOutput<Map<String, String>>('backendPoolsMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    cname = registerOutput<String>('cname');
    explicitResourceOrders = registerOutput<List<FrontdoorExplicitResourceOrder>>('explicitResourceOrders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorExplicitResourceOrder>(guardedValue, (value) => FrontdoorExplicitResourceOrder.fromMap((value as Map).cast<String, dynamic>())); });
    friendlyName = registerOutput<String?>('friendlyName');
    frontendEndpoints = registerOutput<List<FrontdoorFrontendEndpoint>>('frontendEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorFrontendEndpoint>(guardedValue, (value) => FrontdoorFrontendEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    frontendEndpointsMap = registerOutput<Map<String, String>>('frontendEndpointsMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    headerFrontdoorId = registerOutput<String>('headerFrontdoorId');
    loadBalancerEnabled = registerOutput<bool?>('loadBalancerEnabled');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routingRules = registerOutput<List<FrontdoorRoutingRule>>('routingRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontdoorRoutingRule>(guardedValue, (value) => FrontdoorRoutingRule.fromMap((value as Map).cast<String, dynamic>())); });
    routingRulesMap = registerOutput<Map<String, String>>('routingRulesMap', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
