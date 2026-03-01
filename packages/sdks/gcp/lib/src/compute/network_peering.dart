import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_args.dart';
import 'network_peering_state.dart';

/// Manages a network peering within GCE. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/vpc/vpc-peering)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/networks).
///
/// > Both networks must create a peering with each other for the peering
/// to be functional.
///
/// > Subnets IP ranges across peered VPC networks cannot overlap.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "foobar",
///     autoCreateSubnetworks: false,
/// });
/// const other = new gcp.compute.Network("other", {
///     name: "other",
///     autoCreateSubnetworks: false,
/// });
/// const peering1 = new gcp.compute.NetworkPeering("peering1", {
///     name: "peering1",
///     network: _default.selfLink,
///     peerNetwork: other.selfLink,
/// });
/// const peering2 = new gcp.compute.NetworkPeering("peering2", {
///     name: "peering2",
///     network: other.selfLink,
///     peerNetwork: _default.selfLink,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="foobar",
///     auto_create_subnetworks=False)
/// other = gcp.compute.Network("other",
///     name="other",
///     auto_create_subnetworks=False)
/// peering1 = gcp.compute.NetworkPeering("peering1",
///     name="peering1",
///     network=default.self_link,
///     peer_network=other.self_link)
/// peering2 = gcp.compute.NetworkPeering("peering2",
///     name="peering2",
///     network=other.self_link,
///     peer_network=default.self_link)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "foobar",
///         AutoCreateSubnetworks = false,
///     });
///
///     var other = new Gcp.Compute.Network("other", new()
///     {
///         Name = "other",
///         AutoCreateSubnetworks = false,
///     });
///
///     var peering1 = new Gcp.Compute.NetworkPeering("peering1", new()
///     {
///         Name = "peering1",
///         Network = @default.SelfLink,
///         PeerNetwork = other.SelfLink,
///     });
///
///     var peering2 = new Gcp.Compute.NetworkPeering("peering2", new()
///     {
///         Name = "peering2",
///         Network = other.SelfLink,
///         PeerNetwork = @default.SelfLink,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("foobar"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		other, err := compute.NewNetwork(ctx, "other", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("other"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkPeering(ctx, "peering1", &compute.NetworkPeeringArgs{
/// 			Name:        pulumi.String("peering1"),
/// 			Network:     _default.SelfLink,
/// 			PeerNetwork: other.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkPeering(ctx, "peering2", &compute.NetworkPeeringArgs{
/// 			Name:        pulumi.String("peering2"),
/// 			Network:     other.SelfLink,
/// 			PeerNetwork: _default.SelfLink,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.NetworkPeering;
/// import com.pulumi.gcp.compute.NetworkPeeringArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("foobar")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var other = new Network("other", NetworkArgs.builder()
///             .name("other")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var peering1 = new NetworkPeering("peering1", NetworkPeeringArgs.builder()
///             .name("peering1")
///             .network(default_.selfLink())
///             .peerNetwork(other.selfLink())
///             .build());
///
///         var peering2 = new NetworkPeering("peering2", NetworkPeeringArgs.builder()
///             .name("peering2")
///             .network(other.selfLink())
///             .peerNetwork(default_.selfLink())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peering1:
///     type: gcp:compute:NetworkPeering
///     properties:
///       name: peering1
///       network: ${default.selfLink}
///       peerNetwork: ${other.selfLink}
///   peering2:
///     type: gcp:compute:NetworkPeering
///     properties:
///       name: peering2
///       network: ${other.selfLink}
///       peerNetwork: ${default.selfLink}
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: foobar
///       autoCreateSubnetworks: 'false'
///   other:
///     type: gcp:compute:Network
///     properties:
///       name: other
///       autoCreateSubnetworks: 'false'
/// ```
///
///
/// ## Import
///
/// VPC network peerings can be imported using the name and project of the primary network the peering exists in and the name of the network peering
///
/// * `{{project_id}}/{{network_id}}/{{peering_id}}`
///
/// When using the `pulumi import` command, VPC network peerings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkPeering:NetworkPeering default {{project_id}}/{{network_id}}/{{peering_id}}
/// ```
class NetworkPeering extends pulumi.CustomResource {
  /// Whether to export the custom routes to the peer network. Defaults to `false`.
  late final pulumi.Output<bool?> exportCustomRoutes;
  /// Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  late final pulumi.Output<bool?> exportSubnetRoutesWithPublicIp;
  /// Whether to import the custom routes from the peer network. Defaults to `false`.
  late final pulumi.Output<bool?> importCustomRoutes;
  /// Whether subnet routes with public IP range are imported. The default value is false. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported from peers and are not controlled by this field.
  late final pulumi.Output<bool?> importSubnetRoutesWithPublicIp;
  /// Name of the peering.
  late final pulumi.Output<String> name;
  /// The primary network of the peering.
  late final pulumi.Output<String> network;
  /// The peer network in the peering. The peer network
  /// may belong to a different project.
  late final pulumi.Output<String> peerNetwork;
  /// Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: ["IPV4_ONLY", "IPV4_IPV6"].
  late final pulumi.Output<String?> stackType;
  /// State for the peering, either `ACTIVE` or `INACTIVE`. The peering is
  /// `ACTIVE` when there's a matching configuration in the peer network.
  late final pulumi.Output<String> state;
  /// Details about the current state of the peering.
  late final pulumi.Output<String> stateDetails;
  /// The update strategy determines the semantics for updates and deletes to the peering connection configuration. The default value is INDEPENDENT. Possible values: ["INDEPENDENT", "CONSENSUS"]
  late final pulumi.Output<String?> updateStrategy;

  /// Creates a new [NetworkPeering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkPeering]. {@macro pulumi_compute_network_peering_network_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkPeering(
    String name, {
    NetworkPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkPeering:NetworkPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.exportCustomRoutes = registerOutput<bool?>('exportCustomRoutes');
    this.exportSubnetRoutesWithPublicIp = registerOutput<bool?>('exportSubnetRoutesWithPublicIp');
    this.importCustomRoutes = registerOutput<bool?>('importCustomRoutes');
    this.importSubnetRoutesWithPublicIp = registerOutput<bool?>('importSubnetRoutesWithPublicIp');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.peerNetwork = registerOutput<String>('peerNetwork');
    this.stackType = registerOutput<String?>('stackType');
    this.state = registerOutput<String>('state');
    this.stateDetails = registerOutput<String>('stateDetails');
    this.updateStrategy = registerOutput<String?>('updateStrategy');
  }

  /// Gets an existing [NetworkPeering] resource's state with the given [name] and [id].
  static NetworkPeering get(
    String name,
    pulumi.Input<String> id, {
    NetworkPeeringState? state,
  }) {
    return NetworkPeering._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkPeering._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkPeering:NetworkPeering',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.exportCustomRoutes = registerOutput<bool?>('exportCustomRoutes');
    this.exportSubnetRoutesWithPublicIp = registerOutput<bool?>('exportSubnetRoutesWithPublicIp');
    this.importCustomRoutes = registerOutput<bool?>('importCustomRoutes');
    this.importSubnetRoutesWithPublicIp = registerOutput<bool?>('importSubnetRoutesWithPublicIp');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.peerNetwork = registerOutput<String>('peerNetwork');
    this.stackType = registerOutput<String?>('stackType');
    this.state = registerOutput<String>('state');
    this.stateDetails = registerOutput<String>('stateDetails');
    this.updateStrategy = registerOutput<String?>('updateStrategy');
  }
}
