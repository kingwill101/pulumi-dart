import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_interface_args.dart';
import 'router_interface_state.dart';

/// Manages a V2 router interface resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network_1", {
///     name: "tf_test_network",
///     adminStateUp: true,
/// });
/// const subnet1 = new openstack.networking.Subnet("subnet_1", {
///     networkId: network1.id,
///     cidr: "192.168.199.0/24",
///     ipVersion: 4,
/// });
/// const router1 = new openstack.networking.Router("router_1", {
///     name: "my_router",
///     externalNetworkId: "f67f0d72-0ddf-11e4-9d95-e1f29f417e2f",
/// });
/// const routerInterface1 = new openstack.networking.RouterInterface("router_interface_1", {
///     routerId: router1.id,
///     subnetId: subnet1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network_1",
///     name="tf_test_network",
///     admin_state_up=True)
/// subnet1 = openstack.networking.Subnet("subnet_1",
///     network_id=network1.id,
///     cidr="192.168.199.0/24",
///     ip_version=4)
/// router1 = openstack.networking.Router("router_1",
///     name="my_router",
///     external_network_id="f67f0d72-0ddf-11e4-9d95-e1f29f417e2f")
/// router_interface1 = openstack.networking.RouterInterface("router_interface_1",
///     router_id=router1.id,
///     subnet_id=subnet1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network_1", new()
///     {
///         Name = "tf_test_network",
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
///     var router1 = new OpenStack.Networking.Router("router_1", new()
///     {
///         Name = "my_router",
///         ExternalNetworkId = "f67f0d72-0ddf-11e4-9d95-e1f29f417e2f",
///     });
///
///     var routerInterface1 = new OpenStack.Networking.RouterInterface("router_interface_1", new()
///     {
///         RouterId = router1.Id,
///         SubnetId = subnet1.Id,
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
/// 		network1, err := networking.NewNetwork(ctx, "network_1", &networking.NetworkArgs{
/// 			Name:         pulumi.String("tf_test_network"),
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
/// 		router1, err := networking.NewRouter(ctx, "router_1", &networking.RouterArgs{
/// 			Name:              pulumi.String("my_router"),
/// 			ExternalNetworkId: pulumi.String("f67f0d72-0ddf-11e4-9d95-e1f29f417e2f"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewRouterInterface(ctx, "router_interface_1", &networking.RouterInterfaceArgs{
/// 			RouterId: router1.ID(),
/// 			SubnetId: subnet1.ID(),
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.Subnet;
/// import com.pulumi.openstack.networking.SubnetArgs;
/// import com.pulumi.openstack.networking.Router;
/// import com.pulumi.openstack.networking.RouterArgs;
/// import com.pulumi.openstack.networking.RouterInterface;
/// import com.pulumi.openstack.networking.RouterInterfaceArgs;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("tf_test_network")
///             .adminStateUp(true)
///             .build());
///
///         var subnet1 = new Subnet("subnet1", SubnetArgs.builder()
///             .networkId(network1.id())
///             .cidr("192.168.199.0/24")
///             .ipVersion(4)
///             .build());
///
///         var router1 = new Router("router1", RouterArgs.builder()
///             .name("my_router")
///             .externalNetworkId("f67f0d72-0ddf-11e4-9d95-e1f29f417e2f")
///             .build());
///
///         var routerInterface1 = new RouterInterface("routerInterface1", RouterInterfaceArgs.builder()
///             .routerId(router1.id())
///             .subnetId(subnet1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     name: network_1
///     properties:
///       name: tf_test_network
///       adminStateUp: 'true'
///   subnet1:
///     type: openstack:networking:Subnet
///     name: subnet_1
///     properties:
///       networkId: ${network1.id}
///       cidr: 192.168.199.0/24
///       ipVersion: 4
///   router1:
///     type: openstack:networking:Router
///     name: router_1
///     properties:
///       name: my_router
///       externalNetworkId: f67f0d72-0ddf-11e4-9d95-e1f29f417e2f
///   routerInterface1:
///     type: openstack:networking:RouterInterface
///     name: router_interface_1
///     properties:
///       routerId: ${router1.id}
///       subnetId: ${subnet1.id}
/// ```
///
///
/// ## Import
///
/// Router Interfaces can be imported using the port `id`, e.g.
///
/// $ openstack port list --router &lt;router name or id&gt;
///
/// ```sh
/// $ pulumi import openstack:networking/routerInterface:RouterInterface int_1 port_id
/// ```
class RouterInterface extends pulumi.CustomResource {
  /// A boolean indicating whether the routes from the
  /// corresponding router ID should be deleted so that the router interface can
  /// be destroyed without any errors. The default value is `false`.
  late final pulumi.Output<bool?> forceDestroy;
  /// ID of the port this interface connects to. Changing
  /// this creates a new router interface.
  late final pulumi.Output<String> portId;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a router. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// router interface.
  late final pulumi.Output<String> region;
  /// ID of the router this interface belongs to. Changing
  /// this creates a new router interface.
  late final pulumi.Output<String> routerId;
  /// ID of the subnet this interface connects to. Changing
  /// this creates a new router interface.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [RouterInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterInterface]. {@macro pulumi_networking_router_interface_router_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterInterface(
    String name, {
    RouterInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/routerInterface:RouterInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    forceDestroy = registerOutput<bool?>('forceDestroy');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
    routerId = registerOutput<String>('routerId');
    subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [RouterInterface] resource's state with the given [name] and [id].
  static RouterInterface get(
    String name,
    pulumi.Input<String> id, {
    RouterInterfaceState? state,
  }) {
    return RouterInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/routerInterface:RouterInterface',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    forceDestroy = registerOutput<bool?>('forceDestroy');
    portId = registerOutput<String>('portId');
    region = registerOutput<String>('region');
    routerId = registerOutput<String>('routerId');
    subnetId = registerOutput<String>('subnetId');
  }
}
