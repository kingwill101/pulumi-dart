import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';
import 'route_state.dart';

/// `f5bigip.net.Route` Manages a route configuration
///
/// For resources should be named with their "full path". The full path is the combination of the partition + name of the resource. For example /Common/my-pool.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const route2 = new f5bigip.net.Route("route2", {
///     name: "/Common/external-route",
///     network: "10.10.10.0/24",
///     gw: "1.1.1.2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// route2 = f5bigip.net.Route("route2",
///     name="/Common/external-route",
///     network="10.10.10.0/24",
///     gw="1.1.1.2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var route2 = new F5BigIP.Net.Route("route2", new()
///     {
///         Name = "/Common/external-route",
///         Network = "10.10.10.0/24",
///         Gw = "1.1.1.2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/net"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := net.NewRoute(ctx, "route2", &net.RouteArgs{
/// 			Name:    pulumi.String("/Common/external-route"),
/// 			Network: pulumi.String("10.10.10.0/24"),
/// 			Gw:      pulumi.String("1.1.1.2"),
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
/// import com.pulumi.f5bigip.net.Route;
/// import com.pulumi.f5bigip.net.RouteArgs;
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
///         var route2 = new Route("route2", RouteArgs.builder()
///             .name("/Common/external-route")
///             .network("10.10.10.0/24")
///             .gw("1.1.1.2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   route2:
///     type: f5bigip:net:Route
///     properties:
///       name: /Common/external-route
///       network: 10.10.10.0/24
///       gw: 1.1.1.2
/// ```
class Route extends pulumi.CustomResource {
  /// Specifies a gateway address for the route.
  late final pulumi.Output<String?> gw;
  /// Name of the route.Name of Route should be full path,full path is the combination of the `partition + route name`,For ex: `/Common/test-net-route`.
  late final pulumi.Output<String> name;
  /// The destination subnet and netmask for the route.
  late final pulumi.Output<String> network;
  /// reject route
  late final pulumi.Output<bool?> reject;
  /// tunnel_ref to route traffic
  late final pulumi.Output<String?> tunnelRef;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_net_route_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:net/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.gw = registerOutput<String?>('gw');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.reject = registerOutput<bool?>('reject');
    this.tunnelRef = registerOutput<String?>('tunnelRef');
  }

  /// Gets an existing [Route] resource's state with the given [name] and [id].
  static Route get(
    String name,
    pulumi.Input<String> id, {
    RouteState? state,
  }) {
    return Route._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Route._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:net/route:Route',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.gw = registerOutput<String?>('gw');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.reject = registerOutput<bool?>('reject');
    this.tunnelRef = registerOutput<String?>('tunnelRef');
  }
}
