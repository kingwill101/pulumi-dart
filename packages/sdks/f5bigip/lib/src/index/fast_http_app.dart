import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_http_app_args.dart';
import 'fast_http_app_monitor.dart';
import 'fast_http_app_state.dart';
import 'fast_http_app_virtual_server.dart';
import 'fast_http_app_waf_security_policy.dart';

/// `f5bigip.FastHttpApp` This resource will create and manage FAST HTTP applications on BIG-IP
///
/// [FAST documentation](https://clouddocs.f5.com/products/extensions/f5-appsvcs-templates/latest/)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const fastHttpApp = new f5bigip.FastHttpApp("fast_http_app", {
///     tenant: "fasthttptenant",
///     application: "fasthttpapp",
///     virtualServer: {
///         ip: "10.30.30.44",
///         port: 443,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// fast_http_app = f5bigip.FastHttpApp("fast_http_app",
///     tenant="fasthttptenant",
///     application="fasthttpapp",
///     virtual_server={
///         "ip": "10.30.30.44",
///         "port": 443,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fastHttpApp = new F5BigIP.FastHttpApp("fast_http_app", new()
///     {
///         Tenant = "fasthttptenant",
///         Application = "fasthttpapp",
///         VirtualServer = new F5BigIP.Inputs.FastHttpAppVirtualServerArgs
///         {
///             Ip = "10.30.30.44",
///             Port = 443,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := f5bigip.NewFastHttpApp(ctx, "fast_http_app", &f5bigip.FastHttpAppArgs{
/// 			Tenant:      pulumi.String("fasthttptenant"),
/// 			Application: pulumi.String("fasthttpapp"),
/// 			VirtualServer: &f5bigip.FastHttpAppVirtualServerArgs{
/// 				Ip:   pulumi.String("10.30.30.44"),
/// 				Port: pulumi.Int(443),
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
/// import com.pulumi.f5bigip.FastHttpApp;
/// import com.pulumi.f5bigip.FastHttpAppArgs;
/// import com.pulumi.f5bigip.inputs.FastHttpAppVirtualServerArgs;
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
///         var fastHttpApp = new FastHttpApp("fastHttpApp", FastHttpAppArgs.builder()
///             .tenant("fasthttptenant")
///             .application("fasthttpapp")
///             .virtualServer(FastHttpAppVirtualServerArgs.builder()
///                 .ip("10.30.30.44")
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fastHttpApp:
///     type: f5bigip:FastHttpApp
///     name: fast_http_app
///     properties:
///       tenant: fasthttptenant
///       application: fasthttpapp
///       virtualServer:
///         ip: 10.30.30.44
///         port: 443
/// ```
///
///
///
/// ### With Service Discovery
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const TC3 = f5bigip.fast.getAzureServiceDiscovery({
///     resourceGroup: "testazurerg",
///     subscriptionId: "testazuresid",
///     tagKey: "testazuretag",
///     tagValue: "testazurevalue",
/// });
/// const TC3GetGceServiceDiscovery = f5bigip.fast.getGceServiceDiscovery({
///     tagKey: "testgcetag",
///     tagValue: "testgcevalue",
///     region: "testgceregion",
/// });
/// const fastHttpsApp = new f5bigip.FastHttpApp("fast_https_app", {
///     tenant: "fasthttptenant",
///     application: "fasthttpapp",
///     virtualServer: {
///         ip: "10.30.40.44",
///         port: 443,
///     },
///     poolMembers: [{
///         addresses: [
///             "10.11.40.120",
///             "10.11.30.121",
///             "10.11.30.122",
///         ],
///         port: 80,
///     }],
///     serviceDiscoveries: [
///         TC3GetGceServiceDiscovery.then(TC3GetGceServiceDiscovery => TC3GetGceServiceDiscovery.gceSdJson),
///         TC3.then(TC3 => TC3.azureSdJson),
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// tc3 = f5bigip.fast.get_azure_service_discovery(resource_group="testazurerg",
///     subscription_id="testazuresid",
///     tag_key="testazuretag",
///     tag_value="testazurevalue")
/// tc3_get_gce_service_discovery = f5bigip.fast.get_gce_service_discovery(tag_key="testgcetag",
///     tag_value="testgcevalue",
///     region="testgceregion")
/// fast_https_app = f5bigip.FastHttpApp("fast_https_app",
///     tenant="fasthttptenant",
///     application="fasthttpapp",
///     virtual_server={
///         "ip": "10.30.40.44",
///         "port": 443,
///     },
///     pool_members=[{
///         "addresses": [
///             "10.11.40.120",
///             "10.11.30.121",
///             "10.11.30.122",
///         ],
///         "port": 80,
///     }],
///     service_discoveries=[
///         tc3_get_gce_service_discovery.gce_sd_json,
///         tc3.azure_sd_json,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var TC3 = F5BigIP.Fast.GetAzureServiceDiscovery.Invoke(new()
///     {
///         ResourceGroup = "testazurerg",
///         SubscriptionId = "testazuresid",
///         TagKey = "testazuretag",
///         TagValue = "testazurevalue",
///     });
///
///     var TC3GetGceServiceDiscovery = F5BigIP.Fast.GetGceServiceDiscovery.Invoke(new()
///     {
///         TagKey = "testgcetag",
///         TagValue = "testgcevalue",
///         Region = "testgceregion",
///     });
///
///     var fastHttpsApp = new F5BigIP.FastHttpApp("fast_https_app", new()
///     {
///         Tenant = "fasthttptenant",
///         Application = "fasthttpapp",
///         VirtualServer = new F5BigIP.Inputs.FastHttpAppVirtualServerArgs
///         {
///             Ip = "10.30.40.44",
///             Port = 443,
///         },
///         PoolMembers = new[]
///         {
///             new F5BigIP.Inputs.FastHttpAppPoolMemberArgs
///             {
///                 Addresses = new[]
///                 {
///                     "10.11.40.120",
///                     "10.11.30.121",
///                     "10.11.30.122",
///                 },
///                 Port = 80,
///             },
///         },
///         ServiceDiscoveries = new[]
///         {
///             TC3GetGceServiceDiscovery.Apply(getGceServiceDiscoveryResult => getGceServiceDiscoveryResult.GceSdJson),
///             TC3.Apply(getAzureServiceDiscoveryResult => getAzureServiceDiscoveryResult.AzureSdJson),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/fast"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		TC3, err := fast.GetAzureServiceDiscovery(ctx, &fast.GetAzureServiceDiscoveryArgs{
/// 			ResourceGroup:  "testazurerg",
/// 			SubscriptionId: "testazuresid",
/// 			TagKey:         pulumi.StringRef("testazuretag"),
/// 			TagValue:       pulumi.StringRef("testazurevalue"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		TC3GetGceServiceDiscovery, err := fast.GetGceServiceDiscovery(ctx, &fast.GetGceServiceDiscoveryArgs{
/// 			TagKey:   "testgcetag",
/// 			TagValue: "testgcevalue",
/// 			Region:   "testgceregion",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = f5bigip.NewFastHttpApp(ctx, "fast_https_app", &f5bigip.FastHttpAppArgs{
/// 			Tenant:      pulumi.String("fasthttptenant"),
/// 			Application: pulumi.String("fasthttpapp"),
/// 			VirtualServer: &f5bigip.FastHttpAppVirtualServerArgs{
/// 				Ip:   pulumi.String("10.30.40.44"),
/// 				Port: pulumi.Int(443),
/// 			},
/// 			PoolMembers: f5bigip.FastHttpAppPoolMemberArray{
/// 				&f5bigip.FastHttpAppPoolMemberArgs{
/// 					Addresses: pulumi.StringArray{
/// 						pulumi.String("10.11.40.120"),
/// 						pulumi.String("10.11.30.121"),
/// 						pulumi.String("10.11.30.122"),
/// 					},
/// 					Port: pulumi.Int(80),
/// 				},
/// 			},
/// 			ServiceDiscoveries: pulumi.StringArray{
/// 				pulumi.String(TC3GetGceServiceDiscovery.GceSdJson),
/// 				pulumi.String(TC3.AzureSdJson),
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
/// import com.pulumi.f5bigip.fast.FastFunctions;
/// import com.pulumi.f5bigip.fast.inputs.GetAzureServiceDiscoveryArgs;
/// import com.pulumi.f5bigip.fast.inputs.GetGceServiceDiscoveryArgs;
/// import com.pulumi.f5bigip.FastHttpApp;
/// import com.pulumi.f5bigip.FastHttpAppArgs;
/// import com.pulumi.f5bigip.inputs.FastHttpAppVirtualServerArgs;
/// import com.pulumi.f5bigip.inputs.FastHttpAppPoolMemberArgs;
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
///         final var TC3 = FastFunctions.getAzureServiceDiscovery(GetAzureServiceDiscoveryArgs.builder()
///             .resourceGroup("testazurerg")
///             .subscriptionId("testazuresid")
///             .tagKey("testazuretag")
///             .tagValue("testazurevalue")
///             .build());
///
///         final var TC3GetGceServiceDiscovery = FastFunctions.getGceServiceDiscovery(GetGceServiceDiscoveryArgs.builder()
///             .tagKey("testgcetag")
///             .tagValue("testgcevalue")
///             .region("testgceregion")
///             .build());
///
///         var fastHttpsApp = new FastHttpApp("fastHttpsApp", FastHttpAppArgs.builder()
///             .tenant("fasthttptenant")
///             .application("fasthttpapp")
///             .virtualServer(FastHttpAppVirtualServerArgs.builder()
///                 .ip("10.30.40.44")
///                 .port(443)
///                 .build())
///             .poolMembers(FastHttpAppPoolMemberArgs.builder()
///                 .addresses(
///                     "10.11.40.120",
///                     "10.11.30.121",
///                     "10.11.30.122")
///                 .port(80)
///                 .build())
///             .serviceDiscoveries(
///                 TC3GetGceServiceDiscovery.gceSdJson(),
///                 TC3.azureSdJson())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fastHttpsApp:
///     type: f5bigip:FastHttpApp
///     name: fast_https_app
///     properties:
///       tenant: fasthttptenant
///       application: fasthttpapp
///       virtualServer:
///         ip: 10.30.40.44
///         port: 443
///       poolMembers:
///         - addresses:
///             - 10.11.40.120
///             - 10.11.30.121
///             - 10.11.30.122
///           port: 80
///       serviceDiscoveries:
///         - ${TC3GetGceServiceDiscovery.gceSdJson}
///         - ${TC3.azureSdJson}
/// variables:
///   TC3:
///     fn::invoke:
///       function: f5bigip:fast:getAzureServiceDiscovery
///       arguments:
///         resourceGroup: testazurerg
///         subscriptionId: testazuresid
///         tagKey: testazuretag
///         tagValue: testazurevalue
///   TC3GetGceServiceDiscovery:
///     fn::invoke:
///       function: f5bigip:fast:getGceServiceDiscovery
///       arguments:
///         tagKey: testgcetag
///         tagValue: testgcevalue
///         region: testgceregion
/// ```
class FastHttpApp extends pulumi.CustomResource {
  /// Name of the FAST HTTPS application.
  late final pulumi.Output<String> application;
  /// List of LTM Policies to be applied FAST HTTP Application.
  late final pulumi.Output<List<String>?> endpointLtmPolicies;
  /// Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  late final pulumi.Output<String?> existingMonitor;
  /// Select an existing BIG-IP Pool
  late final pulumi.Output<String?> existingPool;
  /// Name of an existing BIG-IP SNAT pool.
  late final pulumi.Output<String?> existingSnatPool;
  /// Name of an existing WAF Security policy.
  late final pulumi.Output<String?> existingWafSecurityPolicy;
  /// Type of fallback persistence record to be created for each new client connection.
  late final pulumi.Output<String?> fallbackPersistence;
  /// Json payload for FAST HTTP application.
  late final pulumi.Output<String> fastHttpJson;
  /// A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  late final pulumi.Output<String?> loadBalancingMode;
  /// `monitor` block takes input for FAST-Generated Pool Monitor.
  /// See Pool Monitor below for more details.
  late final pulumi.Output<FastHttpAppMonitor?> monitor;
  /// Name of an existing BIG-IP persistence profile to be used.
  late final pulumi.Output<String?> persistenceProfile;
  /// Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  late final pulumi.Output<String?> persistenceType;
  /// `pool_members` block takes input for FAST-Generated Pool.
  /// See Pool Members below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>> poolMembers;
  /// List of security log profiles to be used for FAST application
  late final pulumi.Output<List<String>?> securityLogProfiles;
  /// List of different cloud service discovery config provided as string, provided `service_discovery` block to Automatically Discover Pool Members with Service Discovery on different clouds.
  late final pulumi.Output<List<String>?> serviceDiscoveries;
  /// Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  late final pulumi.Output<int?> slowRampTime;
  /// List of address to be used for FAST-Generated SNAT Pool.
  late final pulumi.Output<List<String>?> snatPoolAddresses;
  /// Name of the FAST HTTPS application tenant.
  late final pulumi.Output<String> tenant;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  late final pulumi.Output<FastHttpAppVirtualServer?> virtualServer;
  /// `waf_security_policy` block takes input for FAST-Generated WAF Security Policy.
  /// See WAF Security Policy below for more details.
  late final pulumi.Output<FastHttpAppWafSecurityPolicy?> wafSecurityPolicy;

  /// Creates a new [FastHttpApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FastHttpApp]. {@macro pulumi_index_fast_http_app_fast_http_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FastHttpApp(
    String name, {
    FastHttpAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/fastHttpApp:FastHttpApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    application = registerOutput<String>('application');
    endpointLtmPolicies = registerOutput<List<String>?>('endpointLtmPolicies');
    existingMonitor = registerOutput<String?>('existingMonitor');
    existingPool = registerOutput<String?>('existingPool');
    existingSnatPool = registerOutput<String?>('existingSnatPool');
    existingWafSecurityPolicy = registerOutput<String?>('existingWafSecurityPolicy');
    fallbackPersistence = registerOutput<String?>('fallbackPersistence');
    fastHttpJson = registerOutput<String>('fastHttpJson');
    loadBalancingMode = registerOutput<String?>('loadBalancingMode');
    monitor = registerOutput<FastHttpAppMonitor?>('monitor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FastHttpAppMonitor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    persistenceProfile = registerOutput<String?>('persistenceProfile');
    persistenceType = registerOutput<String?>('persistenceType');
    poolMembers = registerOutput<List<Map<String, dynamic>>>('poolMembers');
    securityLogProfiles = registerOutput<List<String>?>('securityLogProfiles');
    serviceDiscoveries = registerOutput<List<String>?>('serviceDiscoveries');
    slowRampTime = registerOutput<int?>('slowRampTime');
    snatPoolAddresses = registerOutput<List<String>?>('snatPoolAddresses');
    tenant = registerOutput<String>('tenant');
    virtualServer = registerOutput<FastHttpAppVirtualServer?>('virtualServer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FastHttpAppVirtualServer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wafSecurityPolicy = registerOutput<FastHttpAppWafSecurityPolicy?>('wafSecurityPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FastHttpAppWafSecurityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FastHttpApp] resource's state with the given [name] and [id].
  static FastHttpApp get(
    String name,
    pulumi.Input<String> id, {
    FastHttpAppState? state,
  }) {
    return FastHttpApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FastHttpApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/fastHttpApp:FastHttpApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    application = registerOutput<String>('application');
    endpointLtmPolicies = registerOutput<List<String>?>('endpointLtmPolicies');
    existingMonitor = registerOutput<String?>('existingMonitor');
    existingPool = registerOutput<String?>('existingPool');
    existingSnatPool = registerOutput<String?>('existingSnatPool');
    existingWafSecurityPolicy = registerOutput<String?>('existingWafSecurityPolicy');
    fallbackPersistence = registerOutput<String?>('fallbackPersistence');
    fastHttpJson = registerOutput<String>('fastHttpJson');
    loadBalancingMode = registerOutput<String?>('loadBalancingMode');
    monitor = registerOutput<FastHttpAppMonitor?>('monitor', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FastHttpAppMonitor.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    persistenceProfile = registerOutput<String?>('persistenceProfile');
    persistenceType = registerOutput<String?>('persistenceType');
    poolMembers = registerOutput<List<Map<String, dynamic>>>('poolMembers');
    securityLogProfiles = registerOutput<List<String>?>('securityLogProfiles');
    serviceDiscoveries = registerOutput<List<String>?>('serviceDiscoveries');
    slowRampTime = registerOutput<int?>('slowRampTime');
    snatPoolAddresses = registerOutput<List<String>?>('snatPoolAddresses');
    tenant = registerOutput<String>('tenant');
    virtualServer = registerOutput<FastHttpAppVirtualServer?>('virtualServer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FastHttpAppVirtualServer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    wafSecurityPolicy = registerOutput<FastHttpAppWafSecurityPolicy?>('wafSecurityPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FastHttpAppWafSecurityPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
