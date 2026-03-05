import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_connection_args.dart';
import 'site_connection_state.dart';

/// Manages a V2 Neutron IPSec site connection resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const conn1 = new openstack.vpnaas.SiteConnection("conn_1", {
///     name: "connection_1",
///     ikepolicyId: policy2.id,
///     ipsecpolicyId: policy1.id,
///     vpnserviceId: service1.id,
///     psk: "secret",
///     peerAddress: "192.168.10.1",
///     localEpGroupId: group2.id,
///     peerEpGroupId: group1.id,
///     dpds: [{
///         action: "restart",
///         timeout: 42,
///         interval: 21,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// conn1 = openstack.vpnaas.SiteConnection("conn_1",
///     name="connection_1",
///     ikepolicy_id=policy2["id"],
///     ipsecpolicy_id=policy1["id"],
///     vpnservice_id=service1["id"],
///     psk="secret",
///     peer_address="192.168.10.1",
///     local_ep_group_id=group2["id"],
///     peer_ep_group_id=group1["id"],
///     dpds=[{
///         "action": "restart",
///         "timeout": 42,
///         "interval": 21,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var conn1 = new OpenStack.VPNaaS.SiteConnection("conn_1", new()
///     {
///         Name = "connection_1",
///         IkepolicyId = policy2.Id,
///         IpsecpolicyId = policy1.Id,
///         VpnserviceId = service1.Id,
///         Psk = "secret",
///         PeerAddress = "192.168.10.1",
///         LocalEpGroupId = group2.Id,
///         PeerEpGroupId = group1.Id,
///         Dpds = new[]
///         {
///             new OpenStack.VPNaaS.Inputs.SiteConnectionDpdArgs
///             {
///                 Action = "restart",
///                 Timeout = 42,
///                 Interval = 21,
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
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/vpnaas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpnaas.NewSiteConnection(ctx, "conn_1", &vpnaas.SiteConnectionArgs{
/// 			Name:           pulumi.String("connection_1"),
/// 			IkepolicyId:    pulumi.Any(policy2.Id),
/// 			IpsecpolicyId:  pulumi.Any(policy1.Id),
/// 			VpnserviceId:   pulumi.Any(service1.Id),
/// 			Psk:            pulumi.String("secret"),
/// 			PeerAddress:    pulumi.String("192.168.10.1"),
/// 			LocalEpGroupId: pulumi.Any(group2.Id),
/// 			PeerEpGroupId:  pulumi.Any(group1.Id),
/// 			Dpds: vpnaas.SiteConnectionDpdArray{
/// 				&vpnaas.SiteConnectionDpdArgs{
/// 					Action:   pulumi.String("restart"),
/// 					Timeout:  pulumi.Int(42),
/// 					Interval: pulumi.Int(21),
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
/// import com.pulumi.openstack.vpnaas.SiteConnection;
/// import com.pulumi.openstack.vpnaas.SiteConnectionArgs;
/// import com.pulumi.openstack.vpnaas.inputs.SiteConnectionDpdArgs;
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
///         var conn1 = new SiteConnection("conn1", SiteConnectionArgs.builder()
///             .name("connection_1")
///             .ikepolicyId(policy2.id())
///             .ipsecpolicyId(policy1.id())
///             .vpnserviceId(service1.id())
///             .psk("secret")
///             .peerAddress("192.168.10.1")
///             .localEpGroupId(group2.id())
///             .peerEpGroupId(group1.id())
///             .dpds(SiteConnectionDpdArgs.builder()
///                 .action("restart")
///                 .timeout(42)
///                 .interval(21)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   conn1:
///     type: openstack:vpnaas:SiteConnection
///     name: conn_1
///     properties:
///       name: connection_1
///       ikepolicyId: ${policy2.id}
///       ipsecpolicyId: ${policy1.id}
///       vpnserviceId: ${service1.id}
///       psk: secret
///       peerAddress: 192.168.10.1
///       localEpGroupId: ${group2.id}
///       peerEpGroupId: ${group1.id}
///       dpds:
///         - action: restart
///           timeout: 42
///           interval: 21
/// ```
///
///
/// ## Import
///
/// Site Connections can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:vpnaas/siteConnection:SiteConnection conn_1 832cb7f3-59fe-40cf-8f64-8350ffc03272
/// ```
class SiteConnection extends pulumi.CustomResource {
  /// The administrative state of the resource. Can either be up(true) or down(false).
  /// Changing this updates the administrative state of the existing connection.
  late final pulumi.Output<bool?> adminStateUp;
  /// The human-readable description for the connection.
  /// Changing this updates the description of the existing connection.
  late final pulumi.Output<String?> description;
  /// A dictionary with dead peer detection (DPD) protocol controls.
  late final pulumi.Output<List<Map<String, dynamic>>> dpds;
  /// The ID of the IKE policy. Changing this creates a new connection.
  late final pulumi.Output<String> ikepolicyId;
  /// A valid value is response-only or bi-directional. Default is bi-directional.
  late final pulumi.Output<String> initiator;
  /// The ID of the IPsec policy. Changing this creates a new connection.
  late final pulumi.Output<String> ipsecpolicyId;
  /// The ID for the endpoint group that contains private subnets for the local side of the connection.
  /// You must specify this parameter with the peer_ep_group_id parameter unless
  /// in backward- compatible mode where peer_cidrs is provided with a subnet_id for the VPN service.
  /// Changing this updates the existing connection.
  late final pulumi.Output<String?> localEpGroupId;
  /// An ID to be used instead of the external IP address for a virtual router used in traffic between instances on different networks in east-west traffic.
  /// Most often, local ID would be domain name, email address, etc.
  /// If this is not configured then the external IP address will be used as the ID.
  late final pulumi.Output<String?> localId;
  /// The maximum transmission unit (MTU) value to address fragmentation.
  /// Minimum value is 68 for IPv4, and 1280 for IPv6.
  late final pulumi.Output<int> mtu;
  /// The name of the connection. Changing this updates the name of
  /// the existing connection.
  late final pulumi.Output<String> name;
  /// The peer gateway public IPv4 or IPv6 address or FQDN.
  late final pulumi.Output<String> peerAddress;
  /// Unique list of valid peer private CIDRs in the form &lt; net_address &gt; / &lt; prefix &gt; .
  late final pulumi.Output<List<String>?> peerCidrs;
  /// The ID for the endpoint group that contains private CIDRs in the form &lt; net_address &gt; / &lt; prefix &gt; for the peer side of the connection.
  /// You must specify this parameter with the local_ep_group_id parameter unless in backward-compatible mode
  /// where peer_cidrs is provided with a subnet_id for the VPN service.
  late final pulumi.Output<String?> peerEpGroupId;
  /// The peer router identity for authentication. A valid value is an IPv4 address, IPv6 address, e-mail address, key ID, or FQDN.
  /// Typically, this value matches the peer_address value.
  /// Changing this updates the existing policy.
  late final pulumi.Output<String> peerId;
  /// The pre-shared key. A valid value is any string.
  late final pulumi.Output<String> psk;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create an IPSec site connection. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// site connection.
  late final pulumi.Output<String> region;
  /// The owner of the connection. Required if admin wants to
  /// create a connection for another project. Changing this creates a new connection.
  late final pulumi.Output<String> tenantId;
  /// Map of additional options.
  late final pulumi.Output<Map<String, String>?> valueSpecs;
  /// The ID of the VPN service. Changing this creates a new connection.
  late final pulumi.Output<String> vpnserviceId;

  /// Creates a new [SiteConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SiteConnection]. {@macro pulumi_vpnaas_site_connection_site_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SiteConnection(
    String name, {
    SiteConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:vpnaas/siteConnection:SiteConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    description = registerOutput<String?>('description');
    dpds = registerOutput<List<Map<String, dynamic>>>('dpds');
    ikepolicyId = registerOutput<String>('ikepolicyId');
    initiator = registerOutput<String>('initiator');
    ipsecpolicyId = registerOutput<String>('ipsecpolicyId');
    localEpGroupId = registerOutput<String?>('localEpGroupId');
    localId = registerOutput<String?>('localId');
    mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    peerAddress = registerOutput<String>('peerAddress');
    peerCidrs = registerOutput<List<String>?>('peerCidrs');
    peerEpGroupId = registerOutput<String?>('peerEpGroupId');
    peerId = registerOutput<String>('peerId');
    psk = registerOutput<String>('psk');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
    vpnserviceId = registerOutput<String>('vpnserviceId');
  }

  /// Gets an existing [SiteConnection] resource's state with the given [name] and [id].
  static SiteConnection get(
    String name,
    pulumi.Input<String> id, {
    SiteConnectionState? state,
  }) {
    return SiteConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SiteConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:vpnaas/siteConnection:SiteConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminStateUp = registerOutput<bool?>('adminStateUp');
    description = registerOutput<String?>('description');
    dpds = registerOutput<List<Map<String, dynamic>>>('dpds');
    ikepolicyId = registerOutput<String>('ikepolicyId');
    initiator = registerOutput<String>('initiator');
    ipsecpolicyId = registerOutput<String>('ipsecpolicyId');
    localEpGroupId = registerOutput<String?>('localEpGroupId');
    localId = registerOutput<String?>('localId');
    mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    peerAddress = registerOutput<String>('peerAddress');
    peerCidrs = registerOutput<List<String>?>('peerCidrs');
    peerEpGroupId = registerOutput<String?>('peerEpGroupId');
    peerId = registerOutput<String>('peerId');
    psk = registerOutput<String>('psk');
    region = registerOutput<String>('region');
    tenantId = registerOutput<String>('tenantId');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
    vpnserviceId = registerOutput<String>('vpnserviceId');
  }
}
