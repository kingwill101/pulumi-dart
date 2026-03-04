import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_peer_v2_args.dart';
import 'bgp_peer_v2_state.dart';

/// Manages a V2 Neutron BGP Peer resource within OpenStack.
///
/// This resource allows you to configure a BGP peer that can be associated with a
/// BGP speaker to exchange routing information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const peer1 = new openstack.networking.BgpPeerV2("peer_1", {
///     name: "bgp_peer_1",
///     peerIp: "192.0.2.10",
///     remoteAs: 65001,
///     authType: "md5",
///     password: "supersecret",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// peer1 = openstack.networking.BgpPeerV2("peer_1",
///     name="bgp_peer_1",
///     peer_ip="192.0.2.10",
///     remote_as=65001,
///     auth_type="md5",
///     password="supersecret")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peer1 = new OpenStack.Networking.BgpPeerV2("peer_1", new()
///     {
///         Name = "bgp_peer_1",
///         PeerIp = "192.0.2.10",
///         RemoteAs = 65001,
///         AuthType = "md5",
///         Password = "supersecret",
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
/// 		_, err := networking.NewBgpPeerV2(ctx, "peer_1", &networking.BgpPeerV2Args{
/// 			Name:     pulumi.String("bgp_peer_1"),
/// 			PeerIp:   pulumi.String("192.0.2.10"),
/// 			RemoteAs: pulumi.Int(65001),
/// 			AuthType: pulumi.String("md5"),
/// 			Password: pulumi.String("supersecret"),
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
/// import com.pulumi.openstack.networking.BgpPeerV2;
/// import com.pulumi.openstack.networking.BgpPeerV2Args;
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
///         var peer1 = new BgpPeerV2("peer1", BgpPeerV2Args.builder()
///             .name("bgp_peer_1")
///             .peerIp("192.0.2.10")
///             .remoteAs(65001)
///             .authType("md5")
///             .password("supersecret")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peer1:
///     type: openstack:networking:BgpPeerV2
///     name: peer_1
///     properties:
///       name: bgp_peer_1
///       peerIp: 192.0.2.10
///       remoteAs: 65001
///       authType: md5
///       password: supersecret
/// ```
///
///
/// ## Import
///
/// BGP peers can be imported using their ID:
///
/// ```sh
/// $ pulumi import openstack:networking/bgpPeerV2:BgpPeerV2 peer1 a1b2c3d4-e5f6-7890-abcd-1234567890ef
/// ```
class BgpPeerV2 extends pulumi.CustomResource {
  /// The authentication type to use. Can be one of `none`
  /// or `md5`. Defaults to `none`. If set to not `none`, the `password` argument
  /// must also be provided. Changing this creates a new BGP peer.
  late final pulumi.Output<String?> authType;

  /// A name for the BGP peer.
  late final pulumi.Output<String> name;

  /// The password used for MD5 authentication. Must be set
  /// only when `auth_type` is not `none`.
  late final pulumi.Output<String?> password;

  /// The IP address of the BGP peer. Must be a valid IP
  /// address. Changing this creates a new BGP peer.
  late final pulumi.Output<String> peerIp;

  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new BGP
  /// peer.
  late final pulumi.Output<String> region;

  /// The AS number of the BGP peer. Changing this
  /// creates a new BGP peer.
  late final pulumi.Output<int> remoteAs;

  /// The tenant/project ID. Required if admin privileges
  /// are used. Changing this creates a new BGP peer.
  late final pulumi.Output<String> tenantId;

  /// Creates a new [BgpPeerV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpPeerV2]. {@macro pulumi_networking_bgp_peer_v2_bgp_peer_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpPeerV2(
    String name, {
    BgpPeerV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/bgpPeerV2:BgpPeerV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authType = registerOutput<String?>('authType');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    peerIp = registerOutput<String>('peerIp');
    region = registerOutput<String>('region');
    remoteAs = registerOutput<int>('remoteAs');
    tenantId = registerOutput<String>('tenantId');
  }

  /// Gets an existing [BgpPeerV2] resource's state with the given [name] and [id].
  static BgpPeerV2 get(
    String name,
    pulumi.Input<String> id, {
    BgpPeerV2State? state,
  }) {
    return BgpPeerV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BgpPeerV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:networking/bgpPeerV2:BgpPeerV2',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authType = registerOutput<String?>('authType');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    peerIp = registerOutput<String>('peerIp');
    region = registerOutput<String>('region');
    remoteAs = registerOutput<int>('remoteAs');
    tenantId = registerOutput<String>('tenantId');
  }
}
