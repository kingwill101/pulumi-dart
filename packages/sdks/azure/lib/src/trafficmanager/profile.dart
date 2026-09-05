import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_args.dart';
import 'profile_dns_config.dart';
import 'profile_monitor_config.dart';
import 'profile_state.dart';

/// Manages a Traffic Manager Profile to which multiple endpoints can be attached.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const server = new random.index.Id("server", {
///     keepers: {
///         aziId: 1,
///     },
///     byteLength: 8,
/// });
/// const example = new azure.core.ResourceGroup("example", {
///     name: "trafficmanagerProfile",
///     location: "West Europe",
/// });
/// const exampleTrafficManagerProfile = new azure.network.TrafficManagerProfile("example", {
///     name: server.hex,
///     resourceGroupName: example.name,
///     trafficRoutingMethod: "Weighted",
///     dnsConfig: {
///         relativeName: server.hex,
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// server = random.Id("server",
///     keepers={
///         aziId: 1,
///     },
///     byte_length=8)
/// example = azure.core.ResourceGroup("example",
///     name="trafficmanagerProfile",
///     location="West Europe")
/// example_traffic_manager_profile = azure.network.TrafficManagerProfile("example",
///     name=server["hex"],
///     resource_group_name=example.name,
///     traffic_routing_method="Weighted",
///     dns_config={
///         "relative_name": server["hex"],
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
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new Random.Id("server", new()
///     {
///         Keepers =
///         {
///             { "aziId", 1 },
///         },
///         ByteLength = 8,
///     });
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "trafficmanagerProfile",
///         Location = "West Europe",
///     });
///
///     var exampleTrafficManagerProfile = new Azure.Network.TrafficManagerProfile("example", new()
///     {
///         Name = server.Hex,
///         ResourceGroupName = example.Name,
///         TrafficRoutingMethod = "Weighted",
///         DnsConfig = new Azure.Network.Inputs.TrafficManagerProfileDnsConfigArgs
///         {
///             RelativeName = server.Hex,
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		server, err := random.NewId(ctx, "server", &random.IdArgs{
/// 			Keepers: map[string]int{
/// 				"aziId": 1,
/// 			},
/// 			ByteLength: 8,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("trafficmanagerProfile"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewTrafficManagerProfile(ctx, "example", &network.TrafficManagerProfileArgs{
/// 			Name:                 server.Hex,
/// 			ResourceGroupName:    example.Name,
/// 			TrafficRoutingMethod: pulumi.String("Weighted"),
/// 			DnsConfig: &network.TrafficManagerProfileDnsConfigArgs{
/// 				RelativeName: server.Hex,
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
///     random = {
///       source = "pulumi/random"
///     }
///   }
/// }
///
/// resource "random_id" "server" {
///   keepers = {
///     "aziId" = 1
///   }
///   byte_length = 8
/// }
/// resource "azure_core_resourcegroup" "example" {
///   name     = "trafficmanagerProfile"
///   location = "West Europe"
/// }
/// resource "azure_network_trafficmanagerprofile" "example" {
///   name                   = random_id.server.hex
///   resource_group_name    = azure_core_resourcegroup.example.name
///   traffic_routing_method = "Weighted"
///   dns_config = {
///     relative_name = random_id.server.hex
///     ttl           = 100
///   }
///   monitor_config = {
///     protocol                     = "HTTP"
///     port                         = 80
///     path                         = "/"
///     interval_in_seconds          = 30
///     timeout_in_seconds           = 9
///     tolerated_number_of_failures = 3
///   }
///   tags = {
///     "environment" = "Production"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.TrafficManagerProfile;
/// import com.pulumi.azure.network.TrafficManagerProfileArgs;
/// import com.pulumi.azure.network.inputs.TrafficManagerProfileDnsConfigArgs;
/// import com.pulumi.azure.network.inputs.TrafficManagerProfileMonitorConfigArgs;
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
///         var server = new Id("server", IdArgs.builder()
///             .keepers(Map.of("aziId", 1))
///             .byteLength(8)
///             .build());
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("trafficmanagerProfile")
///             .location("West Europe")
///             .build());
///
///         var exampleTrafficManagerProfile = new TrafficManagerProfile("exampleTrafficManagerProfile", TrafficManagerProfileArgs.builder()
///             .name(server.hex())
///             .resourceGroupName(example.name())
///             .trafficRoutingMethod("Weighted")
///             .dnsConfig(TrafficManagerProfileDnsConfigArgs.builder()
///                 .relativeName(server.hex())
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   server:
///     type: random:Id
///     properties:
///       keepers:
///         aziId: 1
///       byteLength: 8
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: trafficmanagerProfile
///       location: West Europe
///   exampleTrafficManagerProfile:
///     type: azure:network:TrafficManagerProfile
///     name: example
///     properties:
///       name: ${server.hex}
///       resourceGroupName: ${example.name}
///       trafficRoutingMethod: Weighted
///       dnsConfig:
///         relativeName: ${server.hex}
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
/// Traffic Manager Profiles can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:trafficmanager/profile:Profile exampleProfile /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/trafficManagerProfiles/mytrafficmanagerprofile1
/// ```
class Profile extends pulumi.CustomResource {
  /// This block specifies the DNS configuration of the Profile. One `dnsConfig` block as defined below.
  late final pulumi.Output<ProfileDnsConfig> dnsConfig;
  /// The FQDN of the created Profile.
  late final pulumi.Output<String> fqdn;
  /// The amount of endpoints to return for DNS queries to this Profile. Possible values range from `1` to `8`.
  ///
  /// &gt; **Note:** `maxReturn` must be set when the `trafficRoutingMethod` is `MultiValue`.
  late final pulumi.Output<int?> maxReturn;
  /// This block specifies the Endpoint monitoring configuration for the Profile. One `monitorConfig` block as defined below.
  late final pulumi.Output<ProfileMonitorConfig> monitorConfig;
  /// The name of the Traffic Manager profile. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The status of the profile, can be set to either `Enabled` or `Disabled`. Defaults to `Enabled`.
  late final pulumi.Output<String?> profileStatus;
  /// The name of the resource group in which to create the Traffic Manager profile. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the algorithm used to route traffic. Possible values are `Geographic`, `Weighted`, `Performance`, `Priority`, `Subnet` and `MultiValue`.
  /// * `Geographic` - Traffic is routed based on Geographic regions specified in the Endpoint.
  /// * `MultiValue` - All healthy Endpoints are returned.  MultiValue routing method works only if all the endpoints of type `External` and are specified as IPv4 or IPv6 addresses.
  /// * `Performance` - Traffic is routed via the User's closest Endpoint
  /// * `Priority` - Traffic is routed to the Endpoint with the lowest `priority` value.
  /// * `Subnet` - Traffic is routed based on a mapping of sets of end-user IP address ranges to a specific Endpoint within a Traffic Manager profile.
  /// * `Weighted` - Traffic is spread across Endpoints proportional to their `weight` value.
  late final pulumi.Output<String> trafficRoutingMethod;
  /// Indicates whether Traffic View is enabled for the Traffic Manager profile.
  late final pulumi.Output<bool?> trafficViewEnabled;

  /// Creates a new [Profile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Profile]. {@macro pulumi_trafficmanager_profile_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Profile(
    String name, {
    ProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:trafficmanager/profile:Profile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    dnsConfig = registerOutput<ProfileDnsConfig>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfileDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fqdn = registerOutput<String>('fqdn');
    maxReturn = registerOutput<int?>('maxReturn');
    monitorConfig = registerOutput<ProfileMonitorConfig>('monitorConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfileMonitorConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    profileStatus = registerOutput<String?>('profileStatus');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficRoutingMethod = registerOutput<String>('trafficRoutingMethod');
    trafficViewEnabled = registerOutput<bool?>('trafficViewEnabled');
  }

  /// Gets an existing [Profile] resource's state with the given [name] and [id].
  static Profile get(
    String name,
    pulumi.Input<String> id, {
    ProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Profile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Profile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:trafficmanager/profile:Profile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dnsConfig = registerOutput<ProfileDnsConfig>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfileDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fqdn = registerOutput<String>('fqdn');
    maxReturn = registerOutput<int?>('maxReturn');
    monitorConfig = registerOutput<ProfileMonitorConfig>('monitorConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfileMonitorConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    profileStatus = registerOutput<String?>('profileStatus');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficRoutingMethod = registerOutput<String>('trafficRoutingMethod');
    trafficViewEnabled = registerOutput<bool?>('trafficViewEnabled');
  }

  /// Creates a typed reference to an existing [Profile] resource.
  Profile.reference(String urn)
    : super(
        'azure:trafficmanager/profile:Profile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dnsConfig = registerOutput<ProfileDnsConfig>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfileDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fqdn = registerOutput<String>('fqdn');
    maxReturn = registerOutput<int?>('maxReturn');
    monitorConfig = registerOutput<ProfileMonitorConfig>('monitorConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProfileMonitorConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    profileStatus = registerOutput<String?>('profileStatus');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficRoutingMethod = registerOutput<String>('trafficRoutingMethod');
    trafficViewEnabled = registerOutput<bool?>('trafficViewEnabled');
  }
}
