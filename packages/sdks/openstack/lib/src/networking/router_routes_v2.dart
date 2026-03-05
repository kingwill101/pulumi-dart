import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_routes_v2_args.dart';
import 'router_routes_v2_state.dart';

/// Creates routing entries on a OpenStack V2 router.
///
/// &gt; **Note:** This resource uses the OpenStack Neutron `extraroute-atomic`
/// extension. If your environment does not have this extension, you should use the
/// `openstack.networking.RouterRoute` resource to add routes instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const router1 = new openstack.networking.Router("router_1", {
///     name: "router_1",
///     adminStateUp: true,
/// });
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "network_1",
///     adminStateUp: true,
/// });
/// const subnet1 = new openstack.networking.Subnet("subnet_1", {
///     networkId: network1.id,
///     cidr: "192.168.199.0/24",
///     ipVersion: 4,
/// });
/// const int1 = new openstack.networking.RouterInterface("int_1", {
///     routerId: router1.id,
///     subnetId: subnet1.id,
/// });
/// const routerRoutes1 = new openstack.networking.RouterRoutesV2("router_routes_1", {
///     routerId: int1.routerId,
///     routes: [
///         {
///             destinationCidr: "10.0.1.0/24",
///             nextHop: "192.168.199.254",
///         },
///         {
///             destinationCidr: "10.0.2.0/24",
///             nextHop: "192.168.199.254",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// router1 = openstack.networking.Router("router_1",
///     name="router_1",
///     admin_state_up=True)
/// network1 = openstack.networking.Network("network_1",
///     name="network_1",
///     admin_state_up=True)
/// subnet1 = openstack.networking.Subnet("subnet_1",
///     network_id=network1.id,
///     cidr="192.168.199.0/24",
///     ip_version=4)
/// int1 = openstack.networking.RouterInterface("int_1",
///     router_id=router1.id,
///     subnet_id=subnet1.id)
/// router_routes1 = openstack.networking.RouterRoutesV2("router_routes_1",
///     router_id=int1.router_id,
///     routes=[
///         {
///             "destination_cidr": "10.0.1.0/24",
///             "next_hop": "192.168.199.254",
///         },
///         {
///             "destination_cidr": "10.0.2.0/24",
///             "next_hop": "192.168.199.254",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var router1 = new OpenStack.Networking.Router("router_1", new()
///     {
///         Name = "router_1",
///         AdminStateUp = true,
///     });
///
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "network_1",
///         AdminStateUp = true,
///     });
///
///     var subnet1 = new OpenStack.Networking.Subnet("subnet_1", new()
///     {
///         NetworkId = network1.Id,
///         Cidr = "192.168.199.0/24",
///         IpVersion = 4,
///     });
///
///     var int1 = new OpenStack.Networking.RouterInterface("int_1", new()
///     {
///         RouterId = router1.Id,
///         SubnetId = subnet1.Id,
///     });
///
///     var routerRoutes1 = new OpenStack.Networking.RouterRoutesV2("router_routes_1", new()
///     {
///         RouterId = int1.RouterId,
///         Routes = new[]
///         {
///             new OpenStack.Networking.Inputs.RouterRoutesV2RouteArgs
///             {
///                 DestinationCidr = "10.0.1.0/24",
///                 NextHop = "192.168.199.254",
///             },
///             new OpenStack.Networking.Inputs.RouterRoutesV2RouteArgs
///             {
///                 DestinationCidr = "10.0.2.0/24",
///                 NextHop = "192.168.199.254",
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
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/networking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		router1, err := networking.NewRouter(ctx, "router_1", &networking.RouterArgs{
/// 			Name:         pulumi.String("router_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("network_1"),
/// 			AdminStateUp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet1, err := networking.NewSubnet(ctx, "subnet_1", &networking.SubnetArgs{
/// 			NetworkId: network1.ID(),
/// 			Cidr:      pulumi.String("192.168.199.0/24"),
/// 			IpVersion: pulumi.Int(4),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		int1, err := networking.NewRouterInterface(ctx, "int_1", &networking.RouterInterfaceArgs{
/// 			RouterId: router1.ID(),
/// 			SubnetId: subnet1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewRouterRoutesV2(ctx, "router_routes_1", &networking.RouterRoutesV2Args{
/// 			RouterId: int1.RouterId,
/// 			Routes: networking.RouterRoutesV2RouteArray{
/// 				&networking.RouterRoutesV2RouteArgs{
/// 					DestinationCidr: pulumi.String("10.0.1.0/24"),
/// 					NextHop:         pulumi.String("192.168.199.254"),
/// 				},
/// 				&networking.RouterRoutesV2RouteArgs{
/// 					DestinationCidr: pulumi.String("10.0.2.0/24"),
/// 					NextHop:         pulumi.String("192.168.199.254"),
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
/// import com.pulumi.openstack.networking.Router;
/// import com.pulumi.openstack.networking.RouterArgs;
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.Subnet;
/// import com.pulumi.openstack.networking.SubnetArgs;
/// import com.pulumi.openstack.networking.RouterInterface;
/// import com.pulumi.openstack.networking.RouterInterfaceArgs;
/// import com.pulumi.openstack.networking.RouterRoutesV2;
/// import com.pulumi.openstack.networking.RouterRoutesV2Args;
/// import com.pulumi.openstack.networking.inputs.RouterRoutesV2RouteArgs;
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
///         var router1 = new Router("router1", RouterArgs.builder()
///             .name("router_1")
///             .adminStateUp(true)
///             .build());
///
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network_1")
///             .adminStateUp(true)
///             .build());
///
///         var subnet1 = new Subnet("subnet1", SubnetArgs.builder()
///             .networkId(network1.id())
///             .cidr("192.168.199.0/24")
///             .ipVersion(4)
///             .build());
///
///         var int1 = new RouterInterface("int1", RouterInterfaceArgs.builder()
///             .routerId(router1.id())
///             .subnetId(subnet1.id())
///             .build());
///
///         var routerRoutes1 = new RouterRoutesV2("routerRoutes1", RouterRoutesV2Args.builder()
///             .routerId(int1.routerId())
///             .routes(
///                 RouterRoutesV2RouteArgs.builder()
///                     .destinationCidr("10.0.1.0/24")
///                     .nextHop("192.168.199.254")
///                     .build(),
///                 RouterRoutesV2RouteArgs.builder()
///                     .destinationCidr("10.0.2.0/24")
///                     .nextHop("192.168.199.254")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   router1:
///     type: openstack:networking:Router
///     name: router_1
///     properties:
///       name: router_1
///       adminStateUp: 'true'
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: network_1
///       adminStateUp: 'true'
///   subnet1:
///     type: openstack:networking:Subnet
///     name: subnet_1
///     properties:
///       networkId: ${network1.id}
///       cidr: 192.168.199.0/24
///       ipVersion: 4
///   int1:
///     type: openstack:networking:RouterInterface
///     name: int_1
///     properties:
///       routerId: ${router1.id}
///       subnetId: ${subnet1.id}
///   routerRoutes1:
///     type: openstack:networking:RouterRoutesV2
///     name: router_routes_1
///     properties:
///       routerId: ${int1.routerId}
///       routes:
///         - destinationCidr: 10.0.1.0/24
///           nextHop: 192.168.199.254
///         - destinationCidr: 10.0.2.0/24
///           nextHop: 192.168.199.254
/// ```
///
///
/// ## Notes
///
/// The `next_hop` IP address must be directly reachable from the router at the
/// ``openstack.networking.RouterRoutesV2`` resource creation time.  You can
/// ensure that by explicitly specifying a dependency on the
/// ``openstack.networking.RouterInterface`` resource that connects the next
/// hop to the router, as in the example above.
///
/// ## Import
///
/// Routing entries can be imported using a router `id`:
///
/// ```sh
/// $ pulumi import openstack:networking/routerRoutesV2:RouterRoutesV2 router_routes_1 686fe248-386c-4f70-9f6c-281607dad079
/// ```
class RouterRoutesV2 extends pulumi.CustomResource {
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure routing entres on a router. If
  /// omitted, the `region` argument of the provider is used. Changing this creates
  /// new routing entries.
  late final pulumi.Output<String> region;
  /// ID of the router these routing entries belong to.
  /// Changing this creates new routing entries.
  late final pulumi.Output<String> routerId;
  /// A set of routing entries to add to the router.
  late final pulumi.Output<List<Map<String, dynamic>>?> routes;

  /// Creates a new [RouterRoutesV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterRoutesV2]. {@macro pulumi_networking_router_routes_v2_router_routes_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterRoutesV2(
    String name, {
    RouterRoutesV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/routerRoutesV2:RouterRoutesV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    routerId = registerOutput<String>('routerId');
    routes = registerOutput<List<Map<String, dynamic>>?>('routes');
  }

  /// Gets an existing [RouterRoutesV2] resource's state with the given [name] and [id].
  static RouterRoutesV2 get(
    String name,
    pulumi.Input<String> id, {
    RouterRoutesV2State? state,
  }) {
    return RouterRoutesV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterRoutesV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/routerRoutesV2:RouterRoutesV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    routerId = registerOutput<String>('routerId');
    routes = registerOutput<List<Map<String, dynamic>>?>('routes');
  }
}
