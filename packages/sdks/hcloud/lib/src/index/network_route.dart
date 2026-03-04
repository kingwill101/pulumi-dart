import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_route_args.dart';
import 'network_route_state.dart';

/// Provides a Hetzner Cloud Network Route to represent a Network route in the Hetzner Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const mynet = new hcloud.Network("mynet", {
///     name: "my-net",
///     ipRange: "10.0.0.0/8",
/// });
/// const privNet = new hcloud.NetworkRoute("privNet", {
///     networkId: mynet.id,
///     destination: "10.100.1.0/24",
///     gateway: "10.0.1.1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// mynet = hcloud.Network("mynet",
///     name="my-net",
///     ip_range="10.0.0.0/8")
/// priv_net = hcloud.NetworkRoute("privNet",
///     network_id=mynet.id,
///     destination="10.100.1.0/24",
///     gateway="10.0.1.1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mynet = new HCloud.Network("mynet", new()
///     {
///         Name = "my-net",
///         IpRange = "10.0.0.0/8",
///     });
///
///     var privNet = new HCloud.NetworkRoute("privNet", new()
///     {
///         NetworkId = mynet.Id,
///         Destination = "10.100.1.0/24",
///         Gateway = "10.0.1.1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mynet, err := hcloud.NewNetwork(ctx, "mynet", &hcloud.NetworkArgs{
/// 			Name:    pulumi.String("my-net"),
/// 			IpRange: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewNetworkRoute(ctx, "privNet", &hcloud.NetworkRouteArgs{
/// 			NetworkId:   mynet.ID(),
/// 			Destination: pulumi.String("10.100.1.0/24"),
/// 			Gateway:     pulumi.String("10.0.1.1"),
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
/// import com.pulumi.hcloud.Network;
/// import com.pulumi.hcloud.NetworkArgs;
/// import com.pulumi.hcloud.NetworkRoute;
/// import com.pulumi.hcloud.NetworkRouteArgs;
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
///         var mynet = new Network("mynet", NetworkArgs.builder()
///             .name("my-net")
///             .ipRange("10.0.0.0/8")
///             .build());
///
///         var privNet = new NetworkRoute("privNet", NetworkRouteArgs.builder()
///             .networkId(mynet.id())
///             .destination("10.100.1.0/24")
///             .gateway("10.0.1.1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mynet:
///     type: hcloud:Network
///     properties:
///       name: my-net
///       ipRange: 10.0.0.0/8
///   privNet:
///     type: hcloud:NetworkRoute
///     properties:
///       networkId: ${mynet.id}
///       destination: 10.100.1.0/24
///       gateway: 10.0.1.1
/// ```
///
///
/// ## Import
///
/// Network Route entries can be imported using a compound ID with the following format:
/// `&lt;network-id&gt;-&lt;destination&gt;`
///
/// ```sh
/// $ pulumi import hcloud:index/networkRoute:NetworkRoute example "$NETWORK_ID-$DESTINATION"
/// ```
class NetworkRoute extends pulumi.CustomResource {
  /// Destination network or host of this route. Must be a subnet of the ip_range of the Network. Must not overlap with an existing ip_range in any subnets or with any destinations in other routes or with the first ip of the networks ip_range or with 172.31.1.1.
  late final pulumi.Output<String> destination;

  /// Gateway for the route. Cannot be the first ip of the networks ip_range and also cannot be 172.31.1.1 as this IP is being used as a gateway for the public network interface of servers.
  late final pulumi.Output<String> gateway;

  /// ID of the Network the route should be added to.
  late final pulumi.Output<int> networkId;

  /// Creates a new [NetworkRoute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkRoute]. {@macro pulumi_index_network_route_network_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkRoute(
    String name, {
    NetworkRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/networkRoute:NetworkRoute',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destination = registerOutput<String>('destination');
    gateway = registerOutput<String>('gateway');
    networkId = registerOutput<int>('networkId');
  }

  /// Gets an existing [NetworkRoute] resource's state with the given [name] and [id].
  static NetworkRoute get(
    String name,
    pulumi.Input<String> id, {
    NetworkRouteState? state,
  }) {
    return NetworkRoute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkRoute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/networkRoute:NetworkRoute',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destination = registerOutput<String>('destination');
    gateway = registerOutput<String>('gateway');
    networkId = registerOutput<int>('networkId');
  }
}
