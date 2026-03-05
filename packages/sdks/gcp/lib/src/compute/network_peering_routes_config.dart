import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_routes_config_args.dart';
import 'network_peering_routes_config_state.dart';

/// Manage a network peering's route settings without managing the peering as
/// a whole. This resource is primarily intended for use with GCP-generated
/// peerings that shouldn't otherwise be managed by other tools. Deleting this
/// resource is a no-op and the peering will not be modified.
///
///
/// To get more information about NetworkPeeringRoutesConfig, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networks/updatePeering)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vpc/docs/vpc-peering)
///
/// ## Example Usage
///
/// ### Network Peering Routes Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const networkPrimary = new gcp.compute.Network("network_primary", {
///     name: "primary-network",
///     autoCreateSubnetworks: false,
/// });
/// const networkSecondary = new gcp.compute.Network("network_secondary", {
///     name: "secondary-network",
///     autoCreateSubnetworks: false,
/// });
/// const peeringPrimary = new gcp.compute.NetworkPeering("peering_primary", {
///     name: "primary-peering",
///     network: networkPrimary.id,
///     peerNetwork: networkSecondary.id,
///     importCustomRoutes: true,
///     exportCustomRoutes: true,
///     importSubnetRoutesWithPublicIp: true,
///     exportSubnetRoutesWithPublicIp: true,
/// });
/// const peeringPrimaryRoutes = new gcp.compute.NetworkPeeringRoutesConfig("peering_primary_routes", {
///     peering: peeringPrimary.name,
///     network: networkPrimary.name,
///     importCustomRoutes: true,
///     exportCustomRoutes: true,
///     importSubnetRoutesWithPublicIp: true,
///     exportSubnetRoutesWithPublicIp: true,
/// });
/// const peeringSecondary = new gcp.compute.NetworkPeering("peering_secondary", {
///     name: "secondary-peering",
///     network: networkSecondary.id,
///     peerNetwork: networkPrimary.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_primary = gcp.compute.Network("network_primary",
///     name="primary-network",
///     auto_create_subnetworks=False)
/// network_secondary = gcp.compute.Network("network_secondary",
///     name="secondary-network",
///     auto_create_subnetworks=False)
/// peering_primary = gcp.compute.NetworkPeering("peering_primary",
///     name="primary-peering",
///     network=network_primary.id,
///     peer_network=network_secondary.id,
///     import_custom_routes=True,
///     export_custom_routes=True,
///     import_subnet_routes_with_public_ip=True,
///     export_subnet_routes_with_public_ip=True)
/// peering_primary_routes = gcp.compute.NetworkPeeringRoutesConfig("peering_primary_routes",
///     peering=peering_primary.name,
///     network=network_primary.name,
///     import_custom_routes=True,
///     export_custom_routes=True,
///     import_subnet_routes_with_public_ip=True,
///     export_subnet_routes_with_public_ip=True)
/// peering_secondary = gcp.compute.NetworkPeering("peering_secondary",
///     name="secondary-peering",
///     network=network_secondary.id,
///     peer_network=network_primary.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkPrimary = new Gcp.Compute.Network("network_primary", new()
///     {
///         Name = "primary-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var networkSecondary = new Gcp.Compute.Network("network_secondary", new()
///     {
///         Name = "secondary-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var peeringPrimary = new Gcp.Compute.NetworkPeering("peering_primary", new()
///     {
///         Name = "primary-peering",
///         Network = networkPrimary.Id,
///         PeerNetwork = networkSecondary.Id,
///         ImportCustomRoutes = true,
///         ExportCustomRoutes = true,
///         ImportSubnetRoutesWithPublicIp = true,
///         ExportSubnetRoutesWithPublicIp = true,
///     });
///
///     var peeringPrimaryRoutes = new Gcp.Compute.NetworkPeeringRoutesConfig("peering_primary_routes", new()
///     {
///         Peering = peeringPrimary.Name,
///         Network = networkPrimary.Name,
///         ImportCustomRoutes = true,
///         ExportCustomRoutes = true,
///         ImportSubnetRoutesWithPublicIp = true,
///         ExportSubnetRoutesWithPublicIp = true,
///     });
///
///     var peeringSecondary = new Gcp.Compute.NetworkPeering("peering_secondary", new()
///     {
///         Name = "secondary-peering",
///         Network = networkSecondary.Id,
///         PeerNetwork = networkPrimary.Id,
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
/// 		networkPrimary, err := compute.NewNetwork(ctx, "network_primary", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("primary-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		networkSecondary, err := compute.NewNetwork(ctx, "network_secondary", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("secondary-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peeringPrimary, err := compute.NewNetworkPeering(ctx, "peering_primary", &compute.NetworkPeeringArgs{
/// 			Name:                           pulumi.String("primary-peering"),
/// 			Network:                        networkPrimary.ID(),
/// 			PeerNetwork:                    networkSecondary.ID(),
/// 			ImportCustomRoutes:             pulumi.Bool(true),
/// 			ExportCustomRoutes:             pulumi.Bool(true),
/// 			ImportSubnetRoutesWithPublicIp: pulumi.Bool(true),
/// 			ExportSubnetRoutesWithPublicIp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkPeeringRoutesConfig(ctx, "peering_primary_routes", &compute.NetworkPeeringRoutesConfigArgs{
/// 			Peering:                        peeringPrimary.Name,
/// 			Network:                        networkPrimary.Name,
/// 			ImportCustomRoutes:             pulumi.Bool(true),
/// 			ExportCustomRoutes:             pulumi.Bool(true),
/// 			ImportSubnetRoutesWithPublicIp: pulumi.Bool(true),
/// 			ExportSubnetRoutesWithPublicIp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkPeering(ctx, "peering_secondary", &compute.NetworkPeeringArgs{
/// 			Name:        pulumi.String("secondary-peering"),
/// 			Network:     networkSecondary.ID(),
/// 			PeerNetwork: networkPrimary.ID(),
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
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfig;
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfigArgs;
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
///         var networkPrimary = new Network("networkPrimary", NetworkArgs.builder()
///             .name("primary-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var networkSecondary = new Network("networkSecondary", NetworkArgs.builder()
///             .name("secondary-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var peeringPrimary = new NetworkPeering("peeringPrimary", NetworkPeeringArgs.builder()
///             .name("primary-peering")
///             .network(networkPrimary.id())
///             .peerNetwork(networkSecondary.id())
///             .importCustomRoutes(true)
///             .exportCustomRoutes(true)
///             .importSubnetRoutesWithPublicIp(true)
///             .exportSubnetRoutesWithPublicIp(true)
///             .build());
///
///         var peeringPrimaryRoutes = new NetworkPeeringRoutesConfig("peeringPrimaryRoutes", NetworkPeeringRoutesConfigArgs.builder()
///             .peering(peeringPrimary.name())
///             .network(networkPrimary.name())
///             .importCustomRoutes(true)
///             .exportCustomRoutes(true)
///             .importSubnetRoutesWithPublicIp(true)
///             .exportSubnetRoutesWithPublicIp(true)
///             .build());
///
///         var peeringSecondary = new NetworkPeering("peeringSecondary", NetworkPeeringArgs.builder()
///             .name("secondary-peering")
///             .network(networkSecondary.id())
///             .peerNetwork(networkPrimary.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peeringPrimaryRoutes:
///     type: gcp:compute:NetworkPeeringRoutesConfig
///     name: peering_primary_routes
///     properties:
///       peering: ${peeringPrimary.name}
///       network: ${networkPrimary.name}
///       importCustomRoutes: true
///       exportCustomRoutes: true
///       importSubnetRoutesWithPublicIp: true
///       exportSubnetRoutesWithPublicIp: true
///   peeringPrimary:
///     type: gcp:compute:NetworkPeering
///     name: peering_primary
///     properties:
///       name: primary-peering
///       network: ${networkPrimary.id}
///       peerNetwork: ${networkSecondary.id}
///       importCustomRoutes: true
///       exportCustomRoutes: true
///       importSubnetRoutesWithPublicIp: true
///       exportSubnetRoutesWithPublicIp: true
///   peeringSecondary:
///     type: gcp:compute:NetworkPeering
///     name: peering_secondary
///     properties:
///       name: secondary-peering
///       network: ${networkSecondary.id}
///       peerNetwork: ${networkPrimary.id}
///   networkPrimary:
///     type: gcp:compute:Network
///     name: network_primary
///     properties:
///       name: primary-network
///       autoCreateSubnetworks: 'false'
///   networkSecondary:
///     type: gcp:compute:Network
///     name: network_secondary
///     properties:
///       name: secondary-network
///       autoCreateSubnetworks: 'false'
/// ```
///
///
/// ## Import
///
/// NetworkPeeringRoutesConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/networks/{{network}}/networkPeerings/{{peering}}`
///
/// * `{{project}}/{{network}}/{{peering}}`
///
/// * `{{network}}/{{peering}}`
///
/// When using the `pulumi import` command, NetworkPeeringRoutesConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig default projects/{{project}}/global/networks/{{network}}/networkPeerings/{{peering}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig default {{project}}/{{network}}/{{peering}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig default {{network}}/{{peering}}
/// ```
class NetworkPeeringRoutesConfig extends pulumi.CustomResource {
  /// Whether to export the custom routes to the peer network.
  late final pulumi.Output<bool> exportCustomRoutes;
  /// Whether subnet routes with public IP range are exported.
  /// IPv4 special-use ranges are always exported to peers and
  /// are not controlled by this field.
  late final pulumi.Output<bool> exportSubnetRoutesWithPublicIp;
  /// Whether to import the custom routes to the peer network.
  late final pulumi.Output<bool> importCustomRoutes;
  /// Whether subnet routes with public IP range are imported.
  /// IPv4 special-use ranges are always imported from peers and
  /// are not controlled by this field.
  late final pulumi.Output<bool> importSubnetRoutesWithPublicIp;
  /// The name of the primary network for the peering.
  late final pulumi.Output<String> network;
  /// Name of the peering.
  late final pulumi.Output<String> peering;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [NetworkPeeringRoutesConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkPeeringRoutesConfig]. {@macro pulumi_compute_network_peering_routes_config_network_peering_routes_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkPeeringRoutesConfig(
    String name, {
    NetworkPeeringRoutesConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    exportCustomRoutes = registerOutput<bool>('exportCustomRoutes');
    exportSubnetRoutesWithPublicIp = registerOutput<bool>('exportSubnetRoutesWithPublicIp');
    importCustomRoutes = registerOutput<bool>('importCustomRoutes');
    importSubnetRoutesWithPublicIp = registerOutput<bool>('importSubnetRoutesWithPublicIp');
    network = registerOutput<String>('network');
    peering = registerOutput<String>('peering');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [NetworkPeeringRoutesConfig] resource's state with the given [name] and [id].
  static NetworkPeeringRoutesConfig get(
    String name,
    pulumi.Input<String> id, {
    NetworkPeeringRoutesConfigState? state,
  }) {
    return NetworkPeeringRoutesConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkPeeringRoutesConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    exportCustomRoutes = registerOutput<bool>('exportCustomRoutes');
    exportSubnetRoutesWithPublicIp = registerOutput<bool>('exportSubnetRoutesWithPublicIp');
    importCustomRoutes = registerOutput<bool>('importCustomRoutes');
    importSubnetRoutesWithPublicIp = registerOutput<bool>('importSubnetRoutesWithPublicIp');
    network = registerOutput<String>('network');
    peering = registerOutput<String>('peering');
    project = registerOutput<String>('project');
  }
}
