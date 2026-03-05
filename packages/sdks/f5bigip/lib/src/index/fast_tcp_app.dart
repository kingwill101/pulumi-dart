import 'package:pulumi/pulumi.dart' as pulumi;
import 'fast_tcp_app_args.dart';
import 'fast_tcp_app_monitor.dart';
import 'fast_tcp_app_state.dart';
import 'fast_tcp_app_virtual_server.dart';

/// `f5bigip.FastTcpApp` This resource will create and manage FAST TCP applications on BIG-IP from provided JSON declaration.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const fast_tcp_app = new f5bigip.FastTcpApp("fast-tcp-app", {
///     application: "tcp_app_2",
///     tenant: "tcp_app_tenant",
///     virtualServer: {
///         ip: "11.12.16.30",
///         port: 443,
///     }[0],
///     poolMembers: [{
///         addresses: [
///             "10.11.34.65",
///             "56.43.23.76",
///         ],
///         port: 443,
///         priorityGroup: 1,
///         connectionLimit: 4,
///         shareNodes: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// fast_tcp_app = f5bigip.FastTcpApp("fast-tcp-app",
///     application="tcp_app_2",
///     tenant="tcp_app_tenant",
///     virtual_server={
///         "ip": "11.12.16.30",
///         "port": 443,
///     }[0],
///     pool_members=[{
///         "addresses": [
///             "10.11.34.65",
///             "56.43.23.76",
///         ],
///         "port": 443,
///         "priority_group": 1,
///         "connection_limit": 4,
///         "share_nodes": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fast_tcp_app = new F5BigIP.FastTcpApp("fast-tcp-app", new()
///     {
///         Application = "tcp_app_2",
///         Tenant = "tcp_app_tenant",
///         VirtualServer =
///         {
///             { "ip", "11.12.16.30" },
///             { "port", 443 },
///         }[0],
///         PoolMembers = new[]
///         {
///             new F5BigIP.Inputs.FastTcpAppPoolMemberArgs
///             {
///                 Addresses = new[]
///                 {
///                     "10.11.34.65",
///                     "56.43.23.76",
///                 },
///                 Port = 443,
///                 PriorityGroup = 1,
///                 ConnectionLimit = 4,
///                 ShareNodes = true,
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
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := f5bigip.NewFastTcpApp(ctx, "fast-tcp-app", &f5bigip.FastTcpAppArgs{
/// 			Application: pulumi.String("tcp_app_2"),
/// 			Tenant:      pulumi.String("tcp_app_tenant"),
/// 			VirtualServer: map[string]interface{}{
/// 				"ip":   "11.12.16.30",
/// 				"port": 443,
/// 			}[0],
/// 			PoolMembers: f5bigip.FastTcpAppPoolMemberArray{
/// 				&f5bigip.FastTcpAppPoolMemberArgs{
/// 					Addresses: pulumi.StringArray{
/// 						pulumi.String("10.11.34.65"),
/// 						pulumi.String("56.43.23.76"),
/// 					},
/// 					Port:            pulumi.Int(443),
/// 					PriorityGroup:   pulumi.Int(1),
/// 					ConnectionLimit: pulumi.Int(4),
/// 					ShareNodes:      pulumi.Bool(true),
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
/// import com.pulumi.f5bigip.FastTcpApp;
/// import com.pulumi.f5bigip.FastTcpAppArgs;
/// import com.pulumi.f5bigip.inputs.FastTcpAppPoolMemberArgs;
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
///         var fast_tcp_app = new FastTcpApp("fast-tcp-app", FastTcpAppArgs.builder()
///             .application("tcp_app_2")
///             .tenant("tcp_app_tenant")
///             .virtualServer(FastTcpAppVirtualServerArgs.builder()
///                 .ip("11.12.16.30")
///                 .port(443)
///                 .build()[0])
///             .poolMembers(FastTcpAppPoolMemberArgs.builder()
///                 .addresses(
///                     "10.11.34.65",
///                     "56.43.23.76")
///                 .port(443)
///                 .priorityGroup(1)
///                 .connectionLimit(4)
///                 .shareNodes(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
class FastTcpApp extends pulumi.CustomResource {
  /// Name of the FAST TCP application.
  late final pulumi.Output<String> application;

  /// Name of an existing BIG-IP HTTPS pool monitor. Monitors are used to determine the health of the application on each server.
  late final pulumi.Output<String?> existingMonitor;

  /// Name of an existing BIG-IP pool.
  late final pulumi.Output<String?> existingPool;

  /// Name of an existing BIG-IP SNAT pool.
  late final pulumi.Output<String?> existingSnatPool;

  /// Type of fallback persistence record to be created for each new client connection.
  late final pulumi.Output<String?> fallbackPersistence;

  /// Json payload for FAST TCP application.
  late final pulumi.Output<String> fastTcpJson;

  /// A `load balancing method` is an algorithm that the BIG-IP system uses to select a pool member for processing a request. F5 recommends the Least Connections load balancing method
  late final pulumi.Output<String?> loadBalancingMode;

  /// `monitor` block takes input for FAST-Generated Pool Monitor.
  /// See Pool Monitor below for more details.
  late final pulumi.Output<FastTcpAppMonitor?> monitor;

  /// Name of an existing BIG-IP persistence profile to be used.
  late final pulumi.Output<String?> persistenceProfile;

  /// Type of persistence profile to be created. Using this option will enable use of FAST generated persistence profiles.
  late final pulumi.Output<String?> persistenceType;

  /// `pool_members` block takes input for FAST-Generated Pool.
  /// See Pool Members below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>?> poolMembers;

  /// Slow ramp temporarily throttles the number of connections to a new pool member. The recommended value is 300 seconds
  late final pulumi.Output<int?> slowRampTime;

  /// List of address to be used for FAST-Generated SNAT Pool.
  late final pulumi.Output<List<String>?> snatPoolAddresses;

  /// Name of the FAST TCP application tenant.
  late final pulumi.Output<String> tenant;

  /// `virtual_server` block will provide `ip` and `port` options to be used for virtual server.
  /// See virtual server below for more details.
  late final pulumi.Output<FastTcpAppVirtualServer?> virtualServer;

  /// Creates a new [FastTcpApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FastTcpApp]. {@macro pulumi_index_fast_tcp_app_fast_tcp_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FastTcpApp(
    String name, {
    FastTcpAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:index/fastTcpApp:FastTcpApp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    application = registerOutput<String>('application');
    existingMonitor = registerOutput<String?>('existingMonitor');
    existingPool = registerOutput<String?>('existingPool');
    existingSnatPool = registerOutput<String?>('existingSnatPool');
    fallbackPersistence = registerOutput<String?>('fallbackPersistence');
    fastTcpJson = registerOutput<String>('fastTcpJson');
    loadBalancingMode = registerOutput<String?>('loadBalancingMode');
    monitor = registerOutput<FastTcpAppMonitor?>(
      'monitor',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FastTcpAppMonitor.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    persistenceProfile = registerOutput<String?>('persistenceProfile');
    persistenceType = registerOutput<String?>('persistenceType');
    poolMembers = registerOutput<List<Map<String, dynamic>>?>('poolMembers');
    slowRampTime = registerOutput<int?>('slowRampTime');
    snatPoolAddresses = registerOutput<List<String>?>('snatPoolAddresses');
    tenant = registerOutput<String>('tenant');
    virtualServer = registerOutput<FastTcpAppVirtualServer?>(
      'virtualServer',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FastTcpAppVirtualServer.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [FastTcpApp] resource's state with the given [name] and [id].
  static FastTcpApp get(
    String name,
    pulumi.Input<String> id, {
    FastTcpAppState? state,
  }) {
    return FastTcpApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FastTcpApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:index/fastTcpApp:FastTcpApp',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    application = registerOutput<String>('application');
    existingMonitor = registerOutput<String?>('existingMonitor');
    existingPool = registerOutput<String?>('existingPool');
    existingSnatPool = registerOutput<String?>('existingSnatPool');
    fallbackPersistence = registerOutput<String?>('fallbackPersistence');
    fastTcpJson = registerOutput<String>('fastTcpJson');
    loadBalancingMode = registerOutput<String?>('loadBalancingMode');
    monitor = registerOutput<FastTcpAppMonitor?>(
      'monitor',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FastTcpAppMonitor.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    persistenceProfile = registerOutput<String?>('persistenceProfile');
    persistenceType = registerOutput<String?>('persistenceType');
    poolMembers = registerOutput<List<Map<String, dynamic>>?>('poolMembers');
    slowRampTime = registerOutput<int?>('slowRampTime');
    snatPoolAddresses = registerOutput<List<String>?>('snatPoolAddresses');
    tenant = registerOutput<String>('tenant');
    virtualServer = registerOutput<FastTcpAppVirtualServer?>(
      'virtualServer',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FastTcpAppVirtualServer.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
