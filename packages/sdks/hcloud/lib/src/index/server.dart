import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_args.dart';
import 'server_network.dart';
import 'server_public_net.dart';
import 'server_state.dart';

/// Provides an Hetzner Cloud server resource. This can be used to create, modify, and delete servers. Servers also support provisioning.
///
/// ## Deprecations
///
/// ### `datacenter` attribute
///
/// The `datacenter` attribute is deprecated, use the `location` attribute instead.
///
/// See our the [API changelog](https://docs.hetzner.cloud/changelog#2025-12-16-phasing-out-datacenters) for more details.
///
/// > Please upgrade to `v1.58.0+` of the provider to avoid issues once the Hetzner Cloud API no longer accepts
/// and returns the `datacenter` attribute. This version of the provider remains backward compatible by preserving
/// the `datacenter` value in the state and by extracting the `location` name from the `datacenter` attribute when
/// communicating with the API.
///
/// ## Example Usage
///
/// ### Basic server creation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// // Create a new server running debian
/// const node1 = new hcloud.Server("node1", {
///     name: "node1",
///     image: "debian-12",
///     serverType: "cx23",
///     publicNets: [{
///         ipv4Enabled: true,
///         ipv6Enabled: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// # Create a new server running debian
/// node1 = hcloud.Server("node1",
///     name="node1",
///     image="debian-12",
///     server_type="cx23",
///     public_nets=[{
///         "ipv4_enabled": True,
///         "ipv6_enabled": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new server running debian
///     var node1 = new HCloud.Server("node1", new()
///     {
///         Name = "node1",
///         Image = "debian-12",
///         ServerType = "cx23",
///         PublicNets = new[]
///         {
///             new HCloud.Inputs.ServerPublicNetArgs
///             {
///                 Ipv4Enabled = true,
///                 Ipv6Enabled = true,
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
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new server running debian
/// 		_, err := hcloud.NewServer(ctx, "node1", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("node1"),
/// 			Image:      pulumi.String("debian-12"),
/// 			ServerType: pulumi.String("cx23"),
/// 			PublicNets: hcloud.ServerPublicNetArray{
/// 				&hcloud.ServerPublicNetArgs{
/// 					Ipv4Enabled: pulumi.Bool(true),
/// 					Ipv6Enabled: pulumi.Bool(true),
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
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.inputs.ServerPublicNetArgs;
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
///         // Create a new server running debian
///         var node1 = new Server("node1", ServerArgs.builder()
///             .name("node1")
///             .image("debian-12")
///             .serverType("cx23")
///             .publicNets(ServerPublicNetArgs.builder()
///                 .ipv4Enabled(true)
///                 .ipv6Enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new server running debian
///   node1:
///     type: hcloud:Server
///     properties:
///       name: node1
///       image: debian-12
///       serverType: cx23
///       publicNets:
///         - ipv4Enabled: true
///           ipv6Enabled: true
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// //## Server creation with one linked primary ip (ipv4)
/// const primaryIp1 = new hcloud.PrimaryIp("primary_ip_1", {
///     name: "primary_ip_test",
///     location: "hel1",
///     type: "ipv4",
///     assigneeType: "server",
///     autoDelete: true,
///     labels: {
///         hallo: "welt",
///     },
/// });
/// const serverTest = new hcloud.Server("server_test", {
///     name: "test-server",
///     image: "ubuntu-24.04",
///     serverType: "cx23",
///     location: "hel1",
///     labels: {
///         test: "tessst1",
///     },
///     publicNets: [{
///         ipv4Enabled: true,
///         ipv4: primaryIp1.id,
///         ipv6Enabled: false,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// ### Server creation with one linked primary ip (ipv4)
/// primary_ip1 = hcloud.PrimaryIp("primary_ip_1",
///     name="primary_ip_test",
///     location="hel1",
///     type="ipv4",
///     assignee_type="server",
///     auto_delete=True,
///     labels={
///         "hallo": "welt",
///     })
/// server_test = hcloud.Server("server_test",
///     name="test-server",
///     image="ubuntu-24.04",
///     server_type="cx23",
///     location="hel1",
///     labels={
///         "test": "tessst1",
///     },
///     public_nets=[{
///         "ipv4_enabled": True,
///         "ipv4": primary_ip1.id,
///         "ipv6_enabled": False,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     //## Server creation with one linked primary ip (ipv4)
///     var primaryIp1 = new HCloud.PrimaryIp("primary_ip_1", new()
///     {
///         Name = "primary_ip_test",
///         Location = "hel1",
///         Type = "ipv4",
///         AssigneeType = "server",
///         AutoDelete = true,
///         Labels =
///         {
///             { "hallo", "welt" },
///         },
///     });
///
///     var serverTest = new HCloud.Server("server_test", new()
///     {
///         Name = "test-server",
///         Image = "ubuntu-24.04",
///         ServerType = "cx23",
///         Location = "hel1",
///         Labels =
///         {
///             { "test", "tessst1" },
///         },
///         PublicNets = new[]
///         {
///             new HCloud.Inputs.ServerPublicNetArgs
///             {
///                 Ipv4Enabled = true,
///                 Ipv4 = primaryIp1.Id,
///                 Ipv6Enabled = false,
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
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// ## Server creation with one linked primary ip (ipv4)
/// 		primaryIp1, err := hcloud.NewPrimaryIp(ctx, "primary_ip_1", &hcloud.PrimaryIpArgs{
/// 			Name:         pulumi.String("primary_ip_test"),
/// 			Location:     pulumi.String("hel1"),
/// 			Type:         pulumi.String("ipv4"),
/// 			AssigneeType: pulumi.String("server"),
/// 			AutoDelete:   pulumi.Bool(true),
/// 			Labels: pulumi.StringMap{
/// 				"hallo": pulumi.String("welt"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewServer(ctx, "server_test", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("test-server"),
/// 			Image:      pulumi.String("ubuntu-24.04"),
/// 			ServerType: pulumi.String("cx23"),
/// 			Location:   pulumi.String("hel1"),
/// 			Labels: pulumi.StringMap{
/// 				"test": pulumi.String("tessst1"),
/// 			},
/// 			PublicNets: hcloud.ServerPublicNetArray{
/// 				&hcloud.ServerPublicNetArgs{
/// 					Ipv4Enabled: pulumi.Bool(true),
/// 					Ipv4:        primaryIp1.ID(),
/// 					Ipv6Enabled: pulumi.Bool(false),
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
/// import com.pulumi.hcloud.PrimaryIp;
/// import com.pulumi.hcloud.PrimaryIpArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.inputs.ServerPublicNetArgs;
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
///         //## Server creation with one linked primary ip (ipv4)
///         var primaryIp1 = new PrimaryIp("primaryIp1", PrimaryIpArgs.builder()
///             .name("primary_ip_test")
///             .location("hel1")
///             .type("ipv4")
///             .assigneeType("server")
///             .autoDelete(true)
///             .labels(Map.of("hallo", "welt"))
///             .build());
///
///         var serverTest = new Server("serverTest", ServerArgs.builder()
///             .name("test-server")
///             .image("ubuntu-24.04")
///             .serverType("cx23")
///             .location("hel1")
///             .labels(Map.of("test", "tessst1"))
///             .publicNets(ServerPublicNetArgs.builder()
///                 .ipv4Enabled(true)
///                 .ipv4(primaryIp1.id())
///                 .ipv6Enabled(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   ### Server creation with one linked primary ip (ipv4)
///   primaryIp1:
///     type: hcloud:PrimaryIp
///     name: primary_ip_1
///     properties:
///       name: primary_ip_test
///       location: hel1
///       type: ipv4
///       assigneeType: server
///       autoDelete: true
///       labels:
///         hallo: welt
///   serverTest:
///     type: hcloud:Server
///     name: server_test
///     properties:
///       name: test-server
///       image: ubuntu-24.04
///       serverType: cx23
///       location: hel1
///       labels:
///         test: tessst1
///       publicNets:
///         - ipv4Enabled: true
///           ipv4: ${primaryIp1.id}
///           ipv6Enabled: false
/// ```
///
///
/// ### Server creation with network
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const network = new hcloud.Network("network", {
///     name: "network",
///     ipRange: "10.0.0.0/16",
/// });
/// const network_subnet = new hcloud.NetworkSubnet("network-subnet", {
///     type: "cloud",
///     networkId: network.id,
///     networkZone: "eu-central",
///     ipRange: "10.0.1.0/24",
/// });
/// const server = new hcloud.Server("server", {
///     name: "server",
///     serverType: "cx23",
///     image: "ubuntu-24.04",
///     location: "nbg1",
///     networks: [{
///         networkId: network.id,
///         ip: "10.0.1.5",
///         aliasIps: [
///             "10.0.1.6",
///             "10.0.1.7",
///         ],
///     }],
/// }, {
///     dependsOn: [network_subnet],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// network = hcloud.Network("network",
///     name="network",
///     ip_range="10.0.0.0/16")
/// network_subnet = hcloud.NetworkSubnet("network-subnet",
///     type="cloud",
///     network_id=network.id,
///     network_zone="eu-central",
///     ip_range="10.0.1.0/24")
/// server = hcloud.Server("server",
///     name="server",
///     server_type="cx23",
///     image="ubuntu-24.04",
///     location="nbg1",
///     networks=[{
///         "network_id": network.id,
///         "ip": "10.0.1.5",
///         "alias_ips": [
///             "10.0.1.6",
///             "10.0.1.7",
///         ],
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[network_subnet]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new HCloud.Network("network", new()
///     {
///         Name = "network",
///         IpRange = "10.0.0.0/16",
///     });
///
///     var network_subnet = new HCloud.NetworkSubnet("network-subnet", new()
///     {
///         Type = "cloud",
///         NetworkId = network.Id,
///         NetworkZone = "eu-central",
///         IpRange = "10.0.1.0/24",
///     });
///
///     var server = new HCloud.Server("server", new()
///     {
///         Name = "server",
///         ServerType = "cx23",
///         Image = "ubuntu-24.04",
///         Location = "nbg1",
///         Networks = new[]
///         {
///             new HCloud.Inputs.ServerNetworkArgs
///             {
///                 NetworkId = network.Id,
///                 Ip = "10.0.1.5",
///                 AliasIps = new[]
///                 {
///                     "10.0.1.6",
///                     "10.0.1.7",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             network_subnet,
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
/// 		network, err := hcloud.NewNetwork(ctx, "network", &hcloud.NetworkArgs{
/// 			Name:    pulumi.String("network"),
/// 			IpRange: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network_subnet, err := hcloud.NewNetworkSubnet(ctx, "network-subnet", &hcloud.NetworkSubnetArgs{
/// 			Type:        pulumi.String("cloud"),
/// 			NetworkId:   network.ID(),
/// 			NetworkZone: pulumi.String("eu-central"),
/// 			IpRange:     pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewServer(ctx, "server", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("server"),
/// 			ServerType: pulumi.String("cx23"),
/// 			Image:      pulumi.String("ubuntu-24.04"),
/// 			Location:   pulumi.String("nbg1"),
/// 			Networks: hcloud.ServerNetworkTypeArray{
/// 				&hcloud.ServerNetworkTypeArgs{
/// 					NetworkId: network.ID(),
/// 					Ip:        pulumi.String("10.0.1.5"),
/// 					AliasIps: pulumi.StringArray{
/// 						pulumi.String("10.0.1.6"),
/// 						pulumi.String("10.0.1.7"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			network_subnet,
/// 		}))
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
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.inputs.ServerNetworkArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .ipRange("10.0.0.0/16")
///             .build());
///
///         var network_subnet = new NetworkSubnet("network-subnet", NetworkSubnetArgs.builder()
///             .type("cloud")
///             .networkId(network.id())
///             .networkZone("eu-central")
///             .ipRange("10.0.1.0/24")
///             .build());
///
///         var server = new Server("server", ServerArgs.builder()
///             .name("server")
///             .serverType("cx23")
///             .image("ubuntu-24.04")
///             .location("nbg1")
///             .networks(ServerNetworkArgs.builder()
///                 .networkId(network.id())
///                 .ip("10.0.1.5")
///                 .aliasIps(
///                     "10.0.1.6",
///                     "10.0.1.7")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(network_subnet)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: hcloud:Network
///     properties:
///       name: network
///       ipRange: 10.0.0.0/16
///   network-subnet:
///     type: hcloud:NetworkSubnet
///     properties:
///       type: cloud
///       networkId: ${network.id}
///       networkZone: eu-central
///       ipRange: 10.0.1.0/24
///   server:
///     type: hcloud:Server
///     properties:
///       name: server
///       serverType: cx23
///       image: ubuntu-24.04
///       location: nbg1
///       networks:
///         - networkId: ${network.id}
///           ip: 10.0.1.5
///           aliasIps:
///             - 10.0.1.6
///             - 10.0.1.7
///     options:
///       dependsOn:
///         - ${["network-subnet"]}
/// ```
///
///
/// ### Server creation from snapshot
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// // Get image infos because we need the ID
/// const packerSnapshot = hcloud.getImage({
///     withSelector: "app=foobar",
///     mostRecent: true,
/// });
/// // Create a new server from the snapshot
/// const fromSnapshot = new hcloud.Server("from_snapshot", {
///     name: "from-snapshot",
///     image: packerSnapshot.then(packerSnapshot => packerSnapshot.id),
///     serverType: "cx23",
///     publicNets: [{
///         ipv4Enabled: true,
///         ipv6Enabled: true,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// # Get image infos because we need the ID
/// packer_snapshot = hcloud.get_image(with_selector="app=foobar",
///     most_recent=True)
/// # Create a new server from the snapshot
/// from_snapshot = hcloud.Server("from_snapshot",
///     name="from-snapshot",
///     image=packer_snapshot.id,
///     server_type="cx23",
///     public_nets=[{
///         "ipv4_enabled": True,
///         "ipv6_enabled": True,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Get image infos because we need the ID
///     var packerSnapshot = HCloud.GetImage.Invoke(new()
///     {
///         WithSelector = "app=foobar",
///         MostRecent = true,
///     });
///
///     // Create a new server from the snapshot
///     var fromSnapshot = new HCloud.Server("from_snapshot", new()
///     {
///         Name = "from-snapshot",
///         Image = packerSnapshot.Apply(getImageResult => getImageResult.Id),
///         ServerType = "cx23",
///         PublicNets = new[]
///         {
///             new HCloud.Inputs.ServerPublicNetArgs
///             {
///                 Ipv4Enabled = true,
///                 Ipv6Enabled = true,
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
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Get image infos because we need the ID
/// 		packerSnapshot, err := hcloud.GetImage(ctx, &hcloud.GetImageArgs{
/// 			WithSelector: pulumi.StringRef("app=foobar"),
/// 			MostRecent:   pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a new server from the snapshot
/// 		_, err = hcloud.NewServer(ctx, "from_snapshot", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("from-snapshot"),
/// 			Image:      pulumi.Int(packerSnapshot.Id),
/// 			ServerType: pulumi.String("cx23"),
/// 			PublicNets: hcloud.ServerPublicNetArray{
/// 				&hcloud.ServerPublicNetArgs{
/// 					Ipv4Enabled: pulumi.Bool(true),
/// 					Ipv6Enabled: pulumi.Bool(true),
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
/// import com.pulumi.hcloud.HcloudFunctions;
/// import com.pulumi.hcloud.inputs.GetImageArgs;
/// import com.pulumi.hcloud.Server;
/// import com.pulumi.hcloud.ServerArgs;
/// import com.pulumi.hcloud.inputs.ServerPublicNetArgs;
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
///         // Get image infos because we need the ID
///         final var packerSnapshot = HcloudFunctions.getImage(GetImageArgs.builder()
///             .withSelector("app=foobar")
///             .mostRecent(true)
///             .build());
///
///         // Create a new server from the snapshot
///         var fromSnapshot = new Server("fromSnapshot", ServerArgs.builder()
///             .name("from-snapshot")
///             .image(packerSnapshot.id())
///             .serverType("cx23")
///             .publicNets(ServerPublicNetArgs.builder()
///                 .ipv4Enabled(true)
///                 .ipv6Enabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new server from the snapshot
///   fromSnapshot:
///     type: hcloud:Server
///     name: from_snapshot
///     properties:
///       name: from-snapshot
///       image: ${packerSnapshot.id}
///       serverType: cx23
///       publicNets:
///         - ipv4Enabled: true
///           ipv6Enabled: true
/// variables:
///   # Get image infos because we need the ID
///   packerSnapshot:
///     fn::invoke:
///       function: hcloud:getImage
///       arguments:
///         withSelector: app=foobar
///         mostRecent: true
/// ```
///
///
/// ## Primary IPs
///
/// When creating a server without linking at least one ´primary_ip´, it automatically creates & assigns two (ipv4 & ipv6).
/// With the public_net block, you can enable or link primary ips. If you don't define this block, two primary ips (ipv4, ipv6) will be created and assigned to the server automatically.
///
/// ## Import
///
/// Servers can be imported using the server `id`:
///
/// ```sh
/// $ pulumi import hcloud:index/server:Server example "$SERVER_ID"
/// ```
class Server extends pulumi.CustomResource {
  /// Enable the use of deprecated images (default: false). **Note** Deprecated images will be removed after three months. Using them is then no longer possible.
  late final pulumi.Output<bool?> allowDeprecatedImages;
  /// (string) The backup window of the server, if enabled.
  late final pulumi.Output<String> backupWindow;
  /// Enable or disable backups.
  late final pulumi.Output<bool?> backups;
  /// The datacenter name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  late final pulumi.Output<String> datacenter;
  /// Enable or disable delete protection (Needs to be the same as `rebuild_protection`). See "Delete Protection" in the Provider Docs for details.
  late final pulumi.Output<bool?> deleteProtection;
  /// Firewall IDs the server should be attached to on creation.
  late final pulumi.Output<List<int>> firewallIds;
  /// Ignores any updates
  /// to the `firewall_ids` argument which were received from the server.
  /// This should not be used in normal cases. See the documentation of the
  /// `hcloud.FirewallAttachment` resource for a reason to use this
  /// argument.
  late final pulumi.Output<bool?> ignoreRemoteFirewallIds;
  /// Name or ID of the image the server is created from. **Note** the `image` property is only required when using the resource to create servers. As the Hetzner Cloud API may return servers without an image ID set it is not marked as required in the Terraform Provider itself. Thus, users will get an error from the underlying client library if they forget to set the property and try to create a server.
  late final pulumi.Output<String?> image;
  /// (string) The IPv4 address.
  late final pulumi.Output<String> ipv4Address;
  /// (string) The first IPv6 address of the assigned network.
  late final pulumi.Output<String> ipv6Address;
  /// (string) The IPv6 network.
  late final pulumi.Output<String> ipv6Network;
  /// ID or Name of an ISO image to mount.
  late final pulumi.Output<String?> iso;
  /// If true, do not upgrade the disk. This allows downgrading the server type later.
  late final pulumi.Output<bool?> keepDisk;
  /// User-defined labels (key-value pairs) should be created with.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  late final pulumi.Output<String> location;
  /// Name of the server to create (must be unique per project and a valid hostname as per RFC 1123).
  late final pulumi.Output<String> name;
  /// Network the server should be attached to on creation. (Can be specified multiple times)
  late final pulumi.Output<List<ServerNetwork>?> networks;
  /// Placement Group ID the server added to on creation.
  late final pulumi.Output<int?> placementGroupId;
  /// (int) The size of the primary disk in GB.
  late final pulumi.Output<int> primaryDiskSize;
  /// In this block you can either enable / disable ipv4 and ipv6 or link existing primary IPs (checkout the examples).
  /// If this block is not defined, two primary (ipv4 & ipv6) ips getting auto generated.
  late final pulumi.Output<List<ServerPublicNet>?> publicNets;
  /// Enable or disable rebuild protection (Needs to be the same as `delete_protection`).
  late final pulumi.Output<bool?> rebuildProtection;
  /// Enable and boot in to the specified rescue system. This enables simple installation of custom operating systems. `linux64` or `linux32`
  late final pulumi.Output<String?> rescue;
  /// Name of the server type this server should be created with.
  late final pulumi.Output<String> serverType;
  /// Whether to try shutting the server down gracefully before deleting it.
  late final pulumi.Output<bool?> shutdownBeforeDeletion;
  /// SSH key IDs or names which should be injected into the server at creation time. Once the server is created, you can not update the list of SSH Keys. If you do change this, you will be prompted to destroy and recreate the server. You can avoid this by setting lifecycle.ignore_changes to `[ ssh_keys ]`.
  late final pulumi.Output<List<String>?> sshKeys;
  /// (string) The status of the server.
  late final pulumi.Output<String> status;
  /// Cloud-Init user data to use during server creation
  late final pulumi.Output<String?> userData;

  /// Creates a new [Server].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Server]. {@macro pulumi_index_server_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Server(
    String name, {
    ServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/server:Server',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowDeprecatedImages = registerOutput<bool?>('allowDeprecatedImages');
    this.backupWindow = registerOutput<String>('backupWindow');
    this.backups = registerOutput<bool?>('backups');
    this.datacenter = registerOutput<String>('datacenter');
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.firewallIds = registerOutput<List<int>>('firewallIds');
    this.ignoreRemoteFirewallIds = registerOutput<bool?>('ignoreRemoteFirewallIds');
    this.image = registerOutput<String?>('image');
    this.ipv4Address = registerOutput<String>('ipv4Address');
    this.ipv6Address = registerOutput<String>('ipv6Address');
    this.ipv6Network = registerOutput<String>('ipv6Network');
    this.iso = registerOutput<String?>('iso');
    this.keepDisk = registerOutput<bool?>('keepDisk');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<ServerNetwork>?>('networks');
    this.placementGroupId = registerOutput<int?>('placementGroupId');
    this.primaryDiskSize = registerOutput<int>('primaryDiskSize');
    this.publicNets = registerOutput<List<ServerPublicNet>?>('publicNets');
    this.rebuildProtection = registerOutput<bool?>('rebuildProtection');
    this.rescue = registerOutput<String?>('rescue');
    this.serverType = registerOutput<String>('serverType');
    this.shutdownBeforeDeletion = registerOutput<bool?>('shutdownBeforeDeletion');
    this.sshKeys = registerOutput<List<String>?>('sshKeys');
    this.status = registerOutput<String>('status');
    this.userData = registerOutput<String?>('userData');
  }

  /// Gets an existing [Server] resource's state with the given [name] and [id].
  static Server get(
    String name,
    pulumi.Input<String> id, {
    ServerState? state,
  }) {
    return Server._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Server._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/server:Server',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowDeprecatedImages = registerOutput<bool?>('allowDeprecatedImages');
    this.backupWindow = registerOutput<String>('backupWindow');
    this.backups = registerOutput<bool?>('backups');
    this.datacenter = registerOutput<String>('datacenter');
    this.deleteProtection = registerOutput<bool?>('deleteProtection');
    this.firewallIds = registerOutput<List<int>>('firewallIds');
    this.ignoreRemoteFirewallIds = registerOutput<bool?>('ignoreRemoteFirewallIds');
    this.image = registerOutput<String?>('image');
    this.ipv4Address = registerOutput<String>('ipv4Address');
    this.ipv6Address = registerOutput<String>('ipv6Address');
    this.ipv6Network = registerOutput<String>('ipv6Network');
    this.iso = registerOutput<String?>('iso');
    this.keepDisk = registerOutput<bool?>('keepDisk');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<ServerNetwork>?>('networks');
    this.placementGroupId = registerOutput<int?>('placementGroupId');
    this.primaryDiskSize = registerOutput<int>('primaryDiskSize');
    this.publicNets = registerOutput<List<ServerPublicNet>?>('publicNets');
    this.rebuildProtection = registerOutput<bool?>('rebuildProtection');
    this.rescue = registerOutput<String?>('rescue');
    this.serverType = registerOutput<String>('serverType');
    this.shutdownBeforeDeletion = registerOutput<bool?>('shutdownBeforeDeletion');
    this.sshKeys = registerOutput<List<String>?>('sshKeys');
    this.status = registerOutput<String>('status');
    this.userData = registerOutput<String?>('userData');
  }
}
