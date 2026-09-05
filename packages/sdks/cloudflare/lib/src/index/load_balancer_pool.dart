import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_pool_args.dart';
import 'load_balancer_pool_load_shedding.dart';
import 'load_balancer_pool_notification_filter.dart';
import 'load_balancer_pool_origin.dart';
import 'load_balancer_pool_origin_steering.dart';
import 'load_balancer_pool_state.dart';

/// Accepted Permissions
///
/// - `Load Balancing: Monitors and Pools Read`
/// - `Load Balancing: Monitors and Pools Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleLoadBalancerPool = new cloudflare.LoadBalancerPool("example_load_balancer_pool", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "primary-dc-1",
///     origins: [{
///         address: "0.0.0.0",
///         enabled: true,
///         flattenCname: true,
///         header: {
///             host: ["example.com"],
///         },
///         name: "app-server-1",
///         port: 0,
///         virtualNetworkId: "a5624d4e-044a-4ff0-b3e1-e2465353d4b4",
///         weight: 0.6,
///     }],
///     description: "Primary data center - Provider XYZ",
///     enabled: false,
///     latitude: 0,
///     loadShedding: {
///         defaultPercent: 0,
///         defaultPolicy: "random",
///         sessionPercent: 0,
///         sessionPolicy: "hash",
///     },
///     longitude: 0,
///     minimumOrigins: 0,
///     monitor: "monitor",
///     monitorGroup: "monitor_group",
///     notificationEmail: "someone@example.com,sometwo@example.com",
///     notificationFilter: {
///         origin: {
///             disable: true,
///             healthy: true,
///         },
///         pool: {
///             disable: true,
///             healthy: false,
///         },
///     },
///     originSteering: {
///         policy: "random",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_load_balancer_pool = cloudflare.LoadBalancerPool("example_load_balancer_pool",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="primary-dc-1",
///     origins=[{
///         "address": "0.0.0.0",
///         "enabled": True,
///         "flatten_cname": True,
///         "header": {
///             "host": ["example.com"],
///         },
///         "name": "app-server-1",
///         "port": 0,
///         "virtual_network_id": "a5624d4e-044a-4ff0-b3e1-e2465353d4b4",
///         "weight": 0.6,
///     }],
///     description="Primary data center - Provider XYZ",
///     enabled=False,
///     latitude=float(0),
///     load_shedding={
///         "default_percent": float(0),
///         "default_policy": "random",
///         "session_percent": float(0),
///         "session_policy": "hash",
///     },
///     longitude=float(0),
///     minimum_origins=0,
///     monitor="monitor",
///     monitor_group="monitor_group",
///     notification_email="someone@example.com,sometwo@example.com",
///     notification_filter={
///         "origin": {
///             "disable": True,
///             "healthy": True,
///         },
///         "pool": {
///             "disable": True,
///             "healthy": False,
///         },
///     },
///     origin_steering={
///         "policy": "random",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleLoadBalancerPool = new Cloudflare.LoadBalancerPool("example_load_balancer_pool", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "primary-dc-1",
///         Origins = new[]
///         {
///             new Cloudflare.Inputs.LoadBalancerPoolOriginArgs
///             {
///                 Address = "0.0.0.0",
///                 Enabled = true,
///                 FlattenCname = true,
///                 Header = new Cloudflare.Inputs.LoadBalancerPoolOriginHeaderArgs
///                 {
///                     Host = new[]
///                     {
///                         "example.com",
///                     },
///                 },
///                 Name = "app-server-1",
///                 Port = 0,
///                 VirtualNetworkId = "a5624d4e-044a-4ff0-b3e1-e2465353d4b4",
///                 Weight = 0.6,
///             },
///         },
///         Description = "Primary data center - Provider XYZ",
///         Enabled = false,
///         Latitude = 0,
///         LoadShedding = new Cloudflare.Inputs.LoadBalancerPoolLoadSheddingArgs
///         {
///             DefaultPercent = 0,
///             DefaultPolicy = "random",
///             SessionPercent = 0,
///             SessionPolicy = "hash",
///         },
///         Longitude = 0,
///         MinimumOrigins = 0,
///         Monitor = "monitor",
///         MonitorGroup = "monitor_group",
///         NotificationEmail = "someone@example.com,sometwo@example.com",
///         NotificationFilter = new Cloudflare.Inputs.LoadBalancerPoolNotificationFilterArgs
///         {
///             Origin = new Cloudflare.Inputs.LoadBalancerPoolNotificationFilterOriginArgs
///             {
///                 Disable = true,
///                 Healthy = true,
///             },
///             Pool = new Cloudflare.Inputs.LoadBalancerPoolNotificationFilterPoolArgs
///             {
///                 Disable = true,
///                 Healthy = false,
///             },
///         },
///         OriginSteering = new Cloudflare.Inputs.LoadBalancerPoolOriginSteeringArgs
///         {
///             Policy = "random",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewLoadBalancerPool(ctx, "example_load_balancer_pool", &cloudflare.LoadBalancerPoolArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("primary-dc-1"),
/// 			Origins: cloudflare.LoadBalancerPoolOriginArray{
/// 				&cloudflare.LoadBalancerPoolOriginArgs{
/// 					Address:      pulumi.String("0.0.0.0"),
/// 					Enabled:      pulumi.Bool(true),
/// 					FlattenCname: pulumi.Bool(true),
/// 					Header: &cloudflare.LoadBalancerPoolOriginHeaderArgs{
/// 						Host: []string{
/// 							"example.com",
/// 						},
/// 					},
/// 					Name:             pulumi.String("app-server-1"),
/// 					Port:             pulumi.Int(0),
/// 					VirtualNetworkId: pulumi.String("a5624d4e-044a-4ff0-b3e1-e2465353d4b4"),
/// 					Weight:           pulumi.Float64(0.6),
/// 				},
/// 			},
/// 			Description: pulumi.String("Primary data center - Provider XYZ"),
/// 			Enabled:     pulumi.Bool(false),
/// 			Latitude:    pulumi.Float64(0),
/// 			LoadShedding: &cloudflare.LoadBalancerPoolLoadSheddingArgs{
/// 				DefaultPercent: pulumi.Float64(0),
/// 				DefaultPolicy:  pulumi.String("random"),
/// 				SessionPercent: pulumi.Float64(0),
/// 				SessionPolicy:  pulumi.String("hash"),
/// 			},
/// 			Longitude:         pulumi.Float64(0),
/// 			MinimumOrigins:    pulumi.Int(0),
/// 			Monitor:           pulumi.String("monitor"),
/// 			MonitorGroup:      pulumi.String("monitor_group"),
/// 			NotificationEmail: pulumi.String("someone@example.com,sometwo@example.com"),
/// 			NotificationFilter: &cloudflare.LoadBalancerPoolNotificationFilterArgs{
/// 				Origin: &cloudflare.LoadBalancerPoolNotificationFilterOriginArgs{
/// 					Disable: pulumi.Bool(true),
/// 					Healthy: pulumi.Bool(true),
/// 				},
/// 				Pool: &cloudflare.LoadBalancerPoolNotificationFilterPoolArgs{
/// 					Disable: pulumi.Bool(true),
/// 					Healthy: pulumi.Bool(false),
/// 				},
/// 			},
/// 			OriginSteering: &cloudflare.LoadBalancerPoolOriginSteeringArgs{
/// 				Policy: pulumi.String("random"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_loadbalancerpool" "example_load_balancer_pool" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "primary-dc-1"
///   origins {
///     address       = "0.0.0.0"
///     enabled       = true
///     flatten_cname = true
///     header = {
///       host = ["example.com"]
///     }
///     name               = "app-server-1"
///     port               = 0
///     virtual_network_id = "a5624d4e-044a-4ff0-b3e1-e2465353d4b4"
///     weight             = 0.6
///   }
///   description = "Primary data center - Provider XYZ"
///   enabled     = false
///   latitude    = 0
///   load_shedding = {
///     default_percent = 0
///     default_policy  = "random"
///     session_percent = 0
///     session_policy  = "hash"
///   }
///   longitude          = 0
///   minimum_origins    = 0
///   monitor            = "monitor"
///   monitor_group      = "monitor_group"
///   notification_email = "someone@example.com,sometwo@example.com"
///   notification_filter = {
///     origin = {
///       disable = true
///       healthy = true
///     }
///     pool = {
///       disable = true
///       healthy = false
///     }
///   }
///   origin_steering = {
///     policy = "random"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.LoadBalancerPool;
/// import com.pulumi.cloudflare.LoadBalancerPoolArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerPoolOriginArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerPoolOriginHeaderArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerPoolLoadSheddingArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerPoolNotificationFilterArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerPoolNotificationFilterOriginArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerPoolNotificationFilterPoolArgs;
/// import com.pulumi.cloudflare.inputs.LoadBalancerPoolOriginSteeringArgs;
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
///         var exampleLoadBalancerPool = new LoadBalancerPool("exampleLoadBalancerPool", LoadBalancerPoolArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("primary-dc-1")
///             .origins(LoadBalancerPoolOriginArgs.builder()
///                 .address("0.0.0.0")
///                 .enabled(true)
///                 .flattenCname(true)
///                 .header(LoadBalancerPoolOriginHeaderArgs.builder()
///                     .host(Arrays.asList("example.com"))
///                     .build())
///                 .name("app-server-1")
///                 .port(0)
///                 .virtualNetworkId("a5624d4e-044a-4ff0-b3e1-e2465353d4b4")
///                 .weight(0.6)
///                 .build())
///             .description("Primary data center - Provider XYZ")
///             .enabled(false)
///             .latitude(0.0)
///             .loadShedding(LoadBalancerPoolLoadSheddingArgs.builder()
///                 .defaultPercent(0.0)
///                 .defaultPolicy("random")
///                 .sessionPercent(0.0)
///                 .sessionPolicy("hash")
///                 .build())
///             .longitude(0.0)
///             .minimumOrigins(0)
///             .monitor("monitor")
///             .monitorGroup("monitor_group")
///             .notificationEmail("someone@example.com,sometwo@example.com")
///             .notificationFilter(LoadBalancerPoolNotificationFilterArgs.builder()
///                 .origin(LoadBalancerPoolNotificationFilterOriginArgs.builder()
///                     .disable(true)
///                     .healthy(true)
///                     .build())
///                 .pool(LoadBalancerPoolNotificationFilterPoolArgs.builder()
///                     .disable(true)
///                     .healthy(false)
///                     .build())
///                 .build())
///             .originSteering(LoadBalancerPoolOriginSteeringArgs.builder()
///                 .policy("random")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleLoadBalancerPool:
///     type: cloudflare:LoadBalancerPool
///     name: example_load_balancer_pool
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: primary-dc-1
///       origins:
///         - address: 0.0.0.0
///           enabled: true
///           flattenCname: true
///           header:
///             host:
///               - example.com
///           name: app-server-1
///           port: 0
///           virtualNetworkId: a5624d4e-044a-4ff0-b3e1-e2465353d4b4
///           weight: 0.6
///       description: Primary data center - Provider XYZ
///       enabled: false
///       latitude: 0
///       loadShedding:
///         defaultPercent: 0
///         defaultPolicy: random
///         sessionPercent: 0
///         sessionPolicy: hash
///       longitude: 0
///       minimumOrigins: 0
///       monitor: monitor
///       monitorGroup: monitor_group
///       notificationEmail: someone@example.com,sometwo@example.com
///       notificationFilter:
///         origin:
///           disable: true
///           healthy: true
///         pool:
///           disable: true
///           healthy: false
///       originSteering:
///         policy: random
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/loadBalancerPool:LoadBalancerPool example '<account_id>/<pool_id>'
/// ```
class LoadBalancerPool extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// A list of regions from which to run health checks. Null means every Cloudflare data center.
  late final pulumi.Output<List<String>?> checkRegions;
  late final pulumi.Output<String> createdOn;
  /// A human-readable description of the pool.
  late final pulumi.Output<String> description;
  /// This field shows up only if the pool is disabled. This field is set with the time the pool was disabled at.
  late final pulumi.Output<String> disabledAt;
  /// Whether to enable (the default) or disable this pool. Disabled pools will not receive traffic and are excluded from health checks. Disabling a pool will cause any load balancers using it to failover to the next pool (if any).
  late final pulumi.Output<bool> enabled;
  /// A list of health sources, ordered from highest to lowest priority, used to evaluate individual origin health and overall pool health. The load balancer uses the first source that has data and falls back to the next. Currently accepted values are null or the exact array ["regional", "global"]; any other combination is rejected. Null (the default) behaves like ["local", "global"]. ["regional", "global"] makes each region steer on its own health, falling back to the global decision when a region has no fresh data. Setting regional requires at least one region in check_regions.
  late final pulumi.Output<List<String>?> healthSources;
  /// The latitude of the data center containing the origins used in this pool in decimal degrees. If this is set, longitude must also be set.
  late final pulumi.Output<double?> latitude;
  /// Configures load shedding policies and percentages for the pool.
  late final pulumi.Output<LoadBalancerPoolLoadShedding> loadShedding;
  /// The longitude of the data center containing the origins used in this pool in decimal degrees. If this is set, latitude must also be set.
  late final pulumi.Output<double?> longitude;
  /// The minimum number of origins that must be healthy for this pool to serve traffic. If the number of healthy origins falls below this number, the pool will be marked unhealthy and will failover to the next available pool.
  late final pulumi.Output<int> minimumOrigins;
  late final pulumi.Output<String> modifiedOn;
  /// The ID of the Monitor to use for checking the health of origins within this pool.
  late final pulumi.Output<String?> monitor;
  /// The ID of the Monitor Group to use for checking the health of origins within this pool.
  late final pulumi.Output<String?> monitorGroup;
  /// A short name (tag) for the pool. Only alphanumeric characters, hyphens, and underscores are allowed.
  late final pulumi.Output<String> name;
  /// List of networks where Load Balancer or Pool is enabled.
  late final pulumi.Output<List<String>> networks;
  /// This field is now deprecated. It has been moved to Cloudflare's Centralized Notification service https://developers.cloudflare.com/fundamentals/notifications/. The email address to send health status notifications to. This can be an individual mailbox or a mailing list. Multiple emails can be supplied as a comma delimited list.
  late final pulumi.Output<String> notificationEmail;
  /// Filter pool and origin health notifications by resource type or health status. Use null to reset.
  late final pulumi.Output<LoadBalancerPoolNotificationFilter> notificationFilter;
  /// Configures origin steering for the pool. Controls how origins are selected for new sessions and traffic without session affinity.
  late final pulumi.Output<LoadBalancerPoolOriginSteering> originSteering;
  /// The list of origins within this pool. Traffic directed at this pool is balanced across all currently healthy origins, provided the pool itself is healthy.
  late final pulumi.Output<List<LoadBalancerPoolOrigin>> origins;

  /// Creates a new [LoadBalancerPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerPool]. {@macro pulumi_index_load_balancer_pool_load_balancer_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerPool(
    String name, {
    LoadBalancerPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/loadBalancerPool:LoadBalancerPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    checkRegions = registerOutput<List<String>?>('checkRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    disabledAt = registerOutput<String>('disabledAt');
    enabled = registerOutput<bool>('enabled');
    healthSources = registerOutput<List<String>?>('healthSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    latitude = registerOutput<double?>('latitude');
    loadShedding = registerOutput<LoadBalancerPoolLoadShedding>('loadShedding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPoolLoadShedding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    longitude = registerOutput<double?>('longitude');
    minimumOrigins = registerOutput<int>('minimumOrigins');
    modifiedOn = registerOutput<String>('modifiedOn');
    monitor = registerOutput<String?>('monitor');
    monitorGroup = registerOutput<String?>('monitorGroup');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<String>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    notificationEmail = registerOutput<String>('notificationEmail');
    notificationFilter = registerOutput<LoadBalancerPoolNotificationFilter>('notificationFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPoolNotificationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    originSteering = registerOutput<LoadBalancerPoolOriginSteering>('originSteering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPoolOriginSteering.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    origins = registerOutput<List<LoadBalancerPoolOrigin>>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerPoolOrigin>(guardedValue, (value) => LoadBalancerPoolOrigin.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [LoadBalancerPool] resource's state with the given [name] and [id].
  static LoadBalancerPool get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerPoolState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LoadBalancerPool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LoadBalancerPool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/loadBalancerPool:LoadBalancerPool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    checkRegions = registerOutput<List<String>?>('checkRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    disabledAt = registerOutput<String>('disabledAt');
    enabled = registerOutput<bool>('enabled');
    healthSources = registerOutput<List<String>?>('healthSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    latitude = registerOutput<double?>('latitude');
    loadShedding = registerOutput<LoadBalancerPoolLoadShedding>('loadShedding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPoolLoadShedding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    longitude = registerOutput<double?>('longitude');
    minimumOrigins = registerOutput<int>('minimumOrigins');
    modifiedOn = registerOutput<String>('modifiedOn');
    monitor = registerOutput<String?>('monitor');
    monitorGroup = registerOutput<String?>('monitorGroup');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<String>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    notificationEmail = registerOutput<String>('notificationEmail');
    notificationFilter = registerOutput<LoadBalancerPoolNotificationFilter>('notificationFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPoolNotificationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    originSteering = registerOutput<LoadBalancerPoolOriginSteering>('originSteering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPoolOriginSteering.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    origins = registerOutput<List<LoadBalancerPoolOrigin>>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerPoolOrigin>(guardedValue, (value) => LoadBalancerPoolOrigin.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [LoadBalancerPool] resource.
  LoadBalancerPool.reference(String urn)
    : super(
        'cloudflare:index/loadBalancerPool:LoadBalancerPool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    checkRegions = registerOutput<List<String>?>('checkRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    disabledAt = registerOutput<String>('disabledAt');
    enabled = registerOutput<bool>('enabled');
    healthSources = registerOutput<List<String>?>('healthSources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    latitude = registerOutput<double?>('latitude');
    loadShedding = registerOutput<LoadBalancerPoolLoadShedding>('loadShedding', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPoolLoadShedding.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    longitude = registerOutput<double?>('longitude');
    minimumOrigins = registerOutput<int>('minimumOrigins');
    modifiedOn = registerOutput<String>('modifiedOn');
    monitor = registerOutput<String?>('monitor');
    monitorGroup = registerOutput<String?>('monitorGroup');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<String>>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    notificationEmail = registerOutput<String>('notificationEmail');
    notificationFilter = registerOutput<LoadBalancerPoolNotificationFilter>('notificationFilter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPoolNotificationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    originSteering = registerOutput<LoadBalancerPoolOriginSteering>('originSteering', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerPoolOriginSteering.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    origins = registerOutput<List<LoadBalancerPoolOrigin>>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerPoolOrigin>(guardedValue, (value) => LoadBalancerPoolOrigin.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
