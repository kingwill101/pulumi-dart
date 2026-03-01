import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_subnet_args.dart';
import 'network_subnet_state.dart';

/// Provides a Hetzner Cloud Network Subnet to represent a Subnet in the Hetzner Cloud.
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
/// const foonet = new hcloud.NetworkSubnet("foonet", {
///     networkId: mynet.id,
///     type: "cloud",
///     networkZone: "eu-central",
///     ipRange: "10.0.1.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// mynet = hcloud.Network("mynet",
///     name="my-net",
///     ip_range="10.0.0.0/8")
/// foonet = hcloud.NetworkSubnet("foonet",
///     network_id=mynet.id,
///     type="cloud",
///     network_zone="eu-central",
///     ip_range="10.0.1.0/24")
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
///     var foonet = new HCloud.NetworkSubnet("foonet", new()
///     {
///         NetworkId = mynet.Id,
///         Type = "cloud",
///         NetworkZone = "eu-central",
///         IpRange = "10.0.1.0/24",
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
/// 		_, err = hcloud.NewNetworkSubnet(ctx, "foonet", &hcloud.NetworkSubnetArgs{
/// 			NetworkId:   mynet.ID(),
/// 			Type:        pulumi.String("cloud"),
/// 			NetworkZone: pulumi.String("eu-central"),
/// 			IpRange:     pulumi.String("10.0.1.0/24"),
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
/// import com.pulumi.hcloud.NetworkSubnet;
/// import com.pulumi.hcloud.NetworkSubnetArgs;
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
///         var foonet = new NetworkSubnet("foonet", NetworkSubnetArgs.builder()
///             .networkId(mynet.id())
///             .type("cloud")
///             .networkZone("eu-central")
///             .ipRange("10.0.1.0/24")
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
///   foonet:
///     type: hcloud:NetworkSubnet
///     properties:
///       networkId: ${mynet.id}
///       type: cloud
///       networkZone: eu-central
///       ipRange: 10.0.1.0/24
/// ```
///
///
/// ## Import
///
/// Network Subnet entries can be imported using a compound ID with the following format:
/// `<network-id>-<ip_range>`
///
/// ```sh
/// $ pulumi import hcloud:index/networkSubnet:NetworkSubnet example "$NETWORK_ID-$IP_RANGE"
/// ```
class NetworkSubnet extends pulumi.CustomResource {
  late final pulumi.Output<String> gateway;
  /// Range to allocate IPs from. Must be a subnet of the ip_range of the Network and must not overlap with any other subnets or with any destinations in routes.
  late final pulumi.Output<String> ipRange;
  /// ID of the Network the subnet should be added to.
  late final pulumi.Output<int> networkId;
  /// Name of network zone.
  late final pulumi.Output<String> networkZone;
  /// Type of subnet. `server`, `cloud` or `vswitch`
  late final pulumi.Output<String> type;
  /// ID of the vswitch, Required if type is `vswitch`
  late final pulumi.Output<int?> vswitchId;

  /// Creates a new [NetworkSubnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSubnet]. {@macro pulumi_index_network_subnet_network_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSubnet(
    String name, {
    NetworkSubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/networkSubnet:NetworkSubnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.gateway = registerOutput<String>('gateway');
    this.ipRange = registerOutput<String>('ipRange');
    this.networkId = registerOutput<int>('networkId');
    this.networkZone = registerOutput<String>('networkZone');
    this.type = registerOutput<String>('type');
    this.vswitchId = registerOutput<int?>('vswitchId');
  }

  /// Gets an existing [NetworkSubnet] resource's state with the given [name] and [id].
  static NetworkSubnet get(
    String name,
    pulumi.Input<String> id, {
    NetworkSubnetState? state,
  }) {
    return NetworkSubnet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkSubnet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/networkSubnet:NetworkSubnet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.gateway = registerOutput<String>('gateway');
    this.ipRange = registerOutput<String>('ipRange');
    this.networkId = registerOutput<int>('networkId');
    this.networkZone = registerOutput<String>('networkZone');
    this.type = registerOutput<String>('type');
    this.vswitchId = registerOutput<int?>('vswitchId');
  }
}
