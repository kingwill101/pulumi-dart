import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_manager_nested_endpoint_args.dart';
import 'traffic_manager_nested_endpoint_state.dart';

/// Manages a Nested Endpoint within a Traffic Manager Profile.
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
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-publicip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     domainNameLabel: "example-pip",
/// });
/// const parent = new azure.network.TrafficManagerProfile("parent", {
///     name: "parent-profile",
///     resourceGroupName: example.name,
///     trafficRoutingMethod: "Weighted",
///     dnsConfig: {
///         relativeName: "parent-profile",
///         ttl: 100,
///     },
///     monitorConfig: {
///         protocol: "HTTP",
///         port: 80,
///         path: "/",
///         intervalInSeconds: 30,
///         timeoutInSeconds: 9,
///         toleratedNumberOfFailures: 3,
///     },
///     tags: {
///         environment: "Production",
///     },
/// });
/// const nested = new azure.network.TrafficManagerProfile("nested", {
///     name: "nested-profile",
///     resourceGroupName: example.name,
///     trafficRoutingMethod: "Priority",
///     dnsConfig: {
///         relativeName: "nested-profile",
///         ttl: 30,
///     },
///     monitorConfig: {
///         protocol: "HTTP",
///         port: 443,
///         path: "/",
///     },
/// });
/// const exampleTrafficManagerNestedEndpoint = new azure.network.TrafficManagerNestedEndpoint("example", {
///     name: "example-endpoint",
///     targetResourceId: nested.id,
///     priority: 1,
///     profileId: parent.id,
///     minimumChildEndpoints: 9,
///     weight: 5,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-publicip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     domain_name_label="example-pip")
/// parent = azure.network.TrafficManagerProfile("parent",
///     name="parent-profile",
///     resource_group_name=example.name,
///     traffic_routing_method="Weighted",
///     dns_config={
///         "relative_name": "parent-profile",
///         "ttl": 100,
///     },
///     monitor_config={
///         "protocol": "HTTP",
///         "port": 80,
///         "path": "/",
///         "interval_in_seconds": 30,
///         "timeout_in_seconds": 9,
///         "tolerated_number_of_failures": 3,
///     },
///     tags={
///         "environment": "Production",
///     })
/// nested = azure.network.TrafficManagerProfile("nested",
///     name="nested-profile",
///     resource_group_name=example.name,
///     traffic_routing_method="Priority",
///     dns_config={
///         "relative_name": "nested-profile",
///         "ttl": 30,
///     },
///     monitor_config={
///         "protocol": "HTTP",
///         "port": 443,
///         "path": "/",
///     })
/// example_traffic_manager_nested_endpoint = azure.network.TrafficManagerNestedEndpoint("example",
///     name="example-endpoint",
///     target_resource_id=nested.id,
///     priority=1,
///     profile_id=parent.id,
///     minimum_child_endpoints=9,
///     weight=5)
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
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-publicip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         DomainNameLabel = "example-pip",
///     });
///
///     var parent = new Azure.Network.TrafficManagerProfile("parent", new()
///     {
///         Name = "parent-profile",
///         ResourceGroupName = example.Name,
///         TrafficRoutingMethod = "Weighted",
///         DnsConfig = new Azure.Network.Inputs.TrafficManagerProfileDnsConfigArgs
///         {
///             RelativeName = "parent-profile",
///             Ttl = 100,
///         },
///         MonitorConfig = new Azure.Network.Inputs.TrafficManagerProfileMonitorConfigArgs
///         {
///             Protocol = "HTTP",
///             Port = 80,
///             Path = "/",
///             IntervalInSeconds = 30,
///             TimeoutInSeconds = 9,
///             ToleratedNumberOfFailures = 3,
///         },
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var nested = new Azure.Network.TrafficManagerProfile("nested", new()
///     {
///         Name = "nested-profile",
///         ResourceGroupName = example.Name,
///         TrafficRoutingMethod = "Priority",
///         DnsConfig = new Azure.Network.Inputs.TrafficManagerProfileDnsConfigArgs
///         {
///             RelativeName = "nested-profile",
///             Ttl = 30,
///         },
///         MonitorConfig = new Azure.Network.Inputs.TrafficManagerProfileMonitorConfigArgs
///         {
///             Protocol = "HTTP",
///             Port = 443,
///             Path = "/",
///         },
///     });
///
///     var exampleTrafficManagerNestedEndpoint = new Azure.Network.TrafficManagerNestedEndpoint("example", new()
///     {
///         Name = "example-endpoint",
///         TargetResourceId = nested.Id,
///         Priority = 1,
///         ProfileId = parent.Id,
///         MinimumChildEndpoints = 9,
///         Weight = 5,
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
/// 		_, err = network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-publicip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			DomainNameLabel:   pulumi.String("example-pip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		parent, err := network.NewTrafficManagerProfile(ctx, "parent", &network.TrafficManagerProfileArgs{
/// 			Name:                 pulumi.String("parent-profile"),
/// 			ResourceGroupName:    example.Name,
/// 			TrafficRoutingMethod: pulumi.String("Weighted"),
/// 			DnsConfig: &network.TrafficManagerProfileDnsConfigArgs{
/// 				RelativeName: pulumi.String("parent-profile"),
/// 				Ttl:          pulumi.Int(100),
/// 			},
/// 			MonitorConfig: &network.TrafficManagerProfileMonitorConfigArgs{
/// 				Protocol:                  pulumi.String("HTTP"),
/// 				Port:                      pulumi.Int(80),
/// 				Path:                      pulumi.String("/"),
/// 				IntervalInSeconds:         pulumi.Int(30),
/// 				TimeoutInSeconds:          pulumi.Int(9),
/// 				ToleratedNumberOfFailures: pulumi.Int(3),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nested, err := network.NewTrafficManagerProfile(ctx, "nested", &network.TrafficManagerProfileArgs{
/// 			Name:                 pulumi.String("nested-profile"),
/// 			ResourceGroupName:    example.Name,
/// 			TrafficRoutingMethod: pulumi.String("Priority"),
/// 			DnsConfig: &network.TrafficManagerProfileDnsConfigArgs{
/// 				RelativeName: pulumi.String("nested-profile"),
/// 				Ttl:          pulumi.Int(30),
/// 			},
/// 			MonitorConfig: &network.TrafficManagerProfileMonitorConfigArgs{
/// 				Protocol: pulumi.String("HTTP"),
/// 				Port:     pulumi.Int(443),
/// 				Path:     pulumi.String("/"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewTrafficManagerNestedEndpoint(ctx, "example", &network.TrafficManagerNestedEndpointArgs{
/// 			Name:                  pulumi.String("example-endpoint"),
/// 			TargetResourceId:      nested.ID(),
/// 			Priority:              pulumi.Int(1),
/// 			ProfileId:             parent.ID(),
/// 			MinimumChildEndpoints: pulumi.Int(9),
/// 			Weight:                pulumi.Int(5),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.TrafficManagerProfile;
/// import com.pulumi.azure.network.TrafficManagerProfileArgs;
/// import com.pulumi.azure.network.inputs.TrafficManagerProfileDnsConfigArgs;
/// import com.pulumi.azure.network.inputs.TrafficManagerProfileMonitorConfigArgs;
/// import com.pulumi.azure.network.TrafficManagerNestedEndpoint;
/// import com.pulumi.azure.network.TrafficManagerNestedEndpointArgs;
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
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-publicip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .domainNameLabel("example-pip")
///             .build());
///
///         var parent = new TrafficManagerProfile("parent", TrafficManagerProfileArgs.builder()
///             .name("parent-profile")
///             .resourceGroupName(example.name())
///             .trafficRoutingMethod("Weighted")
///             .dnsConfig(TrafficManagerProfileDnsConfigArgs.builder()
///                 .relativeName("parent-profile")
///                 .ttl(100)
///                 .build())
///             .monitorConfig(TrafficManagerProfileMonitorConfigArgs.builder()
///                 .protocol("HTTP")
///                 .port(80)
///                 .path("/")
///                 .intervalInSeconds(30)
///                 .timeoutInSeconds(9)
///                 .toleratedNumberOfFailures(3)
///                 .build())
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var nested = new TrafficManagerProfile("nested", TrafficManagerProfileArgs.builder()
///             .name("nested-profile")
///             .resourceGroupName(example.name())
///             .trafficRoutingMethod("Priority")
///             .dnsConfig(TrafficManagerProfileDnsConfigArgs.builder()
///                 .relativeName("nested-profile")
///                 .ttl(30)
///                 .build())
///             .monitorConfig(TrafficManagerProfileMonitorConfigArgs.builder()
///                 .protocol("HTTP")
///                 .port(443)
///                 .path("/")
///                 .build())
///             .build());
///
///         var exampleTrafficManagerNestedEndpoint = new TrafficManagerNestedEndpoint("exampleTrafficManagerNestedEndpoint", TrafficManagerNestedEndpointArgs.builder()
///             .name("example-endpoint")
///             .targetResourceId(nested.id())
///             .priority(1)
///             .profileId(parent.id())
///             .minimumChildEndpoints(9)
///             .weight(5)
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
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-publicip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       domainNameLabel: example-pip
///   parent:
///     type: azure:network:TrafficManagerProfile
///     properties:
///       name: parent-profile
///       resourceGroupName: ${example.name}
///       trafficRoutingMethod: Weighted
///       dnsConfig:
///         relativeName: parent-profile
///         ttl: 100
///       monitorConfig:
///         protocol: HTTP
///         port: 80
///         path: /
///         intervalInSeconds: 30
///         timeoutInSeconds: 9
///         toleratedNumberOfFailures: 3
///       tags:
///         environment: Production
///   nested:
///     type: azure:network:TrafficManagerProfile
///     properties:
///       name: nested-profile
///       resourceGroupName: ${example.name}
///       trafficRoutingMethod: Priority
///       dnsConfig:
///         relativeName: nested-profile
///         ttl: 30
///       monitorConfig:
///         protocol: HTTP
///         port: 443
///         path: /
///   exampleTrafficManagerNestedEndpoint:
///     type: azure:network:TrafficManagerNestedEndpoint
///     name: example
///     properties:
///       name: example-endpoint
///       targetResourceId: ${nested.id}
///       priority: 1
///       profileId: ${parent.id}
///       minimumChildEndpoints: 9
///       weight: 5
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-04-01
///
/// ## Import
///
/// Nested Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/trafficManagerNestedEndpoint:TrafficManagerNestedEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resources/providers/Microsoft.Network/trafficManagerProfiles/example-profile/NestedEndpoints/example-endpoint
/// ```
class TrafficManagerNestedEndpoint extends pulumi.CustomResource {
  /// One or more `custom_header` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> customHeaders;

  /// Is the endpoint enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Specifies the Azure location of the Endpoint, this must be specified for Profiles using the `Performance` routing method.
  late final pulumi.Output<String> endpointLocation;

  /// A list of Geographic Regions used to distribute traffic, such as `WORLD`, `UK` or `DE`. The same location can't be specified in two endpoints. [See the Geographic Hierarchies documentation for more information](https://docs.microsoft.com/rest/api/trafficmanager/geographichierarchies/getdefault).
  late final pulumi.Output<List<String>?> geoMappings;

  /// This argument specifies the minimum number of endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This value must be larger than `0`.
  ///
  /// &gt; **Note:** If `min_child_endpoints` is less than either `minimum_required_child_endpoints_ipv4` or `minimum_required_child_endpoints_ipv6`, then it won't have any effect.
  late final pulumi.Output<int> minimumChildEndpoints;

  /// This argument specifies the minimum number of IPv4 (DNS record type A) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and
  late final pulumi.Output<int?> minimumRequiredChildEndpointsIpv4;

  /// This argument specifies the minimum number of IPv6 (DNS record type AAAA) endpoints that must be ‘online’ in the child profile in order for the parent profile to direct traffic to any of the endpoints in that child profile. This argument only applies to Endpoints of type `nestedEndpoints` and
  late final pulumi.Output<int?> minimumRequiredChildEndpointsIpv6;

  /// The name of the External Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the priority of this Endpoint, this must be specified for Profiles using the `Priority` traffic routing method. Supports values between 1 and 1000, with no Endpoints sharing the same value. If omitted the value will be computed in order of creation.
  late final pulumi.Output<int> priority;

  /// The ID of the Traffic Manager Profile that this External Endpoint should be created within. Changing this forces a new resource to be created.
  late final pulumi.Output<String> profileId;

  /// One or more `subnet` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<Map<String, dynamic>>?> subnets;

  /// The resource id of an Azure resource to target.
  late final pulumi.Output<String> targetResourceId;

  /// Specifies how much traffic should be distributed to this endpoint, this must be specified for Profiles using the Weighted traffic routing method. Valid values are between `1` and `1000`. Defaults to `1`.
  late final pulumi.Output<int?> weight;

  /// Creates a new [TrafficManagerNestedEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficManagerNestedEndpoint]. {@macro pulumi_network_traffic_manager_nested_endpoint_traffic_manager_nested_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficManagerNestedEndpoint(
    String name, {
    TrafficManagerNestedEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/trafficManagerNestedEndpoint:TrafficManagerNestedEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customHeaders = registerOutput<List<Map<String, dynamic>>?>(
      'customHeaders',
    );
    enabled = registerOutput<bool?>('enabled');
    endpointLocation = registerOutput<String>('endpointLocation');
    geoMappings = registerOutput<List<String>?>('geoMappings');
    minimumChildEndpoints = registerOutput<int>('minimumChildEndpoints');
    minimumRequiredChildEndpointsIpv4 = registerOutput<int?>(
      'minimumRequiredChildEndpointsIpv4',
    );
    minimumRequiredChildEndpointsIpv6 = registerOutput<int?>(
      'minimumRequiredChildEndpointsIpv6',
    );
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    profileId = registerOutput<String>('profileId');
    subnets = registerOutput<List<Map<String, dynamic>>?>('subnets');
    targetResourceId = registerOutput<String>('targetResourceId');
    weight = registerOutput<int?>('weight');
  }

  /// Gets an existing [TrafficManagerNestedEndpoint] resource's state with the given [name] and [id].
  static TrafficManagerNestedEndpoint get(
    String name,
    pulumi.Input<String> id, {
    TrafficManagerNestedEndpointState? state,
  }) {
    return TrafficManagerNestedEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficManagerNestedEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/trafficManagerNestedEndpoint:TrafficManagerNestedEndpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customHeaders = registerOutput<List<Map<String, dynamic>>?>(
      'customHeaders',
    );
    enabled = registerOutput<bool?>('enabled');
    endpointLocation = registerOutput<String>('endpointLocation');
    geoMappings = registerOutput<List<String>?>('geoMappings');
    minimumChildEndpoints = registerOutput<int>('minimumChildEndpoints');
    minimumRequiredChildEndpointsIpv4 = registerOutput<int?>(
      'minimumRequiredChildEndpointsIpv4',
    );
    minimumRequiredChildEndpointsIpv6 = registerOutput<int?>(
      'minimumRequiredChildEndpointsIpv6',
    );
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    profileId = registerOutput<String>('profileId');
    subnets = registerOutput<List<Map<String, dynamic>>?>('subnets');
    targetResourceId = registerOutput<String>('targetResourceId');
    weight = registerOutput<int?>('weight');
  }
}
