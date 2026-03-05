import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_speaker_v2_args.dart';
import 'bgp_speaker_v2_state.dart';

/// Manages a V2 Neutron BGP Speaker resource within OpenStack.
///
/// This resource allows you to configure a BGP speaker that can be associated with
/// a BGP peer to exchange routing information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const network1 = new openstack.networking.Network("network1", {name: "network1"});
/// const peer1 = new openstack.networking.BgpPeerV2("peer_1", {
///     name: "bgp_peer_1",
///     peerIp: "192.0.2.10",
///     remoteAs: 65001,
///     authType: "md5",
///     password: "supersecret",
/// });
/// const speaker1 = new openstack.networking.BgpSpeakerV2("speaker_1", {
///     name: "bgp_speaker_1",
///     ipVersion: 4,
///     localAs: 65000,
///     networks: [network1.id],
///     peers: [peer1OpestackNetworkingBgpPeerV2.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// network1 = openstack.networking.Network("network1", name="network1")
/// peer1 = openstack.networking.BgpPeerV2("peer_1",
///     name="bgp_peer_1",
///     peer_ip="192.0.2.10",
///     remote_as=65001,
///     auth_type="md5",
///     password="supersecret")
/// speaker1 = openstack.networking.BgpSpeakerV2("speaker_1",
///     name="bgp_speaker_1",
///     ip_version=4,
///     local_as=65000,
///     networks=[network1.id],
///     peers=[peer1_opestack_networking_bgp_peer_v2["id"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network1 = new OpenStack.Networking.Network("network1", new()
///     {
///         Name = "network1",
///     });
///
///     var peer1 = new OpenStack.Networking.BgpPeerV2("peer_1", new()
///     {
///         Name = "bgp_peer_1",
///         PeerIp = "192.0.2.10",
///         RemoteAs = 65001,
///         AuthType = "md5",
///         Password = "supersecret",
///     });
///
///     var speaker1 = new OpenStack.Networking.BgpSpeakerV2("speaker_1", new()
///     {
///         Name = "bgp_speaker_1",
///         IpVersion = 4,
///         LocalAs = 65000,
///         Networks = new[]
///         {
///             network1.Id,
///         },
///         Peers = new[]
///         {
///             peer1OpestackNetworkingBgpPeerV2.Id,
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
/// 		network1, err := networking.NewNetwork(ctx, "network1", &networking.NetworkArgs{
/// 			Name: pulumi.String("network1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewBgpPeerV2(ctx, "peer_1", &networking.BgpPeerV2Args{
/// 			Name:     pulumi.String("bgp_peer_1"),
/// 			PeerIp:   pulumi.String("192.0.2.10"),
/// 			RemoteAs: pulumi.Int(65001),
/// 			AuthType: pulumi.String("md5"),
/// 			Password: pulumi.String("supersecret"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networking.NewBgpSpeakerV2(ctx, "speaker_1", &networking.BgpSpeakerV2Args{
/// 			Name:      pulumi.String("bgp_speaker_1"),
/// 			IpVersion: pulumi.Int(4),
/// 			LocalAs:   pulumi.Int(65000),
/// 			Networks: pulumi.StringArray{
/// 				network1.ID(),
/// 			},
/// 			Peers: pulumi.StringArray{
/// 				peer1OpestackNetworkingBgpPeerV2.Id,
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
/// import com.pulumi.openstack.networking.Network;
/// import com.pulumi.openstack.networking.NetworkArgs;
/// import com.pulumi.openstack.networking.BgpPeerV2;
/// import com.pulumi.openstack.networking.BgpPeerV2Args;
/// import com.pulumi.openstack.networking.BgpSpeakerV2;
/// import com.pulumi.openstack.networking.BgpSpeakerV2Args;
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
///             .name("network1")
///             .build());
///
///         var peer1 = new BgpPeerV2("peer1", BgpPeerV2Args.builder()
///             .name("bgp_peer_1")
///             .peerIp("192.0.2.10")
///             .remoteAs(65001)
///             .authType("md5")
///             .password("supersecret")
///             .build());
///
///         var speaker1 = new BgpSpeakerV2("speaker1", BgpSpeakerV2Args.builder()
///             .name("bgp_speaker_1")
///             .ipVersion(4)
///             .localAs(65000)
///             .networks(network1.id())
///             .peers(peer1OpestackNetworkingBgpPeerV2.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network1:
///     type: openstack:networking:Network
///     properties:
///       name: network1
///   peer1:
///     type: openstack:networking:BgpPeerV2
///     name: peer_1
///     properties:
///       name: bgp_peer_1
///       peerIp: 192.0.2.10
///       remoteAs: 65001
///       authType: md5
///       password: supersecret
///   speaker1:
///     type: openstack:networking:BgpSpeakerV2
///     name: speaker_1
///     properties:
///       name: bgp_speaker_1
///       ipVersion: 4
///       localAs: 65000
///       networks:
///         - ${network1.id}
///       peers:
///         - ${peer1OpestackNetworkingBgpPeerV2.id}
/// ```
///
///
/// ## Import
///
/// BGP speakers can be imported using their ID:
///
/// ```sh
/// $ pulumi import openstack:networking/bgpSpeakerV2:BgpSpeakerV2 speaker_1 8a2ad402-b805-46bf-a60b-008573ca2844
/// ```
class BgpSpeakerV2 extends pulumi.CustomResource {
  /// A boolean value indicating
  /// whether to advertise floating IP host routes. Defaults to `true`.
  late final pulumi.Output<bool> advertiseFloatingIpHostRoutes;
  /// A boolean value indicating whether to
  /// advertise tenant networks. Defaults to `true`.
  late final pulumi.Output<bool> advertiseTenantNetworks;
  /// A list of dictionaries containing the `destination` and
  /// `next_hop` for each route advertised by the BGP speaker. This attribute is
  /// only populated after the BGP speaker has been created and has established BGP
  /// sessions with its peers.
  late final pulumi.Output<List<Map<String, dynamic>>> advertisedRoutes;
  /// The IP version of the BGP speaker. Valid values are
  /// `4` or `6`. Defaults to `4`. Changing this creates a new BGP speaker.
  late final pulumi.Output<int?> ipVersion;
  /// The local autonomous system number (ASN) for the BGP
  /// speaker. This is a mandatory field and must be specified. Changing this
  /// creates a new BGP speaker.
  late final pulumi.Output<int> localAs;
  /// A name for the BGP speaker.
  late final pulumi.Output<String> name;
  /// A list of network IDs to associate with the BGP speaker.
  late final pulumi.Output<List<String>?> networks;
  /// A list of BGP peer IDs to associate with the BGP speaker.
  late final pulumi.Output<List<String>?> peers;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new BGP
  /// speaker.
  late final pulumi.Output<String> region;
  /// The tenant/project ID. Required if admin privileges
  /// are used. Changing this creates a new BGP speaker.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [BgpSpeakerV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpSpeakerV2]. {@macro pulumi_networking_bgp_speaker_v2_bgp_speaker_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpSpeakerV2(
    String name, {
    BgpSpeakerV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/bgpSpeakerV2:BgpSpeakerV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advertiseFloatingIpHostRoutes = registerOutput<bool>('advertiseFloatingIpHostRoutes');
    advertiseTenantNetworks = registerOutput<bool>('advertiseTenantNetworks');
    advertisedRoutes = registerOutput<List<Map<String, dynamic>>>('advertisedRoutes');
    ipVersion = registerOutput<int?>('ipVersion');
    localAs = registerOutput<int>('localAs');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<String>?>('networks');
    peers = registerOutput<List<String>?>('peers');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [BgpSpeakerV2] resource's state with the given [name] and [id].
  static BgpSpeakerV2 get(
    String name,
    pulumi.Input<String> id, {
    BgpSpeakerV2State? state,
  }) {
    return BgpSpeakerV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BgpSpeakerV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:networking/bgpSpeakerV2:BgpSpeakerV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advertiseFloatingIpHostRoutes = registerOutput<bool>('advertiseFloatingIpHostRoutes');
    advertiseTenantNetworks = registerOutput<bool>('advertiseTenantNetworks');
    advertisedRoutes = registerOutput<List<Map<String, dynamic>>>('advertisedRoutes');
    ipVersion = registerOutput<int?>('ipVersion');
    localAs = registerOutput<int>('localAs');
    this.name = registerOutput<String>('name');
    networks = registerOutput<List<String>?>('networks');
    peers = registerOutput<List<String>?>('peers');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
  }
}
