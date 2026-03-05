import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_network_args.dart';
import 'server_network_state.dart';

/// Manage the attachment of a Server in a Network in the Hetzner Cloud.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const node1 = new hcloud.Server("node1", {
///     name: "node1",
///     image: "debian-12",
///     serverType: "cx23",
/// });
/// const network = new hcloud.Network("network", {
///     name: "network",
///     ipRange: "10.0.0.0/16",
/// });
/// const subnet1 = new hcloud.NetworkSubnet("subnet1", {
///     networkId: network.id,
///     type: "cloud",
///     networkZone: "eu-central",
///     ipRange: "10.0.1.0/24",
/// });
/// const node1Subnet1 = new hcloud.ServerNetwork("node1_subnet1", {
///     serverId: node1.id,
///     subnetId: subnet1.id,
///     ip: "10.0.1.5",
///     aliasIps: ["10.0.1.10"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// node1 = hcloud.Server("node1",
///     name="node1",
///     image="debian-12",
///     server_type="cx23")
/// network = hcloud.Network("network",
///     name="network",
///     ip_range="10.0.0.0/16")
/// subnet1 = hcloud.NetworkSubnet("subnet1",
///     network_id=network.id,
///     type="cloud",
///     network_zone="eu-central",
///     ip_range="10.0.1.0/24")
/// node1_subnet1 = hcloud.ServerNetwork("node1_subnet1",
///     server_id=node1.id,
///     subnet_id=subnet1.id,
///     ip="10.0.1.5",
///     alias_ips=["10.0.1.10"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var node1 = new HCloud.Server("node1", new()
///     {
///         Name = "node1",
///         Image = "debian-12",
///         ServerType = "cx23",
///     });
///
///     var network = new HCloud.Network("network", new()
///     {
///         Name = "network",
///         IpRange = "10.0.0.0/16",
///     });
///
///     var subnet1 = new HCloud.NetworkSubnet("subnet1", new()
///     {
///         NetworkId = network.Id,
///         Type = "cloud",
///         NetworkZone = "eu-central",
///         IpRange = "10.0.1.0/24",
///     });
///
///     var node1Subnet1 = new HCloud.ServerNetwork("node1_subnet1", new()
///     {
///         ServerId = node1.Id,
///         SubnetId = subnet1.Id,
///         Ip = "10.0.1.5",
///         AliasIps = new[]
///         {
///             "10.0.1.10",
///         },
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
/// 		node1, err := hcloud.NewServer(ctx, "node1", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("node1"),
/// 			Image:      pulumi.String("debian-12"),
/// 			ServerType: pulumi.String("cx23"),
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
/// 		subnet1, err := hcloud.NewNetworkSubnet(ctx, "subnet1", &hcloud.NetworkSubnetArgs{
/// 			NetworkId:   network.ID(),
/// 			Type:        pulumi.String("cloud"),
/// 			NetworkZone: pulumi.String("eu-central"),
/// 			IpRange:     pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewServerNetwork(ctx, "node1_subnet1", &hcloud.ServerNetworkArgs{
/// 			ServerId: node1.ID(),
/// 			SubnetId: subnet1.ID(),
/// 			Ip:       pulumi.String("10.0.1.5"),
/// 			AliasIps: pulumi.StringArray{
/// 				pulumi.String("10.0.1.10"),
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
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.Network;
/// import com.pulumi.hcloud.NetworkArgs;
/// import com.pulumi.hcloud.NetworkSubnet;
/// import com.pulumi.hcloud.NetworkSubnetArgs;
/// import com.pulumi.hcloud.ServerNetwork;
/// import com.pulumi.hcloud.ServerNetworkArgs;
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
///         var node1 = new Server("node1", ServerArgs.builder()
///             .name("node1")
///             .image("debian-12")
///             .serverType("cx23")
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .ipRange("10.0.0.0/16")
///             .build());
///
///         var subnet1 = new NetworkSubnet("subnet1", NetworkSubnetArgs.builder()
///             .networkId(network.id())
///             .type("cloud")
///             .networkZone("eu-central")
///             .ipRange("10.0.1.0/24")
///             .build());
///
///         var node1Subnet1 = new ServerNetwork("node1Subnet1", ServerNetworkArgs.builder()
///             .serverId(node1.id())
///             .subnetId(subnet1.id())
///             .ip("10.0.1.5")
///             .aliasIps("10.0.1.10")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   node1:
///     type: hcloud:Server
///     properties:
///       name: node1
///       image: debian-12
///       serverType: cx23
///   network:
///     type: hcloud:Network
///     properties:
///       name: network
///       ipRange: 10.0.0.0/16
///   subnet1:
///     type: hcloud:NetworkSubnet
///     properties:
///       networkId: ${network.id}
///       type: cloud
///       networkZone: eu-central
///       ipRange: 10.0.1.0/24
///   node1Subnet1:
///     type: hcloud:ServerNetwork
///     name: node1_subnet1
///     properties:
///       serverId: ${node1.id}
///       subnetId: ${subnet1.id}
///       ip: 10.0.1.5
///       aliasIps:
///         - 10.0.1.10
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/serverNetwork:ServerNetwork example "$SERVER_ID-$NETWORK_ID"
/// ```
class ServerNetworkResource extends pulumi.CustomResource {
  /// Additional IPs to assign to the Server.
  late final pulumi.Output<List<String>> aliasIps;
  /// IP to assign to the Server.
  late final pulumi.Output<String> ip;
  /// MAC address of the Server on the Network.
  late final pulumi.Output<String> macAddress;
  /// ID of the Network to attach the Server to. Using `subnet_id` is preferred. Required if `subnet_id` is not set. If `subnet_id` or `ip` are not set, the Server will be attached to the last subnet (ordered by `ip_range`).
  late final pulumi.Output<int> networkId;
  /// ID of the Server.
  late final pulumi.Output<int> serverId;
  /// ID of the Subnet to attach the Server to. Required if `network_id` is not set.
  late final pulumi.Output<String?> subnetId;

  /// Creates a new [ServerNetworkResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerNetworkResource]. {@macro pulumi_index_server_network_server_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerNetworkResource(
    String name, {
    ServerNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/serverNetwork:ServerNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliasIps = registerOutput<List<String>>('aliasIps');
    ip = registerOutput<String>('ip');
    macAddress = registerOutput<String>('macAddress');
    networkId = registerOutput<int>('networkId');
    serverId = registerOutput<int>('serverId');
    subnetId = registerOutput<String?>('subnetId');
  }

  /// Gets an existing [ServerNetworkResource] resource's state with the given [name] and [id].
  static ServerNetworkResource get(
    String name,
    pulumi.Input<String> id, {
    ServerNetworkState? state,
  }) {
    return ServerNetworkResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerNetworkResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/serverNetwork:ServerNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliasIps = registerOutput<List<String>>('aliasIps');
    ip = registerOutput<String>('ip');
    macAddress = registerOutput<String>('macAddress');
    networkId = registerOutput<int>('networkId');
    serverId = registerOutput<int>('serverId');
    subnetId = registerOutput<String?>('subnetId');
  }
}
