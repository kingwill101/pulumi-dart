import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_network_args.dart';
import 'load_balancer_network_state.dart';

/// Manage the attachment of a Load Balancer in a Network in the Hetzner Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const main = new hcloud.LoadBalancer("main", {
///     name: "main",
///     loadBalancerType: "lb11",
///     networkZone: "eu-central",
/// });
/// const network = new hcloud.Network("network", {
///     name: "network",
///     ipRange: "10.0.0.0/16",
/// });
/// const subnet = new hcloud.NetworkSubnet("subnet", {
///     networkId: network.id,
///     type: "cloud",
///     networkZone: "eu-central",
///     ipRange: "10.0.1.0/24",
/// });
/// const attachment = new hcloud.LoadBalancerNetwork("attachment", {
///     loadBalancerId: main.id,
///     subnetId: subnet.id,
///     ip: "10.0.1.5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// main = hcloud.LoadBalancer("main",
///     name="main",
///     load_balancer_type="lb11",
///     network_zone="eu-central")
/// network = hcloud.Network("network",
///     name="network",
///     ip_range="10.0.0.0/16")
/// subnet = hcloud.NetworkSubnet("subnet",
///     network_id=network.id,
///     type="cloud",
///     network_zone="eu-central",
///     ip_range="10.0.1.0/24")
/// attachment = hcloud.LoadBalancerNetwork("attachment",
///     load_balancer_id=main.id,
///     subnet_id=subnet.id,
///     ip="10.0.1.5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new HCloud.LoadBalancer("main", new()
///     {
///         Name = "main",
///         LoadBalancerType = "lb11",
///         NetworkZone = "eu-central",
///     });
///
///     var network = new HCloud.Network("network", new()
///     {
///         Name = "network",
///         IpRange = "10.0.0.0/16",
///     });
///
///     var subnet = new HCloud.NetworkSubnet("subnet", new()
///     {
///         NetworkId = network.Id,
///         Type = "cloud",
///         NetworkZone = "eu-central",
///         IpRange = "10.0.1.0/24",
///     });
///
///     var attachment = new HCloud.LoadBalancerNetwork("attachment", new()
///     {
///         LoadBalancerId = main.Id,
///         SubnetId = subnet.Id,
///         Ip = "10.0.1.5",
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
/// 		main, err := hcloud.NewLoadBalancer(ctx, "main", &hcloud.LoadBalancerArgs{
/// 			Name:             pulumi.String("main"),
/// 			LoadBalancerType: pulumi.String("lb11"),
/// 			NetworkZone:      pulumi.String("eu-central"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network, err := hcloud.NewNetwork(ctx, "network", &hcloud.NetworkArgs{
/// 			Name:    pulumi.String("network"),
/// 			IpRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := hcloud.NewNetworkSubnet(ctx, "subnet", &hcloud.NetworkSubnetArgs{
/// 			NetworkId:   network.ID(),
/// 			Type:        pulumi.String("cloud"),
/// 			NetworkZone: pulumi.String("eu-central"),
/// 			IpRange:     pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewLoadBalancerNetwork(ctx, "attachment", &hcloud.LoadBalancerNetworkArgs{
/// 			LoadBalancerId: main.ID(),
/// 			SubnetId:       subnet.ID(),
/// 			Ip:             pulumi.String("10.0.1.5"),
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
/// import com.pulumi.hcloud.LoadBalancer;
/// import com.pulumi.hcloud.LoadBalancerArgs;
/// import com.pulumi.hcloud.Network;
/// import com.pulumi.hcloud.NetworkArgs;
/// import com.pulumi.hcloud.NetworkSubnet;
/// import com.pulumi.hcloud.NetworkSubnetArgs;
/// import com.pulumi.hcloud.LoadBalancerNetwork;
/// import com.pulumi.hcloud.LoadBalancerNetworkArgs;
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
///         var main = new LoadBalancer("main", LoadBalancerArgs.builder()
///             .name("main")
///             .loadBalancerType("lb11")
///             .networkZone("eu-central")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .ipRange("10.0.0.0/16")
///             .build());
///
///         var subnet = new NetworkSubnet("subnet", NetworkSubnetArgs.builder()
///             .networkId(network.id())
///             .type("cloud")
///             .networkZone("eu-central")
///             .ipRange("10.0.1.0/24")
///             .build());
///
///         var attachment = new LoadBalancerNetwork("attachment", LoadBalancerNetworkArgs.builder()
///             .loadBalancerId(main.id())
///             .subnetId(subnet.id())
///             .ip("10.0.1.5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:LoadBalancer
///     properties:
///       name: main
///       loadBalancerType: lb11
///       networkZone: eu-central
///   network:
///     type: hcloud:Network
///     properties:
///       name: network
///       ipRange: 10.0.0.0/16
///   subnet:
///     type: hcloud:NetworkSubnet
///     properties:
///       networkId: ${network.id}
///       type: cloud
///       networkZone: eu-central
///       ipRange: 10.0.1.0/24
///   attachment:
///     type: hcloud:LoadBalancerNetwork
///     properties:
///       loadBalancerId: ${main.id}
///       subnetId: ${subnet.id}
///       ip: 10.0.1.5
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/loadBalancerNetwork:LoadBalancerNetwork example "$LOAD_BALANCER_ID-$NETWORK_ID"
/// ```
class LoadBalancerNetwork extends pulumi.CustomResource {
  /// Wether the Load Balancer public interface is enabled. Default is `true`.
  late final pulumi.Output<bool> enablePublicInterface;

  /// IP to assign to the Load Balancer.
  late final pulumi.Output<String> ip;

  /// ID of the Load Balancer.
  late final pulumi.Output<int> loadBalancerId;

  /// ID of the Network to attach the Load Balancer to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Load Balancer will be attached to the last subnet (ordered by `ip_range`).
  late final pulumi.Output<int> networkId;

  /// ID of the Subnet to attach the Load Balancer to. Required if `network_id` is not set.
  late final pulumi.Output<String?> subnetId;

  /// Creates a new [LoadBalancerNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancerNetwork]. {@macro pulumi_index_load_balancer_network_load_balancer_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancerNetwork(
    String name, {
    LoadBalancerNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/loadBalancerNetwork:LoadBalancerNetwork',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enablePublicInterface = registerOutput<bool>('enablePublicInterface');
    ip = registerOutput<String>('ip');
    loadBalancerId = registerOutput<int>('loadBalancerId');
    networkId = registerOutput<int>('networkId');
    subnetId = registerOutput<String?>('subnetId');
  }

  /// Gets an existing [LoadBalancerNetwork] resource's state with the given [name] and [id].
  static LoadBalancerNetwork get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerNetworkState? state,
  }) {
    return LoadBalancerNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancerNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'hcloud:index/loadBalancerNetwork:LoadBalancerNetwork',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    enablePublicInterface = registerOutput<bool>('enablePublicInterface');
    ip = registerOutput<String>('ip');
    loadBalancerId = registerOutput<int>('loadBalancerId');
    networkId = registerOutput<int>('networkId');
    subnetId = registerOutput<String?>('subnetId');
  }
}
