import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_route_args.dart';
import 'router_route_state.dart';

/// Creates a routing entry on a OpenStack V2 router.
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
/// const routerRoute1 = new openstack.networking.RouterRoute("router_route_1", {
///     routerId: router1.id,
///     destinationCidr: "10.0.1.0/24",
///     nextHop: "192.168.199.254",
/// }, {
///     dependsOn: [int1],
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
/// router_route1 = openstack.networking.RouterRoute("router_route_1",
///     router_id=router1.id,
///     destination_cidr="10.0.1.0/24",
///     next_hop="192.168.199.254",
///     opts = pulumi.ResourceOptions(depends_on=[int1]))
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
///     var routerRoute1 = new OpenStack.Networking.RouterRoute("router_route_1", new()
///     {
///         RouterId = router1.Id,
///         DestinationCidr = "10.0.1.0/24",
///         NextHop = "192.168.199.254",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             int1,
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
/// 		_, err = networking.NewRouterRoute(ctx, "router_route_1", &networking.RouterRouteArgs{
/// 			RouterId:        router1.ID(),
/// 			DestinationCidr: pulumi.String("10.0.1.0/24"),
/// 			NextHop:         pulumi.String("192.168.199.254"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			int1,
/// 		}))
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
/// import com.pulumi.openstack.networking.RouterRoute;
/// import com.pulumi.openstack.networking.RouterRouteArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var routerRoute1 = new RouterRoute("routerRoute1", RouterRouteArgs.builder()
///             .routerId(router1.id())
///             .destinationCidr("10.0.1.0/24")
///             .nextHop("192.168.199.254")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(int1)
///                 .build());
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
///   routerRoute1:
///     type: openstack:networking:RouterRoute
///     name: router_route_1
///     properties:
///       routerId: ${router1.id}
///       destinationCidr: 10.0.1.0/24
///       nextHop: 192.168.199.254
///     options:
///       dependsOn:
///         - ${int1}
/// ```
///
///
/// ## Notes
///
/// The `next_hop` IP address must be directly reachable from the router at the ``openstack.networking.RouterRoute``
/// resource creation time.  You can ensure that by explicitly specifying a dependency on the ``openstack.networking.RouterInterface``
/// resource that connects the next hop to the router, as in the example above.
///
/// ## Import
///
/// Routing entries can be imported using a combined ID using the following format: `<router_id>-route-<destination_cidr>-<next_hop>`
///
/// ```sh
/// $ pulumi import openstack:networking/routerRoute:RouterRoute router_route_1 686fe248-386c-4f70-9f6c-281607dad079-route-10.0.1.0/24-192.168.199.25
/// ```
class RouterRoute extends pulumi.CustomResource {
  /// CIDR block to match on the packet’s destination IP. Changing
  /// this creates a new routing entry.
  late final pulumi.Output<String> destinationCidr;
  /// IP address of the next hop gateway.  Changing
  /// this creates a new routing entry.
  late final pulumi.Output<String> nextHop;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to configure a routing entry on a router. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// routing entry.
  late final pulumi.Output<String> region;
  /// ID of the router this routing entry belongs to. Changing
  /// this creates a new routing entry.
  late final pulumi.Output<String> routerId;

  /// Creates a new [RouterRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterRoute]. {@macro pulumi_networking_router_route_router_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterRoute(
    String name, {
    RouterRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/routerRoute:RouterRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destinationCidr = registerOutput<String>('destinationCidr');
    this.nextHop = registerOutput<String>('nextHop');
    this.region = registerOutput<String>('region');
    this.routerId = registerOutput<String>('routerId');
  }

  /// Gets an existing [RouterRoute] resource's state with the given [name] and [id].
  static RouterRoute get(
    String name,
    pulumi.Input<String> id, {
    RouterRouteState? state,
  }) {
    return RouterRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/routerRoute:RouterRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.destinationCidr = registerOutput<String>('destinationCidr');
    this.nextHop = registerOutput<String>('nextHop');
    this.region = registerOutput<String>('region');
    this.routerId = registerOutput<String>('routerId');
  }
}
