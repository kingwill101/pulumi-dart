import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_https_app_args.dart';
import 'fast_https_app_monitor.dart';
import 'fast_https_app_pool_member.dart';
import 'fast_https_app_state.dart';
import 'fast_https_app_tls_client_profile.dart';
import 'fast_https_app_tls_server_profile.dart';
import 'fast_https_app_virtual_server.dart';
import 'fast_https_app_waf_security_policy.dart';

/// `f5bigip.FastHttpsApp` This resource will create and manage FAST HTTPS applications on BIG-IP
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
/// const fastHttpsApp = new f5bigip.FastHttpsApp("fast_https_app", {
///     tenant: "fasthttpstenant",
///     application: "fasthttpsapp",
///     virtualServer: {
///         ip: "10.30.40.44",
///         port: 443,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// fast_https_app = f5bigip.FastHttpsApp("fast_https_app",
///     tenant="fasthttpstenant",
///     application="fasthttpsapp",
///     virtual_server={
///         "ip": "10.30.40.44",
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
///     var fastHttpsApp = new F5BigIP.FastHttpsApp("fast_https_app", new()
///     {
///         Tenant = "fasthttpstenant",
///         Application = "fasthttpsapp",
///         VirtualServer = new F5BigIP.Inputs.FastHttpsAppVirtualServerArgs
///         {
///             Ip = "10.30.40.44",
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
/// 		_, err := f5bigip.NewFastHttpsApp(ctx, "fast_https_app", &f5bigip.FastHttpsAppArgs{
/// 			Tenant:      pulumi.String("fasthttpstenant"),
/// 			Application: pulumi.String("fasthttpsapp"),
/// 			VirtualServer: &f5bigip.FastHttpsAppVirtualServerArgs{
/// 				Ip:   pulumi.String("10.30.40.44"),
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
/// import com.pulumi.f5bigip.FastHttpsApp;
/// import com.pulumi.f5bigip.FastHttpsAppArgs;
/// import com.pulumi.f5bigip.inputs.FastHttpsAppVirtualServerArgs;
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
///         var fastHttpsApp = new FastHttpsApp("fastHttpsApp", FastHttpsAppArgs.builder()
///             .tenant("fasthttpstenant")
///             .application("fasthttpsapp")
///             .virtualServer(FastHttpsAppVirtualServerArgs.builder()
///                 .ip("10.30.40.44")
///                 .port(443)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fastHttpsApp:
///     type: f5bigip:FastHttpsApp
///     name: fast_https_app
///     properties:
///       tenant: fasthttpstenant
///       application: fasthttpsapp
///       virtualServer:
///         ip: 10.30.40.44
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
/// const fastHttpsApp = new f5bigip.FastHttpsApp("fast_https_app", {
///     tenant: "fasthttpstenant",
///     application: "fasthttpsapp",
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
/// fast_https_app = f5bigip.FastHttpsApp("fast_https_app",
///     tenant="fasthttpstenant",
///     application="fasthttpsapp",
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
///     var fastHttpsApp = new F5BigIP.FastHttpsApp("fast_https_app", new()
///     {
///         Tenant = "fasthttpstenant",
///         Application = "fasthttpsapp",
///         VirtualServer = new F5BigIP.Inputs.FastHttpsAppVirtualServerArgs
///         {
///             Ip = "10.30.40.44",
///             Port = 443,
///         },
///         PoolMembers = new[]
///         {
///             new F5BigIP.Inputs.FastHttpsAppPoolMemberArgs
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
/// 		_, err = f5bigip.NewFastHttpsApp(ctx, "fast_https_app", &f5bigip.FastHttpsAppArgs{
/// 			Tenant:      pulumi.String("fasthttpstenant"),
/// 			Application: pulumi.String("fasthttpsapp"),
/// 			VirtualServer: &f5bigip.FastHttpsAppVirtualServerArgs{
/// 				Ip:   pulumi.String("10.30.40.44"),
/// 				Port: pulumi.Int(443),
/// 			},
/// 			PoolMembers: f5bigip.FastHttpsAppPoolMemberArray{
/// 				&f5bigip.FastHttpsAppPoolMemberArgs{
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
/// import com.pulumi.f5bigip.FastHttpsApp;
/// import com.pulumi.f5bigip.FastHttpsAppArgs;
/// import com.pulumi.f5bigip.inputs.FastHttpsAppVirtualServerArgs;
/// import com.pulumi.f5bigip.inputs.FastHttpsAppPoolMemberArgs;
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
///         var fastHttpsApp = new FastHttpsApp("fastHttpsApp", FastHttpsAppArgs.builder()
///             .tenant("fasthttpstenant")
///             .application("fasthttpsapp")
///             .virtualServer(FastHttpsAppVirtualServerArgs.builder()
///                 .ip("10.30.40.44")
///                 .port(443)
///                 .build())
///             .poolMembers(FastHttpsAppPoolMemberArgs.builder()
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
///     type: f5bigip:FastHttpsApp
///     name: fast_https_app
///     properties:
///       tenant: fasthttpstenant
///       application: fasthttpsapp
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
class FastHttpsApp extends pulumi.CustomResource {
  /// Name of the FAST HTTPS application.
  late final pulumi.Output<String> application;
  /// List of LTM Policies to be applied FAST HTTPS Application.
  late final pulumi.Output<List<String>?> endpointLtmPolicies;
  /// Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  late final pulumi.Output<String?> existingMonitor;
  /// Name of an existing BIG-IP pool.
  late final pulumi.Output<String?> existingPool;
  /// Name of an existing BIG-IP SNAT pool.
  late final pulumi.Output<String?> existingSnatPool;
  /// Name of an existing TLS client profile.
  late final pulumi.Output<String?> existingTlsClientProfile;
  /// Name of an existing TLS server profile.
  late final pulumi.Output<String?> existingTlsServerProfile;
  /// Name of an existing WAF Security policy.
  late final pulumi.Output<String?> existingWafSecurityPolicy;
  /// Type of fallback persistence record to be created for each new client connection.
  late final pulumi.Output<String?> fallbackPersistence;
  /// Json payload for FAST HTTPS application.
  late final pulumi.Output<String> fastHttpsJson;
  /// A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  late final pulumi.Output<String?> loadBalancingMode;
  /// `monitor` block takes input for FAST-Generated Pool Monitor.
  /// See Pool Monitor below for more details.
  late final pulumi.Output<FastHttpsAppMonitor?> monitor;
  /// Name of an existing BIG-IP persistence profile to be used.
  late final pulumi.Output<String?> persistenceProfile;
  /// Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  late final pulumi.Output<String?> persistenceType;
  /// `pool_members` block takes input for FAST-Generated Pool.
  /// See Pool Members below for more details.
  late final pulumi.Output<List<FastHttpsAppPoolMember>> poolMembers;
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
  /// `tls_client_profile` block takes input for FAST-Generated TLS client Profile.
  /// See TLS Client Profile below for more details.
  ///
  /// > **NOTE** Profile provided by `existing_tls_client_profile` or `tls_client_profile` used for encrypt server-side connections.
  late final pulumi.Output<FastHttpsAppTlsClientProfile?> tlsClientProfile;
  /// `tls_server_profile` block takes input for FAST-Generated TLS Server Profile.
  /// See TLS Server Profile below for more details.
  ///
  /// > **NOTE** Profile provided by `existing_tls_server_profile` or `tls_server_profile` used for decrypt client-side connections.
  late final pulumi.Output<FastHttpsAppTlsServerProfile?> tlsServerProfile;
  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  late final pulumi.Output<FastHttpsAppVirtualServer?> virtualServer;
  /// `waf_security_policy` block takes input for FAST-Generated WAF Security Policy.
  /// See WAF Security Policy below for more details.
  late final pulumi.Output<FastHttpsAppWafSecurityPolicy?> wafSecurityPolicy;

  /// Creates a new [FastHttpsApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FastHttpsApp]. {@macro pulumi_index_fast_https_app_fast_https_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FastHttpsApp(
    String name, {
    FastHttpsAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/fastHttpsApp:FastHttpsApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.application = registerOutput<String>('application');
    this.endpointLtmPolicies = registerOutput<List<String>?>('endpointLtmPolicies');
    this.existingMonitor = registerOutput<String?>('existingMonitor');
    this.existingPool = registerOutput<String?>('existingPool');
    this.existingSnatPool = registerOutput<String?>('existingSnatPool');
    this.existingTlsClientProfile = registerOutput<String?>('existingTlsClientProfile');
    this.existingTlsServerProfile = registerOutput<String?>('existingTlsServerProfile');
    this.existingWafSecurityPolicy = registerOutput<String?>('existingWafSecurityPolicy');
    this.fallbackPersistence = registerOutput<String?>('fallbackPersistence');
    this.fastHttpsJson = registerOutput<String>('fastHttpsJson');
    this.loadBalancingMode = registerOutput<String?>('loadBalancingMode');
    this.monitor = registerOutput<FastHttpsAppMonitor?>('monitor');
    this.persistenceProfile = registerOutput<String?>('persistenceProfile');
    this.persistenceType = registerOutput<String?>('persistenceType');
    this.poolMembers = registerOutput<List<FastHttpsAppPoolMember>>('poolMembers');
    this.securityLogProfiles = registerOutput<List<String>?>('securityLogProfiles');
    this.serviceDiscoveries = registerOutput<List<String>?>('serviceDiscoveries');
    this.slowRampTime = registerOutput<int?>('slowRampTime');
    this.snatPoolAddresses = registerOutput<List<String>?>('snatPoolAddresses');
    this.tenant = registerOutput<String>('tenant');
    this.tlsClientProfile = registerOutput<FastHttpsAppTlsClientProfile?>('tlsClientProfile');
    this.tlsServerProfile = registerOutput<FastHttpsAppTlsServerProfile?>('tlsServerProfile');
    this.virtualServer = registerOutput<FastHttpsAppVirtualServer?>('virtualServer');
    this.wafSecurityPolicy = registerOutput<FastHttpsAppWafSecurityPolicy?>('wafSecurityPolicy');
  }

  /// Gets an existing [FastHttpsApp] resource's state with the given [name] and [id].
  static FastHttpsApp get(
    String name,
    pulumi.Input<String> id, {
    FastHttpsAppState? state,
  }) {
    return FastHttpsApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FastHttpsApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:index/fastHttpsApp:FastHttpsApp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.application = registerOutput<String>('application');
    this.endpointLtmPolicies = registerOutput<List<String>?>('endpointLtmPolicies');
    this.existingMonitor = registerOutput<String?>('existingMonitor');
    this.existingPool = registerOutput<String?>('existingPool');
    this.existingSnatPool = registerOutput<String?>('existingSnatPool');
    this.existingTlsClientProfile = registerOutput<String?>('existingTlsClientProfile');
    this.existingTlsServerProfile = registerOutput<String?>('existingTlsServerProfile');
    this.existingWafSecurityPolicy = registerOutput<String?>('existingWafSecurityPolicy');
    this.fallbackPersistence = registerOutput<String?>('fallbackPersistence');
    this.fastHttpsJson = registerOutput<String>('fastHttpsJson');
    this.loadBalancingMode = registerOutput<String?>('loadBalancingMode');
    this.monitor = registerOutput<FastHttpsAppMonitor?>('monitor');
    this.persistenceProfile = registerOutput<String?>('persistenceProfile');
    this.persistenceType = registerOutput<String?>('persistenceType');
    this.poolMembers = registerOutput<List<FastHttpsAppPoolMember>>('poolMembers');
    this.securityLogProfiles = registerOutput<List<String>?>('securityLogProfiles');
    this.serviceDiscoveries = registerOutput<List<String>?>('serviceDiscoveries');
    this.slowRampTime = registerOutput<int?>('slowRampTime');
    this.snatPoolAddresses = registerOutput<List<String>?>('snatPoolAddresses');
    this.tenant = registerOutput<String>('tenant');
    this.tlsClientProfile = registerOutput<FastHttpsAppTlsClientProfile?>('tlsClientProfile');
    this.tlsServerProfile = registerOutput<FastHttpsAppTlsServerProfile?>('tlsServerProfile');
    this.virtualServer = registerOutput<FastHttpsAppVirtualServer?>('virtualServer');
    this.wafSecurityPolicy = registerOutput<FastHttpsAppWafSecurityPolicy?>('wafSecurityPolicy');
  }
}
