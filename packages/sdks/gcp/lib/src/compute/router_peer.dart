import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_peer_args.dart';
import 'router_peer_bfd.dart';
import 'router_peer_md5_authentication_key.dart';
import 'router_peer_state.dart';

/// BGP information that must be configured into the routing stack to
/// establish BGP peering. This information must specify the peer ASN
/// and either the interface name, IP address, or peer IP address.
/// Please refer to RFC4273.
///
///
/// To get more information about RouterBgpPeer, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Peer Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const peer = new gcp.compute.RouterPeer("peer", {
///     name: "my-router-peer",
///     router: "my-router",
///     region: "us-central1",
///     peerAsn: 65513,
///     advertisedRoutePriority: 100,
///     "interface": "interface-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// peer = gcp.compute.RouterPeer("peer",
///     name="my-router-peer",
///     router="my-router",
///     region="us-central1",
///     peer_asn=65513,
///     advertised_route_priority=100,
///     interface="interface-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peer = new Gcp.Compute.RouterPeer("peer", new()
///     {
///         Name = "my-router-peer",
///         Router = "my-router",
///         Region = "us-central1",
///         PeerAsn = 65513,
///         AdvertisedRoutePriority = 100,
///         Interface = "interface-1",
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
/// 		_, err := compute.NewRouterPeer(ctx, "peer", &compute.RouterPeerArgs{
/// 			Name:                    pulumi.String("my-router-peer"),
/// 			Router:                  pulumi.String("my-router"),
/// 			Region:                  pulumi.String("us-central1"),
/// 			PeerAsn:                 pulumi.Int(65513),
/// 			AdvertisedRoutePriority: pulumi.Int(100),
/// 			Interface:               pulumi.String("interface-1"),
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
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
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
///         var peer = new RouterPeer("peer", RouterPeerArgs.builder()
///             .name("my-router-peer")
///             .router("my-router")
///             .region("us-central1")
///             .peerAsn(65513)
///             .advertisedRoutePriority(100)
///             .interface_("interface-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peer:
///     type: gcp:compute:RouterPeer
///     properties:
///       name: my-router-peer
///       router: my-router
///       region: us-central1
///       peerAsn: 65513
///       advertisedRoutePriority: 100
///       interface: interface-1
/// ```
///
/// ### Router Peer Disabled
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const peer = new gcp.compute.RouterPeer("peer", {
///     name: "my-router-peer",
///     router: "my-router",
///     region: "us-central1",
///     peerIpAddress: "169.254.1.2",
///     peerAsn: 65513,
///     advertisedRoutePriority: 100,
///     "interface": "interface-1",
///     enable: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// peer = gcp.compute.RouterPeer("peer",
///     name="my-router-peer",
///     router="my-router",
///     region="us-central1",
///     peer_ip_address="169.254.1.2",
///     peer_asn=65513,
///     advertised_route_priority=100,
///     interface="interface-1",
///     enable=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peer = new Gcp.Compute.RouterPeer("peer", new()
///     {
///         Name = "my-router-peer",
///         Router = "my-router",
///         Region = "us-central1",
///         PeerIpAddress = "169.254.1.2",
///         PeerAsn = 65513,
///         AdvertisedRoutePriority = 100,
///         Interface = "interface-1",
///         Enable = false,
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
/// 		_, err := compute.NewRouterPeer(ctx, "peer", &compute.RouterPeerArgs{
/// 			Name:                    pulumi.String("my-router-peer"),
/// 			Router:                  pulumi.String("my-router"),
/// 			Region:                  pulumi.String("us-central1"),
/// 			PeerIpAddress:           pulumi.String("169.254.1.2"),
/// 			PeerAsn:                 pulumi.Int(65513),
/// 			AdvertisedRoutePriority: pulumi.Int(100),
/// 			Interface:               pulumi.String("interface-1"),
/// 			Enable:                  pulumi.Bool(false),
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
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
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
///         var peer = new RouterPeer("peer", RouterPeerArgs.builder()
///             .name("my-router-peer")
///             .router("my-router")
///             .region("us-central1")
///             .peerIpAddress("169.254.1.2")
///             .peerAsn(65513)
///             .advertisedRoutePriority(100)
///             .interface_("interface-1")
///             .enable(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peer:
///     type: gcp:compute:RouterPeer
///     properties:
///       name: my-router-peer
///       router: my-router
///       region: us-central1
///       peerIpAddress: 169.254.1.2
///       peerAsn: 65513
///       advertisedRoutePriority: 100
///       interface: interface-1
///       enable: false
/// ```
///
/// ### Router Peer Bfd
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const peer = new gcp.compute.RouterPeer("peer", {
///     name: "my-router-peer",
///     router: "my-router",
///     region: "us-central1",
///     peerIpAddress: "169.254.1.2",
///     peerAsn: 65513,
///     advertisedRoutePriority: 100,
///     "interface": "interface-1",
///     bfd: {
///         minReceiveInterval: 1000,
///         minTransmitInterval: 1000,
///         multiplier: 5,
///         sessionInitializationMode: "ACTIVE",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// peer = gcp.compute.RouterPeer("peer",
///     name="my-router-peer",
///     router="my-router",
///     region="us-central1",
///     peer_ip_address="169.254.1.2",
///     peer_asn=65513,
///     advertised_route_priority=100,
///     interface="interface-1",
///     bfd={
///         "min_receive_interval": 1000,
///         "min_transmit_interval": 1000,
///         "multiplier": 5,
///         "session_initialization_mode": "ACTIVE",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peer = new Gcp.Compute.RouterPeer("peer", new()
///     {
///         Name = "my-router-peer",
///         Router = "my-router",
///         Region = "us-central1",
///         PeerIpAddress = "169.254.1.2",
///         PeerAsn = 65513,
///         AdvertisedRoutePriority = 100,
///         Interface = "interface-1",
///         Bfd = new Gcp.Compute.Inputs.RouterPeerBfdArgs
///         {
///             MinReceiveInterval = 1000,
///             MinTransmitInterval = 1000,
///             Multiplier = 5,
///             SessionInitializationMode = "ACTIVE",
///         },
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
/// 		_, err := compute.NewRouterPeer(ctx, "peer", &compute.RouterPeerArgs{
/// 			Name:                    pulumi.String("my-router-peer"),
/// 			Router:                  pulumi.String("my-router"),
/// 			Region:                  pulumi.String("us-central1"),
/// 			PeerIpAddress:           pulumi.String("169.254.1.2"),
/// 			PeerAsn:                 pulumi.Int(65513),
/// 			AdvertisedRoutePriority: pulumi.Int(100),
/// 			Interface:               pulumi.String("interface-1"),
/// 			Bfd: &compute.RouterPeerBfdArgs{
/// 				MinReceiveInterval:        pulumi.Int(1000),
/// 				MinTransmitInterval:       pulumi.Int(1000),
/// 				Multiplier:                pulumi.Int(5),
/// 				SessionInitializationMode: pulumi.String("ACTIVE"),
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
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
/// import com.pulumi.gcp.compute.inputs.RouterPeerBfdArgs;
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
///         var peer = new RouterPeer("peer", RouterPeerArgs.builder()
///             .name("my-router-peer")
///             .router("my-router")
///             .region("us-central1")
///             .peerIpAddress("169.254.1.2")
///             .peerAsn(65513)
///             .advertisedRoutePriority(100)
///             .interface_("interface-1")
///             .bfd(RouterPeerBfdArgs.builder()
///                 .minReceiveInterval(1000)
///                 .minTransmitInterval(1000)
///                 .multiplier(5)
///                 .sessionInitializationMode("ACTIVE")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peer:
///     type: gcp:compute:RouterPeer
///     properties:
///       name: my-router-peer
///       router: my-router
///       region: us-central1
///       peerIpAddress: 169.254.1.2
///       peerAsn: 65513
///       advertisedRoutePriority: 100
///       interface: interface-1
///       bfd:
///         minReceiveInterval: 1000
///         minTransmitInterval: 1000
///         multiplier: 5
///         sessionInitializationMode: ACTIVE
/// ```
///
/// ### Router Zero Custom Learend Route Priority
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const peer = new gcp.compute.RouterPeer("peer", {
///     name: "my-router-peer",
///     router: "my-router",
///     region: "us-central1",
///     "interface": "interface-1",
///     peerAsn: 65513,
///     customLearnedRoutePriority: 0,
///     zeroCustomLearnedRoutePriority: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// peer = gcp.compute.RouterPeer("peer",
///     name="my-router-peer",
///     router="my-router",
///     region="us-central1",
///     interface="interface-1",
///     peer_asn=65513,
///     custom_learned_route_priority=0,
///     zero_custom_learned_route_priority=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peer = new Gcp.Compute.RouterPeer("peer", new()
///     {
///         Name = "my-router-peer",
///         Router = "my-router",
///         Region = "us-central1",
///         Interface = "interface-1",
///         PeerAsn = 65513,
///         CustomLearnedRoutePriority = 0,
///         ZeroCustomLearnedRoutePriority = true,
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
/// 		_, err := compute.NewRouterPeer(ctx, "peer", &compute.RouterPeerArgs{
/// 			Name:                           pulumi.String("my-router-peer"),
/// 			Router:                         pulumi.String("my-router"),
/// 			Region:                         pulumi.String("us-central1"),
/// 			Interface:                      pulumi.String("interface-1"),
/// 			PeerAsn:                        pulumi.Int(65513),
/// 			CustomLearnedRoutePriority:     pulumi.Int(0),
/// 			ZeroCustomLearnedRoutePriority: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
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
///         var peer = new RouterPeer("peer", RouterPeerArgs.builder()
///             .name("my-router-peer")
///             .router("my-router")
///             .region("us-central1")
///             .interface_("interface-1")
///             .peerAsn(65513)
///             .customLearnedRoutePriority(0)
///             .zeroCustomLearnedRoutePriority(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peer:
///     type: gcp:compute:RouterPeer
///     properties:
///       name: my-router-peer
///       router: my-router
///       region: us-central1
///       interface: interface-1
///       peerAsn: 65513
///       customLearnedRoutePriority: 0
///       zeroCustomLearnedRoutePriority: true
/// ```
///
/// ### Router Zero Advertised Route Priority
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const peer = new gcp.compute.RouterPeer("peer", {
///     name: "my-router-peer",
///     router: "my-router",
///     region: "us-central1",
///     "interface": "interface-1",
///     peerAsn: 65513,
///     advertisedRoutePriority: 0,
///     zeroAdvertisedRoutePriority: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// peer = gcp.compute.RouterPeer("peer",
///     name="my-router-peer",
///     router="my-router",
///     region="us-central1",
///     interface="interface-1",
///     peer_asn=65513,
///     advertised_route_priority=0,
///     zero_advertised_route_priority=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var peer = new Gcp.Compute.RouterPeer("peer", new()
///     {
///         Name = "my-router-peer",
///         Router = "my-router",
///         Region = "us-central1",
///         Interface = "interface-1",
///         PeerAsn = 65513,
///         AdvertisedRoutePriority = 0,
///         ZeroAdvertisedRoutePriority = true,
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
/// 		_, err := compute.NewRouterPeer(ctx, "peer", &compute.RouterPeerArgs{
/// 			Name:                        pulumi.String("my-router-peer"),
/// 			Router:                      pulumi.String("my-router"),
/// 			Region:                      pulumi.String("us-central1"),
/// 			Interface:                   pulumi.String("interface-1"),
/// 			PeerAsn:                     pulumi.Int(65513),
/// 			AdvertisedRoutePriority:     pulumi.Int(0),
/// 			ZeroAdvertisedRoutePriority: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
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
///         var peer = new RouterPeer("peer", RouterPeerArgs.builder()
///             .name("my-router-peer")
///             .router("my-router")
///             .region("us-central1")
///             .interface_("interface-1")
///             .peerAsn(65513)
///             .advertisedRoutePriority(0)
///             .zeroAdvertisedRoutePriority(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peer:
///     type: gcp:compute:RouterPeer
///     properties:
///       name: my-router-peer
///       router: my-router
///       region: us-central1
///       interface: interface-1
///       peerAsn: 65513
///       advertisedRoutePriority: 0
///       zeroAdvertisedRoutePriority: true
/// ```
///
/// ### Router Peer Router Appliance
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "my-router-net",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "my-router-sub",
///     network: network.selfLink,
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
/// });
/// const addrIntf = new gcp.compute.Address("addr_intf", {
///     name: "my-router-addr-intf",
///     region: subnetwork.region,
///     subnetwork: subnetwork.id,
///     addressType: "INTERNAL",
/// });
/// const addrIntfRedundant = new gcp.compute.Address("addr_intf_redundant", {
///     name: "my-router-addr-intf-red",
///     region: subnetwork.region,
///     subnetwork: subnetwork.id,
///     addressType: "INTERNAL",
/// });
/// const addrPeer = new gcp.compute.Address("addr_peer", {
///     name: "my-router-addr-peer",
///     region: subnetwork.region,
///     subnetwork: subnetwork.id,
///     addressType: "INTERNAL",
/// });
/// const instance = new gcp.compute.Instance("instance", {
///     name: "router-appliance",
///     zone: "us-central1-a",
///     machineType: "e2-medium",
///     canIpForward: true,
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///         },
///     },
///     networkInterfaces: [{
///         networkIp: addrPeer.address,
///         subnetwork: subnetwork.selfLink,
///     }],
/// });
/// const hub = new gcp.networkconnectivity.Hub("hub", {name: "my-router-hub"});
/// const spoke = new gcp.networkconnectivity.Spoke("spoke", {
///     name: "my-router-spoke",
///     location: subnetwork.region,
///     hub: hub.id,
///     linkedRouterApplianceInstances: {
///         instances: [{
///             virtualMachine: instance.selfLink,
///             ipAddress: addrPeer.address,
///         }],
///         siteToSiteDataTransfer: false,
///     },
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "my-router-router",
///     region: subnetwork.region,
///     network: network.selfLink,
///     bgp: {
///         asn: 64514,
///     },
/// });
/// const interfaceRedundant = new gcp.compute.RouterInterface("interface_redundant", {
///     name: "my-router-intf-red",
///     region: router.region,
///     router: router.name,
///     subnetwork: subnetwork.selfLink,
///     privateIpAddress: addrIntfRedundant.address,
/// });
/// const _interface = new gcp.compute.RouterInterface("interface", {
///     name: "my-router-intf",
///     region: router.region,
///     router: router.name,
///     subnetwork: subnetwork.selfLink,
///     privateIpAddress: addrIntf.address,
///     redundantInterface: interfaceRedundant.name,
/// });
/// const peer = new gcp.compute.RouterPeer("peer", {
///     name: "my-router-peer",
///     router: router.name,
///     region: router.region,
///     "interface": _interface.name,
///     routerApplianceInstance: instance.selfLink,
///     peerAsn: 65513,
///     peerIpAddress: addrPeer.address,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="my-router-net",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="my-router-sub",
///     network=network.self_link,
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1")
/// addr_intf = gcp.compute.Address("addr_intf",
///     name="my-router-addr-intf",
///     region=subnetwork.region,
///     subnetwork=subnetwork.id,
///     address_type="INTERNAL")
/// addr_intf_redundant = gcp.compute.Address("addr_intf_redundant",
///     name="my-router-addr-intf-red",
///     region=subnetwork.region,
///     subnetwork=subnetwork.id,
///     address_type="INTERNAL")
/// addr_peer = gcp.compute.Address("addr_peer",
///     name="my-router-addr-peer",
///     region=subnetwork.region,
///     subnetwork=subnetwork.id,
///     address_type="INTERNAL")
/// instance = gcp.compute.Instance("instance",
///     name="router-appliance",
///     zone="us-central1-a",
///     machine_type="e2-medium",
///     can_ip_forward=True,
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///         },
///     },
///     network_interfaces=[{
///         "network_ip": addr_peer.address,
///         "subnetwork": subnetwork.self_link,
///     }])
/// hub = gcp.networkconnectivity.Hub("hub", name="my-router-hub")
/// spoke = gcp.networkconnectivity.Spoke("spoke",
///     name="my-router-spoke",
///     location=subnetwork.region,
///     hub=hub.id,
///     linked_router_appliance_instances={
///         "instances": [{
///             "virtual_machine": instance.self_link,
///             "ip_address": addr_peer.address,
///         }],
///         "site_to_site_data_transfer": False,
///     })
/// router = gcp.compute.Router("router",
///     name="my-router-router",
///     region=subnetwork.region,
///     network=network.self_link,
///     bgp={
///         "asn": 64514,
///     })
/// interface_redundant = gcp.compute.RouterInterface("interface_redundant",
///     name="my-router-intf-red",
///     region=router.region,
///     router=router.name,
///     subnetwork=subnetwork.self_link,
///     private_ip_address=addr_intf_redundant.address)
/// interface = gcp.compute.RouterInterface("interface",
///     name="my-router-intf",
///     region=router.region,
///     router=router.name,
///     subnetwork=subnetwork.self_link,
///     private_ip_address=addr_intf.address,
///     redundant_interface=interface_redundant.name)
/// peer = gcp.compute.RouterPeer("peer",
///     name="my-router-peer",
///     router=router.name,
///     region=router.region,
///     interface=interface.name,
///     router_appliance_instance=instance.self_link,
///     peer_asn=65513,
///     peer_ip_address=addr_peer.address)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "my-router-net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "my-router-sub",
///         Network = network.SelfLink,
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///     });
///
///     var addrIntf = new Gcp.Compute.Address("addr_intf", new()
///     {
///         Name = "my-router-addr-intf",
///         Region = subnetwork.Region,
///         Subnetwork = subnetwork.Id,
///         AddressType = "INTERNAL",
///     });
///
///     var addrIntfRedundant = new Gcp.Compute.Address("addr_intf_redundant", new()
///     {
///         Name = "my-router-addr-intf-red",
///         Region = subnetwork.Region,
///         Subnetwork = subnetwork.Id,
///         AddressType = "INTERNAL",
///     });
///
///     var addrPeer = new Gcp.Compute.Address("addr_peer", new()
///     {
///         Name = "my-router-addr-peer",
///         Region = subnetwork.Region,
///         Subnetwork = subnetwork.Id,
///         AddressType = "INTERNAL",
///     });
///
///     var instance = new Gcp.Compute.Instance("instance", new()
///     {
///         Name = "router-appliance",
///         Zone = "us-central1-a",
///         MachineType = "e2-medium",
///         CanIpForward = true,
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///             },
///         },
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 NetworkIp = addrPeer.IPAddress,
///                 Subnetwork = subnetwork.SelfLink,
///             },
///         },
///     });
///
///     var hub = new Gcp.NetworkConnectivity.Hub("hub", new()
///     {
///         Name = "my-router-hub",
///     });
///
///     var spoke = new Gcp.NetworkConnectivity.Spoke("spoke", new()
///     {
///         Name = "my-router-spoke",
///         Location = subnetwork.Region,
///         Hub = hub.Id,
///         LinkedRouterApplianceInstances = new Gcp.NetworkConnectivity.Inputs.SpokeLinkedRouterApplianceInstancesArgs
///         {
///             Instances = new[]
///             {
///                 new Gcp.NetworkConnectivity.Inputs.SpokeLinkedRouterApplianceInstancesInstanceArgs
///                 {
///                     VirtualMachine = instance.SelfLink,
///                     IpAddress = addrPeer.IPAddress,
///                 },
///             },
///             SiteToSiteDataTransfer = false,
///         },
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "my-router-router",
///         Region = subnetwork.Region,
///         Network = network.SelfLink,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 64514,
///         },
///     });
///
///     var interfaceRedundant = new Gcp.Compute.RouterInterface("interface_redundant", new()
///     {
///         Name = "my-router-intf-red",
///         Region = router.Region,
///         Router = router.Name,
///         Subnetwork = subnetwork.SelfLink,
///         PrivateIpAddress = addrIntfRedundant.IPAddress,
///     });
///
///     var @interface = new Gcp.Compute.RouterInterface("interface", new()
///     {
///         Name = "my-router-intf",
///         Region = router.Region,
///         Router = router.Name,
///         Subnetwork = subnetwork.SelfLink,
///         PrivateIpAddress = addrIntf.IPAddress,
///         RedundantInterface = interfaceRedundant.Name,
///     });
///
///     var peer = new Gcp.Compute.RouterPeer("peer", new()
///     {
///         Name = "my-router-peer",
///         Router = router.Name,
///         Region = router.Region,
///         Interface = @interface.Name,
///         RouterApplianceInstance = instance.SelfLink,
///         PeerAsn = 65513,
///         PeerIpAddress = addrPeer.IPAddress,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networkconnectivity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// Name: pulumi.String("my-router-net"),
/// AutoCreateSubnetworks: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// subnetwork, err := compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// Name: pulumi.String("my-router-sub"),
/// Network: network.SelfLink,
/// IpCidrRange: pulumi.String("10.0.0.0/16"),
/// Region: pulumi.String("us-central1"),
/// })
/// if err != nil {
/// return err
/// }
/// addrIntf, err := compute.NewAddress(ctx, "addr_intf", &compute.AddressArgs{
/// Name: pulumi.String("my-router-addr-intf"),
/// Region: subnetwork.Region,
/// Subnetwork: subnetwork.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// })
/// if err != nil {
/// return err
/// }
/// addrIntfRedundant, err := compute.NewAddress(ctx, "addr_intf_redundant", &compute.AddressArgs{
/// Name: pulumi.String("my-router-addr-intf-red"),
/// Region: subnetwork.Region,
/// Subnetwork: subnetwork.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// })
/// if err != nil {
/// return err
/// }
/// addrPeer, err := compute.NewAddress(ctx, "addr_peer", &compute.AddressArgs{
/// Name: pulumi.String("my-router-addr-peer"),
/// Region: subnetwork.Region,
/// Subnetwork: subnetwork.ID(),
/// AddressType: pulumi.String("INTERNAL"),
/// })
/// if err != nil {
/// return err
/// }
/// instance, err := compute.NewInstance(ctx, "instance", &compute.InstanceArgs{
/// Name: pulumi.String("router-appliance"),
/// Zone: pulumi.String("us-central1-a"),
/// MachineType: pulumi.String("e2-medium"),
/// CanIpForward: pulumi.Bool(true),
/// BootDisk: &compute.InstanceBootDiskArgs{
/// InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// Image: pulumi.String("debian-cloud/debian-11"),
/// },
/// },
/// NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// &compute.InstanceNetworkInterfaceArgs{
/// NetworkIp: addrPeer.Address,
/// Subnetwork: subnetwork.SelfLink,
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// hub, err := networkconnectivity.NewHub(ctx, "hub", &networkconnectivity.HubArgs{
/// Name: pulumi.String("my-router-hub"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = networkconnectivity.NewSpoke(ctx, "spoke", &networkconnectivity.SpokeArgs{
/// Name: pulumi.String("my-router-spoke"),
/// Location: subnetwork.Region,
/// Hub: hub.ID(),
/// LinkedRouterApplianceInstances: &networkconnectivity.SpokeLinkedRouterApplianceInstancesArgs{
/// Instances: networkconnectivity.SpokeLinkedRouterApplianceInstancesInstanceArray{
/// &networkconnectivity.SpokeLinkedRouterApplianceInstancesInstanceArgs{
/// VirtualMachine: instance.SelfLink,
/// IpAddress: addrPeer.Address,
/// },
/// },
/// SiteToSiteDataTransfer: pulumi.Bool(false),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// Name: pulumi.String("my-router-router"),
/// Region: subnetwork.Region,
/// Network: network.SelfLink,
/// Bgp: &compute.RouterBgpArgs{
/// Asn: pulumi.Int(64514),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// interfaceRedundant, err := compute.NewRouterInterface(ctx, "interface_redundant", &compute.RouterInterfaceArgs{
/// Name: pulumi.String("my-router-intf-red"),
/// Region: router.Region,
/// Router: router.Name,
/// Subnetwork: subnetwork.SelfLink,
/// PrivateIpAddress: addrIntfRedundant.Address,
/// })
/// if err != nil {
/// return err
/// }
/// interface, err := compute.NewRouterInterface(ctx, "interface", &compute.RouterInterfaceArgs{
/// Name: pulumi.String("my-router-intf"),
/// Region: router.Region,
/// Router: router.Name,
/// Subnetwork: subnetwork.SelfLink,
/// PrivateIpAddress: addrIntf.Address,
/// RedundantInterface: interfaceRedundant.Name,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewRouterPeer(ctx, "peer", &compute.RouterPeerArgs{
/// Name: pulumi.String("my-router-peer"),
/// Router: router.Name,
/// Region: router.Region,
/// Interface: interface.Name,
/// RouterApplianceInstance: instance.SelfLink,
/// PeerAsn: pulumi.Int(65513),
/// PeerIpAddress: addrPeer.Address,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeLinkedRouterApplianceInstancesArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.RouterInterface;
/// import com.pulumi.gcp.compute.RouterInterfaceArgs;
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
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
///             .name("my-router-net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("my-router-sub")
///             .network(network.selfLink())
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .build());
///
///         var addrIntf = new Address("addrIntf", AddressArgs.builder()
///             .name("my-router-addr-intf")
///             .region(subnetwork.region())
///             .subnetwork(subnetwork.id())
///             .addressType("INTERNAL")
///             .build());
///
///         var addrIntfRedundant = new Address("addrIntfRedundant", AddressArgs.builder()
///             .name("my-router-addr-intf-red")
///             .region(subnetwork.region())
///             .subnetwork(subnetwork.id())
///             .addressType("INTERNAL")
///             .build());
///
///         var addrPeer = new Address("addrPeer", AddressArgs.builder()
///             .name("my-router-addr-peer")
///             .region(subnetwork.region())
///             .subnetwork(subnetwork.id())
///             .addressType("INTERNAL")
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("router-appliance")
///             .zone("us-central1-a")
///             .machineType("e2-medium")
///             .canIpForward(true)
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .build())
///                 .build())
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .networkIp(addrPeer.address())
///                 .subnetwork(subnetwork.selfLink())
///                 .build())
///             .build());
///
///         var hub = new Hub("hub", HubArgs.builder()
///             .name("my-router-hub")
///             .build());
///
///         var spoke = new Spoke("spoke", SpokeArgs.builder()
///             .name("my-router-spoke")
///             .location(subnetwork.region())
///             .hub(hub.id())
///             .linkedRouterApplianceInstances(SpokeLinkedRouterApplianceInstancesArgs.builder()
///                 .instances(SpokeLinkedRouterApplianceInstancesInstanceArgs.builder()
///                     .virtualMachine(instance.selfLink())
///                     .ipAddress(addrPeer.address())
///                     .build())
///                 .siteToSiteDataTransfer(false)
///                 .build())
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("my-router-router")
///             .region(subnetwork.region())
///             .network(network.selfLink())
///             .bgp(RouterBgpArgs.builder()
///                 .asn(64514)
///                 .build())
///             .build());
///
///         var interfaceRedundant = new RouterInterface("interfaceRedundant", RouterInterfaceArgs.builder()
///             .name("my-router-intf-red")
///             .region(router.region())
///             .router(router.name())
///             .subnetwork(subnetwork.selfLink())
///             .privateIpAddress(addrIntfRedundant.address())
///             .build());
///
///         var interface_ = new RouterInterface("interface", RouterInterfaceArgs.builder()
///             .name("my-router-intf")
///             .region(router.region())
///             .router(router.name())
///             .subnetwork(subnetwork.selfLink())
///             .privateIpAddress(addrIntf.address())
///             .redundantInterface(interfaceRedundant.name())
///             .build());
///
///         var peer = new RouterPeer("peer", RouterPeerArgs.builder()
///             .name("my-router-peer")
///             .router(router.name())
///             .region(router.region())
///             .interface_(interface_.name())
///             .routerApplianceInstance(instance.selfLink())
///             .peerAsn(65513)
///             .peerIpAddress(addrPeer.address())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-router-net
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-router-sub
///       network: ${network.selfLink}
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///   addrIntf:
///     type: gcp:compute:Address
///     name: addr_intf
///     properties:
///       name: my-router-addr-intf
///       region: ${subnetwork.region}
///       subnetwork: ${subnetwork.id}
///       addressType: INTERNAL
///   addrIntfRedundant:
///     type: gcp:compute:Address
///     name: addr_intf_redundant
///     properties:
///       name: my-router-addr-intf-red
///       region: ${subnetwork.region}
///       subnetwork: ${subnetwork.id}
///       addressType: INTERNAL
///   addrPeer:
///     type: gcp:compute:Address
///     name: addr_peer
///     properties:
///       name: my-router-addr-peer
///       region: ${subnetwork.region}
///       subnetwork: ${subnetwork.id}
///       addressType: INTERNAL
///   instance:
///     type: gcp:compute:Instance
///     properties:
///       name: router-appliance
///       zone: us-central1-a
///       machineType: e2-medium
///       canIpForward: true
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///       networkInterfaces:
///         - networkIp: ${addrPeer.address}
///           subnetwork: ${subnetwork.selfLink}
///   hub:
///     type: gcp:networkconnectivity:Hub
///     properties:
///       name: my-router-hub
///   spoke:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: my-router-spoke
///       location: ${subnetwork.region}
///       hub: ${hub.id}
///       linkedRouterApplianceInstances:
///         instances:
///           - virtualMachine: ${instance.selfLink}
///             ipAddress: ${addrPeer.address}
///         siteToSiteDataTransfer: false
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: my-router-router
///       region: ${subnetwork.region}
///       network: ${network.selfLink}
///       bgp:
///         asn: 64514
///   interfaceRedundant:
///     type: gcp:compute:RouterInterface
///     name: interface_redundant
///     properties:
///       name: my-router-intf-red
///       region: ${router.region}
///       router: ${router.name}
///       subnetwork: ${subnetwork.selfLink}
///       privateIpAddress: ${addrIntfRedundant.address}
///   interface:
///     type: gcp:compute:RouterInterface
///     properties:
///       name: my-router-intf
///       region: ${router.region}
///       router: ${router.name}
///       subnetwork: ${subnetwork.selfLink}
///       privateIpAddress: ${addrIntf.address}
///       redundantInterface: ${interfaceRedundant.name}
///   peer:
///     type: gcp:compute:RouterPeer
///     properties:
///       name: my-router-peer
///       router: ${router.name}
///       region: ${router.region}
///       interface: ${interface.name}
///       routerApplianceInstance: ${instance.selfLink}
///       peerAsn: 65513
///       peerIpAddress: ${addrPeer.address}
/// ```
///
///
/// ### Router Peer Md5 Authentication Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobar = new gcp.compute.RouterPeer("foobar", {
///     name: "%s-peer",
///     router: foobarGoogleComputeRouter.name,
///     region: foobarGoogleComputeRouter.region,
///     peerAsn: 65515,
///     advertisedRoutePriority: 100,
///     "interface": foobarGoogleComputeRouterInterface.name,
///     peerIpAddress: "169.254.3.2",
///     md5AuthenticationKey: {
///         name: "%s-peer-key",
///         key: "%s-peer-key-value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar = gcp.compute.RouterPeer("foobar",
///     name="%s-peer",
///     router=foobar_google_compute_router["name"],
///     region=foobar_google_compute_router["region"],
///     peer_asn=65515,
///     advertised_route_priority=100,
///     interface=foobar_google_compute_router_interface["name"],
///     peer_ip_address="169.254.3.2",
///     md5_authentication_key={
///         "name": "%s-peer-key",
///         "key": "%s-peer-key-value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Gcp.Compute.RouterPeer("foobar", new()
///     {
///         Name = "%s-peer",
///         Router = foobarGoogleComputeRouter.Name,
///         Region = foobarGoogleComputeRouter.Region,
///         PeerAsn = 65515,
///         AdvertisedRoutePriority = 100,
///         Interface = foobarGoogleComputeRouterInterface.Name,
///         PeerIpAddress = "169.254.3.2",
///         Md5AuthenticationKey = new Gcp.Compute.Inputs.RouterPeerMd5AuthenticationKeyArgs
///         {
///             Name = "%s-peer-key",
///             Key = "%s-peer-key-value",
///         },
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
/// 		_, err := compute.NewRouterPeer(ctx, "foobar", &compute.RouterPeerArgs{
/// 			Name:                    pulumi.String("%s-peer"),
/// 			Router:                  pulumi.Any(foobarGoogleComputeRouter.Name),
/// 			Region:                  pulumi.Any(foobarGoogleComputeRouter.Region),
/// 			PeerAsn:                 pulumi.Int(65515),
/// 			AdvertisedRoutePriority: pulumi.Int(100),
/// 			Interface:               pulumi.Any(foobarGoogleComputeRouterInterface.Name),
/// 			PeerIpAddress:           pulumi.String("169.254.3.2"),
/// 			Md5AuthenticationKey: &compute.RouterPeerMd5AuthenticationKeyArgs{
/// 				Name: pulumi.String("%s-peer-key"),
/// 				Key:  pulumi.String("%s-peer-key-value"),
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
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
/// import com.pulumi.gcp.compute.inputs.RouterPeerMd5AuthenticationKeyArgs;
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
///         var foobar = new RouterPeer("foobar", RouterPeerArgs.builder()
///             .name("%s-peer")
///             .router(foobarGoogleComputeRouter.name())
///             .region(foobarGoogleComputeRouter.region())
///             .peerAsn(65515)
///             .advertisedRoutePriority(100)
///             .interface_(foobarGoogleComputeRouterInterface.name())
///             .peerIpAddress("169.254.3.2")
///             .md5AuthenticationKey(RouterPeerMd5AuthenticationKeyArgs.builder()
///                 .name("%s-peer-key")
///                 .key("%s-peer-key-value")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:RouterPeer
///     properties:
///       name: '%s-peer'
///       router: ${foobarGoogleComputeRouter.name}
///       region: ${foobarGoogleComputeRouter.region}
///       peerAsn: 65515
///       advertisedRoutePriority: 100
///       interface: ${foobarGoogleComputeRouterInterface.name}
///       peerIpAddress: 169.254.3.2
///       md5AuthenticationKey:
///         name: '%s-peer-key'
///         key: '%s-peer-key-value'
/// ```
///
///
/// ### Router Peer Export And Import Policies
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "my-router-net",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "my-router-subnet",
///     network: network.selfLink,
///     ipCidrRange: "10.0.0.0/16",
///     region: "us-central1",
/// });
/// const address = new gcp.compute.Address("address", {
///     name: "my-router",
///     region: subnetwork.region,
/// });
/// const vpnGateway = new gcp.compute.HaVpnGateway("vpn_gateway", {
///     name: "my-router-gateway",
///     network: network.selfLink,
///     region: subnetwork.region,
/// });
/// const externalGateway = new gcp.compute.ExternalVpnGateway("external_gateway", {
///     name: "my-router-external-gateway",
///     redundancyType: "SINGLE_IP_INTERNALLY_REDUNDANT",
///     description: "An externally managed VPN gateway",
///     interfaces: [{
///         id: 0,
///         ipAddress: "8.8.8.8",
///     }],
/// });
/// const router = new gcp.compute.Router("router", {
///     name: "my-router",
///     region: subnetwork.region,
///     network: network.selfLink,
///     bgp: {
///         asn: 64514,
///     },
/// });
/// const vpnTunnel = new gcp.compute.VPNTunnel("vpn_tunnel", {
///     name: "my-router",
///     region: subnetwork.region,
///     vpnGateway: vpnGateway.id,
///     peerExternalGateway: externalGateway.id,
///     peerExternalGatewayInterface: 0,
///     sharedSecret: "unguessable",
///     router: router.name,
///     vpnGatewayInterface: 0,
/// });
/// const routerInterface = new gcp.compute.RouterInterface("router_interface", {
///     name: "my-router",
///     router: router.name,
///     region: router.region,
///     vpnTunnel: vpnTunnel.name,
/// });
/// const rp_export = new gcp.compute.RouterRoutePolicy("rp-export", {
///     name: "my-router-rp-export",
///     router: router.name,
///     region: router.region,
///     type: "ROUTE_POLICY_TYPE_EXPORT",
///     terms: [{
///         priority: 2,
///         match: {
///             expression: "destination == '10.0.0.0/12'",
///             title: "export_expression",
///             description: "acceptance expression for export",
///         },
///         actions: [{
///             expression: "accept()",
///         }],
///     }],
/// }, {
///     dependsOn: [routerInterface],
/// });
/// const rp_import = new gcp.compute.RouterRoutePolicy("rp-import", {
///     name: "my-router-rp-import",
///     router: router.name,
///     region: router.region,
///     type: "ROUTE_POLICY_TYPE_IMPORT",
///     terms: [{
///         priority: 1,
///         match: {
///             expression: "destination == '10.0.0.0/12'",
///             title: "import_expression",
///             description: "acceptance expression for import",
///         },
///         actions: [{
///             expression: "accept()",
///         }],
///     }],
/// }, {
///     dependsOn: [
///         routerInterface,
///         rp_export,
///     ],
/// });
/// const routerPeer = new gcp.compute.RouterPeer("router_peer", {
///     name: "my-router-peer",
///     router: router.name,
///     region: router.region,
///     peerAsn: 65515,
///     advertisedRoutePriority: 100,
///     "interface": routerInterface.name,
///     md5AuthenticationKey: {
///         name: "my-router-peer-key",
///         key: "my-router-peer-key-value",
///     },
///     importPolicies: [rp_import.name],
///     exportPolicies: [rp_export.name],
/// }, {
///     dependsOn: [
///         rp_export,
///         rp_import,
///         routerInterface,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="my-router-net",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="my-router-subnet",
///     network=network.self_link,
///     ip_cidr_range="10.0.0.0/16",
///     region="us-central1")
/// address = gcp.compute.Address("address",
///     name="my-router",
///     region=subnetwork.region)
/// vpn_gateway = gcp.compute.HaVpnGateway("vpn_gateway",
///     name="my-router-gateway",
///     network=network.self_link,
///     region=subnetwork.region)
/// external_gateway = gcp.compute.ExternalVpnGateway("external_gateway",
///     name="my-router-external-gateway",
///     redundancy_type="SINGLE_IP_INTERNALLY_REDUNDANT",
///     description="An externally managed VPN gateway",
///     interfaces=[{
///         "id": 0,
///         "ip_address": "8.8.8.8",
///     }])
/// router = gcp.compute.Router("router",
///     name="my-router",
///     region=subnetwork.region,
///     network=network.self_link,
///     bgp={
///         "asn": 64514,
///     })
/// vpn_tunnel = gcp.compute.VPNTunnel("vpn_tunnel",
///     name="my-router",
///     region=subnetwork.region,
///     vpn_gateway=vpn_gateway.id,
///     peer_external_gateway=external_gateway.id,
///     peer_external_gateway_interface=0,
///     shared_secret="unguessable",
///     router=router.name,
///     vpn_gateway_interface=0)
/// router_interface = gcp.compute.RouterInterface("router_interface",
///     name="my-router",
///     router=router.name,
///     region=router.region,
///     vpn_tunnel=vpn_tunnel.name)
/// rp_export = gcp.compute.RouterRoutePolicy("rp-export",
///     name="my-router-rp-export",
///     router=router.name,
///     region=router.region,
///     type="ROUTE_POLICY_TYPE_EXPORT",
///     terms=[{
///         "priority": 2,
///         "match": {
///             "expression": "destination == '10.0.0.0/12'",
///             "title": "export_expression",
///             "description": "acceptance expression for export",
///         },
///         "actions": [{
///             "expression": "accept()",
///         }],
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[router_interface]))
/// rp_import = gcp.compute.RouterRoutePolicy("rp-import",
///     name="my-router-rp-import",
///     router=router.name,
///     region=router.region,
///     type="ROUTE_POLICY_TYPE_IMPORT",
///     terms=[{
///         "priority": 1,
///         "match": {
///             "expression": "destination == '10.0.0.0/12'",
///             "title": "import_expression",
///             "description": "acceptance expression for import",
///         },
///         "actions": [{
///             "expression": "accept()",
///         }],
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[
///             router_interface,
///             rp_export,
///         ]))
/// router_peer = gcp.compute.RouterPeer("router_peer",
///     name="my-router-peer",
///     router=router.name,
///     region=router.region,
///     peer_asn=65515,
///     advertised_route_priority=100,
///     interface=router_interface.name,
///     md5_authentication_key={
///         "name": "my-router-peer-key",
///         "key": "my-router-peer-key-value",
///     },
///     import_policies=[rp_import.name],
///     export_policies=[rp_export.name],
///     opts = pulumi.ResourceOptions(depends_on=[
///             rp_export,
///             rp_import,
///             router_interface,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "my-router-net",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "my-router-subnet",
///         Network = network.SelfLink,
///         IpCidrRange = "10.0.0.0/16",
///         Region = "us-central1",
///     });
///
///     var address = new Gcp.Compute.Address("address", new()
///     {
///         Name = "my-router",
///         Region = subnetwork.Region,
///     });
///
///     var vpnGateway = new Gcp.Compute.HaVpnGateway("vpn_gateway", new()
///     {
///         Name = "my-router-gateway",
///         Network = network.SelfLink,
///         Region = subnetwork.Region,
///     });
///
///     var externalGateway = new Gcp.Compute.ExternalVpnGateway("external_gateway", new()
///     {
///         Name = "my-router-external-gateway",
///         RedundancyType = "SINGLE_IP_INTERNALLY_REDUNDANT",
///         Description = "An externally managed VPN gateway",
///         Interfaces = new[]
///         {
///             new Gcp.Compute.Inputs.ExternalVpnGatewayInterfaceArgs
///             {
///                 Id = 0,
///                 IpAddress = "8.8.8.8",
///             },
///         },
///     });
///
///     var router = new Gcp.Compute.Router("router", new()
///     {
///         Name = "my-router",
///         Region = subnetwork.Region,
///         Network = network.SelfLink,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 64514,
///         },
///     });
///
///     var vpnTunnel = new Gcp.Compute.VPNTunnel("vpn_tunnel", new()
///     {
///         Name = "my-router",
///         Region = subnetwork.Region,
///         VpnGateway = vpnGateway.Id,
///         PeerExternalGateway = externalGateway.Id,
///         PeerExternalGatewayInterface = 0,
///         SharedSecret = "unguessable",
///         Router = router.Name,
///         VpnGatewayInterface = 0,
///     });
///
///     var routerInterface = new Gcp.Compute.RouterInterface("router_interface", new()
///     {
///         Name = "my-router",
///         Router = router.Name,
///         Region = router.Region,
///         VpnTunnel = vpnTunnel.Name,
///     });
///
///     var rp_export = new Gcp.Compute.RouterRoutePolicy("rp-export", new()
///     {
///         Name = "my-router-rp-export",
///         Router = router.Name,
///         Region = router.Region,
///         Type = "ROUTE_POLICY_TYPE_EXPORT",
///         Terms = new[]
///         {
///             new Gcp.Compute.Inputs.RouterRoutePolicyTermArgs
///             {
///                 Priority = 2,
///                 Match = new Gcp.Compute.Inputs.RouterRoutePolicyTermMatchArgs
///                 {
///                     Expression = "destination == '10.0.0.0/12'",
///                     Title = "export_expression",
///                     Description = "acceptance expression for export",
///                 },
///                 Actions = new[]
///                 {
///                     new Gcp.Compute.Inputs.RouterRoutePolicyTermActionArgs
///                     {
///                         Expression = "accept()",
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             routerInterface,
///         },
///     });
///
///     var rp_import = new Gcp.Compute.RouterRoutePolicy("rp-import", new()
///     {
///         Name = "my-router-rp-import",
///         Router = router.Name,
///         Region = router.Region,
///         Type = "ROUTE_POLICY_TYPE_IMPORT",
///         Terms = new[]
///         {
///             new Gcp.Compute.Inputs.RouterRoutePolicyTermArgs
///             {
///                 Priority = 1,
///                 Match = new Gcp.Compute.Inputs.RouterRoutePolicyTermMatchArgs
///                 {
///                     Expression = "destination == '10.0.0.0/12'",
///                     Title = "import_expression",
///                     Description = "acceptance expression for import",
///                 },
///                 Actions = new[]
///                 {
///                     new Gcp.Compute.Inputs.RouterRoutePolicyTermActionArgs
///                     {
///                         Expression = "accept()",
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             routerInterface,
///             rp_export,
///         },
///     });
///
///     var routerPeer = new Gcp.Compute.RouterPeer("router_peer", new()
///     {
///         Name = "my-router-peer",
///         Router = router.Name,
///         Region = router.Region,
///         PeerAsn = 65515,
///         AdvertisedRoutePriority = 100,
///         Interface = routerInterface.Name,
///         Md5AuthenticationKey = new Gcp.Compute.Inputs.RouterPeerMd5AuthenticationKeyArgs
///         {
///             Name = "my-router-peer-key",
///             Key = "my-router-peer-key-value",
///         },
///         ImportPolicies = new[]
///         {
///             rp_import.Name,
///         },
///         ExportPolicies = new[]
///         {
///             rp_export.Name,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             rp_export,
///             rp_import,
///             routerInterface,
///         },
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
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-router-net"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetwork, err := compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("my-router-subnet"),
/// 			Network:     network.SelfLink,
/// 			IpCidrRange: pulumi.String("10.0.0.0/16"),
/// 			Region:      pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewAddress(ctx, "address", &compute.AddressArgs{
/// 			Name:   pulumi.String("my-router"),
/// 			Region: subnetwork.Region,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpnGateway, err := compute.NewHaVpnGateway(ctx, "vpn_gateway", &compute.HaVpnGatewayArgs{
/// 			Name:    pulumi.String("my-router-gateway"),
/// 			Network: network.SelfLink,
/// 			Region:  subnetwork.Region,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		externalGateway, err := compute.NewExternalVpnGateway(ctx, "external_gateway", &compute.ExternalVpnGatewayArgs{
/// 			Name:           pulumi.String("my-router-external-gateway"),
/// 			RedundancyType: pulumi.String("SINGLE_IP_INTERNALLY_REDUNDANT"),
/// 			Description:    pulumi.String("An externally managed VPN gateway"),
/// 			Interfaces: compute.ExternalVpnGatewayInterfaceArray{
/// 				&compute.ExternalVpnGatewayInterfaceArgs{
/// 					Id:        pulumi.Int(0),
/// 					IpAddress: pulumi.String("8.8.8.8"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		router, err := compute.NewRouter(ctx, "router", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Region:  subnetwork.Region,
/// 			Network: network.SelfLink,
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn: pulumi.Int(64514),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpnTunnel, err := compute.NewVPNTunnel(ctx, "vpn_tunnel", &compute.VPNTunnelArgs{
/// 			Name:                         pulumi.String("my-router"),
/// 			Region:                       subnetwork.Region,
/// 			VpnGateway:                   vpnGateway.ID(),
/// 			PeerExternalGateway:          externalGateway.ID(),
/// 			PeerExternalGatewayInterface: pulumi.Int(0),
/// 			SharedSecret:                 pulumi.String("unguessable"),
/// 			Router:                       router.Name,
/// 			VpnGatewayInterface:          pulumi.Int(0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		routerInterface, err := compute.NewRouterInterface(ctx, "router_interface", &compute.RouterInterfaceArgs{
/// 			Name:      pulumi.String("my-router"),
/// 			Router:    router.Name,
/// 			Region:    router.Region,
/// 			VpnTunnel: vpnTunnel.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rp_export, err := compute.NewRouterRoutePolicy(ctx, "rp-export", &compute.RouterRoutePolicyArgs{
/// 			Name:   pulumi.String("my-router-rp-export"),
/// 			Router: router.Name,
/// 			Region: router.Region,
/// 			Type:   pulumi.String("ROUTE_POLICY_TYPE_EXPORT"),
/// 			Terms: compute.RouterRoutePolicyTermArray{
/// 				&compute.RouterRoutePolicyTermArgs{
/// 					Priority: pulumi.Int(2),
/// 					Match: &compute.RouterRoutePolicyTermMatchArgs{
/// 						Expression:  pulumi.String("destination == '10.0.0.0/12'"),
/// 						Title:       pulumi.String("export_expression"),
/// 						Description: pulumi.String("acceptance expression for export"),
/// 					},
/// 					Actions: compute.RouterRoutePolicyTermActionArray{
/// 						&compute.RouterRoutePolicyTermActionArgs{
/// 							Expression: pulumi.String("accept()"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			routerInterface,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rp_import, err := compute.NewRouterRoutePolicy(ctx, "rp-import", &compute.RouterRoutePolicyArgs{
/// 			Name:   pulumi.String("my-router-rp-import"),
/// 			Router: router.Name,
/// 			Region: router.Region,
/// 			Type:   pulumi.String("ROUTE_POLICY_TYPE_IMPORT"),
/// 			Terms: compute.RouterRoutePolicyTermArray{
/// 				&compute.RouterRoutePolicyTermArgs{
/// 					Priority: pulumi.Int(1),
/// 					Match: &compute.RouterRoutePolicyTermMatchArgs{
/// 						Expression:  pulumi.String("destination == '10.0.0.0/12'"),
/// 						Title:       pulumi.String("import_expression"),
/// 						Description: pulumi.String("acceptance expression for import"),
/// 					},
/// 					Actions: compute.RouterRoutePolicyTermActionArray{
/// 						&compute.RouterRoutePolicyTermActionArgs{
/// 							Expression: pulumi.String("accept()"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			routerInterface,
/// 			rp_export,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouterPeer(ctx, "router_peer", &compute.RouterPeerArgs{
/// 			Name:                    pulumi.String("my-router-peer"),
/// 			Router:                  router.Name,
/// 			Region:                  router.Region,
/// 			PeerAsn:                 pulumi.Int(65515),
/// 			AdvertisedRoutePriority: pulumi.Int(100),
/// 			Interface:               routerInterface.Name,
/// 			Md5AuthenticationKey: &compute.RouterPeerMd5AuthenticationKeyArgs{
/// 				Name: pulumi.String("my-router-peer-key"),
/// 				Key:  pulumi.String("my-router-peer-key-value"),
/// 			},
/// 			ImportPolicies: pulumi.StringArray{
/// 				rp_import.Name,
/// 			},
/// 			ExportPolicies: pulumi.StringArray{
/// 				rp_export.Name,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			rp_export,
/// 			rp_import,
/// 			routerInterface,
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.Address;
/// import com.pulumi.gcp.compute.AddressArgs;
/// import com.pulumi.gcp.compute.HaVpnGateway;
/// import com.pulumi.gcp.compute.HaVpnGatewayArgs;
/// import com.pulumi.gcp.compute.ExternalVpnGateway;
/// import com.pulumi.gcp.compute.ExternalVpnGatewayArgs;
/// import com.pulumi.gcp.compute.inputs.ExternalVpnGatewayInterfaceArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.VPNTunnel;
/// import com.pulumi.gcp.compute.VPNTunnelArgs;
/// import com.pulumi.gcp.compute.RouterInterface;
/// import com.pulumi.gcp.compute.RouterInterfaceArgs;
/// import com.pulumi.gcp.compute.RouterRoutePolicy;
/// import com.pulumi.gcp.compute.RouterRoutePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermArgs;
/// import com.pulumi.gcp.compute.inputs.RouterRoutePolicyTermMatchArgs;
/// import com.pulumi.gcp.compute.RouterPeer;
/// import com.pulumi.gcp.compute.RouterPeerArgs;
/// import com.pulumi.gcp.compute.inputs.RouterPeerMd5AuthenticationKeyArgs;
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
///             .name("my-router-net")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("my-router-subnet")
///             .network(network.selfLink())
///             .ipCidrRange("10.0.0.0/16")
///             .region("us-central1")
///             .build());
///
///         var address = new Address("address", AddressArgs.builder()
///             .name("my-router")
///             .region(subnetwork.region())
///             .build());
///
///         var vpnGateway = new HaVpnGateway("vpnGateway", HaVpnGatewayArgs.builder()
///             .name("my-router-gateway")
///             .network(network.selfLink())
///             .region(subnetwork.region())
///             .build());
///
///         var externalGateway = new ExternalVpnGateway("externalGateway", ExternalVpnGatewayArgs.builder()
///             .name("my-router-external-gateway")
///             .redundancyType("SINGLE_IP_INTERNALLY_REDUNDANT")
///             .description("An externally managed VPN gateway")
///             .interfaces(ExternalVpnGatewayInterfaceArgs.builder()
///                 .id(0)
///                 .ipAddress("8.8.8.8")
///                 .build())
///             .build());
///
///         var router = new Router("router", RouterArgs.builder()
///             .name("my-router")
///             .region(subnetwork.region())
///             .network(network.selfLink())
///             .bgp(RouterBgpArgs.builder()
///                 .asn(64514)
///                 .build())
///             .build());
///
///         var vpnTunnel = new VPNTunnel("vpnTunnel", VPNTunnelArgs.builder()
///             .name("my-router")
///             .region(subnetwork.region())
///             .vpnGateway(vpnGateway.id())
///             .peerExternalGateway(externalGateway.id())
///             .peerExternalGatewayInterface(0)
///             .sharedSecret("unguessable")
///             .router(router.name())
///             .vpnGatewayInterface(0)
///             .build());
///
///         var routerInterface = new RouterInterface("routerInterface", RouterInterfaceArgs.builder()
///             .name("my-router")
///             .router(router.name())
///             .region(router.region())
///             .vpnTunnel(vpnTunnel.name())
///             .build());
///
///         var rp_export = new RouterRoutePolicy("rp-export", RouterRoutePolicyArgs.builder()
///             .name("my-router-rp-export")
///             .router(router.name())
///             .region(router.region())
///             .type("ROUTE_POLICY_TYPE_EXPORT")
///             .terms(RouterRoutePolicyTermArgs.builder()
///                 .priority(2)
///                 .match(RouterRoutePolicyTermMatchArgs.builder()
///                     .expression("destination == '10.0.0.0/12'")
///                     .title("export_expression")
///                     .description("acceptance expression for export")
///                     .build())
///                 .actions(RouterRoutePolicyTermActionArgs.builder()
///                     .expression("accept()")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(routerInterface)
///                 .build());
///
///         var rp_import = new RouterRoutePolicy("rp-import", RouterRoutePolicyArgs.builder()
///             .name("my-router-rp-import")
///             .router(router.name())
///             .region(router.region())
///             .type("ROUTE_POLICY_TYPE_IMPORT")
///             .terms(RouterRoutePolicyTermArgs.builder()
///                 .priority(1)
///                 .match(RouterRoutePolicyTermMatchArgs.builder()
///                     .expression("destination == '10.0.0.0/12'")
///                     .title("import_expression")
///                     .description("acceptance expression for import")
///                     .build())
///                 .actions(RouterRoutePolicyTermActionArgs.builder()
///                     .expression("accept()")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     routerInterface,
///                     rp_export)
///                 .build());
///
///         var routerPeer = new RouterPeer("routerPeer", RouterPeerArgs.builder()
///             .name("my-router-peer")
///             .router(router.name())
///             .region(router.region())
///             .peerAsn(65515)
///             .advertisedRoutePriority(100)
///             .interface_(routerInterface.name())
///             .md5AuthenticationKey(RouterPeerMd5AuthenticationKeyArgs.builder()
///                 .name("my-router-peer-key")
///                 .key("my-router-peer-key-value")
///                 .build())
///             .importPolicies(rp_import.name())
///             .exportPolicies(rp_export.name())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     rp_export,
///                     rp_import,
///                     routerInterface)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: my-router-net
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: my-router-subnet
///       network: ${network.selfLink}
///       ipCidrRange: 10.0.0.0/16
///       region: us-central1
///   address:
///     type: gcp:compute:Address
///     properties:
///       name: my-router
///       region: ${subnetwork.region}
///   vpnGateway:
///     type: gcp:compute:HaVpnGateway
///     name: vpn_gateway
///     properties:
///       name: my-router-gateway
///       network: ${network.selfLink}
///       region: ${subnetwork.region}
///   externalGateway:
///     type: gcp:compute:ExternalVpnGateway
///     name: external_gateway
///     properties:
///       name: my-router-external-gateway
///       redundancyType: SINGLE_IP_INTERNALLY_REDUNDANT
///       description: An externally managed VPN gateway
///       interfaces:
///         - id: 0
///           ipAddress: 8.8.8.8
///   router:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       region: ${subnetwork.region}
///       network: ${network.selfLink}
///       bgp:
///         asn: 64514
///   vpnTunnel:
///     type: gcp:compute:VPNTunnel
///     name: vpn_tunnel
///     properties:
///       name: my-router
///       region: ${subnetwork.region}
///       vpnGateway: ${vpnGateway.id}
///       peerExternalGateway: ${externalGateway.id}
///       peerExternalGatewayInterface: 0
///       sharedSecret: unguessable
///       router: ${router.name}
///       vpnGatewayInterface: 0
///   routerInterface:
///     type: gcp:compute:RouterInterface
///     name: router_interface
///     properties:
///       name: my-router
///       router: ${router.name}
///       region: ${router.region}
///       vpnTunnel: ${vpnTunnel.name}
///   rp-export:
///     type: gcp:compute:RouterRoutePolicy
///     properties:
///       name: my-router-rp-export
///       router: ${router.name}
///       region: ${router.region}
///       type: ROUTE_POLICY_TYPE_EXPORT
///       terms:
///         - priority: 2
///           match:
///             expression: destination == '10.0.0.0/12'
///             title: export_expression
///             description: acceptance expression for export
///           actions:
///             - expression: accept()
///     options:
///       dependsOn:
///         - ${routerInterface}
///   rp-import:
///     type: gcp:compute:RouterRoutePolicy
///     properties:
///       name: my-router-rp-import
///       router: ${router.name}
///       region: ${router.region}
///       type: ROUTE_POLICY_TYPE_IMPORT
///       terms:
///         - priority: 1
///           match:
///             expression: destination == '10.0.0.0/12'
///             title: import_expression
///             description: acceptance expression for import
///           actions:
///             - expression: accept()
///     options:
///       dependsOn:
///         - ${routerInterface}
///         - ${["rp-export"]}
///   routerPeer:
///     type: gcp:compute:RouterPeer
///     name: router_peer
///     properties:
///       name: my-router-peer
///       router: ${router.name}
///       region: ${router.region}
///       peerAsn: 65515
///       advertisedRoutePriority: 100
///       interface: ${routerInterface.name}
///       md5AuthenticationKey:
///         name: my-router-peer-key
///         key: my-router-peer-key-value
///       importPolicies:
///         - ${["rp-import"].name}
///       exportPolicies:
///         - ${["rp-export"].name}
///     options:
///       dependsOn:
///         - ${["rp-export"]}
///         - ${["rp-import"]}
///         - ${routerInterface}
/// ```
///
///
/// ## Import
///
/// RouterBgpPeer can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/routers/{{router}}/{{name}}`
///
/// * `{{project}}/{{region}}/{{router}}/{{name}}`
///
/// * `{{region}}/{{router}}/{{name}}`
///
/// * `{{router}}/{{name}}`
///
/// When using the `pulumi import` command, RouterBgpPeer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerPeer:RouterPeer default projects/{{project}}/regions/{{region}}/routers/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerPeer:RouterPeer default {{project}}/{{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerPeer:RouterPeer default {{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerPeer:RouterPeer default {{router}}/{{name}}
/// ```
class RouterPeer extends pulumi.CustomResource {
  /// User-specified flag to indicate which mode to use for advertisement.
  /// Valid values of this enum field are: `DEFAULT`, `CUSTOM`
  /// Default value is `DEFAULT`.
  /// Possible values are: `DEFAULT`, `CUSTOM`.
  late final pulumi.Output<String?> advertiseMode;
  /// User-specified list of prefix groups to advertise in custom
  /// mode, which currently supports the following option:
  /// * `ALL_SUBNETS`: Advertises all of the router's own VPC subnets.
  /// This excludes any routes learned for subnets that use VPC Network
  /// Peering.
  ///
  /// Note that this field can only be populated if advertiseMode is `CUSTOM`
  /// and overrides the list defined for the router (in the "bgp" message).
  /// These groups are advertised in addition to any specified prefixes.
  /// Leave this field blank to advertise no custom groups.
  late final pulumi.Output<List<String>?> advertisedGroups;
  /// User-specified list of individual IP ranges to advertise in
  /// custom mode. This field can only be populated if advertiseMode
  /// is `CUSTOM` and is advertised to all peers of the router. These IP
  /// ranges will be advertised in addition to any specified groups.
  /// Leave this field blank to advertise no custom IP ranges.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> advertisedIpRanges;
  /// The priority of routes advertised to this BGP peer.
  /// Where there is more than one matching route of maximum
  /// length, the routes with the lowest priority value win.
  late final pulumi.Output<int?> advertisedRoutePriority;
  /// BFD configuration for the BGP peering.
  /// Structure is documented below.
  late final pulumi.Output<RouterPeerBfd> bfd;
  /// The custom learned route IP address range. Must be a valid CIDR-formatted prefix.
  /// If an IP address is provided without a subnet mask, it is interpreted as, for IPv4,
  /// a /32 singular IP address range, and, for IPv6, /128.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> customLearnedIpRanges;
  /// The user-defined custom learned route priority for a BGP session.
  /// This value is applied to all custom learned route ranges for the session.
  /// You can choose a value from 0 to 65335. If you don't provide a value,
  /// Google Cloud assigns a priority of 100 to the ranges.
  late final pulumi.Output<int?> customLearnedRoutePriority;
  /// The status of the BGP peer connection. If set to false, any active session
  /// with the peer is terminated and all associated routing information is removed.
  /// If set to true, the peer connection can be established with routing information.
  /// The default is true.
  late final pulumi.Output<bool?> enable;
  /// Enable IPv4 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 4.
  late final pulumi.Output<bool> enableIpv4;
  /// Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  late final pulumi.Output<bool?> enableIpv6;
  /// routers.list of export policies applied to this peer, in the order they must be evaluated.
  /// The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_EXPORT type.
  late final pulumi.Output<List<String>?> exportPolicies;
  /// routers.list of import policies applied to this peer, in the order they must be evaluated.
  /// The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_IMPORT type.
  late final pulumi.Output<List<String>?> importPolicies;
  /// Name of the interface the BGP peer is associated with.
  late final pulumi.Output<String> interface;
  /// IP address of the interface inside Google Cloud Platform.
  /// Only IPv4 is supported.
  late final pulumi.Output<String> ipAddress;
  /// IPv4 address of the interface inside Google Cloud Platform.
  late final pulumi.Output<String> ipv4NexthopAddress;
  /// IPv6 address of the interface inside Google Cloud Platform.
  /// The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
  /// If you do not specify the next hop addresses, Google Cloud automatically
  /// assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you.
  late final pulumi.Output<String> ipv6NexthopAddress;
  /// An internal boolean field for provider use for zero_advertised_route_priority.
  late final pulumi.Output<bool> isAdvertisedRoutePrioritySet;
  /// An internal boolean field for provider use.
  late final pulumi.Output<bool> isCustomLearnedPrioritySet;
  /// The resource that configures and manages this BGP peer.
  /// * `MANAGED_BY_USER` is the default value and can be managed by
  /// you or other users
  /// * `MANAGED_BY_ATTACHMENT` is a BGP peer that is configured and
  /// managed by Cloud Interconnect, specifically by an
  /// InterconnectAttachment of type PARTNER. Google automatically
  /// creates, updates, and deletes this type of BGP peer when the
  /// PARTNER InterconnectAttachment is created, updated,
  /// or deleted.
  late final pulumi.Output<String> managementType;
  /// Configuration for MD5 authentication on the BGP session.
  /// Structure is documented below.
  late final pulumi.Output<RouterPeerMd5AuthenticationKey?> md5AuthenticationKey;
  /// Name of this BGP peer. The name must be 1-63 characters long,
  /// and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// Peer BGP Autonomous System Number (ASN).
  /// Each BGP interface may use a different value.
  late final pulumi.Output<int> peerAsn;
  /// IP address of the BGP interface outside Google Cloud Platform.
  /// Only IPv4 is supported. Required if `ip_address` is set.
  late final pulumi.Output<String> peerIpAddress;
  /// IPv4 address of the BGP interface outside Google Cloud Platform.
  late final pulumi.Output<String> peerIpv4NexthopAddress;
  /// IPv6 address of the BGP interface outside Google Cloud Platform.
  /// The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
  /// If you do not specify the next hop addresses, Google Cloud automatically
  /// assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you.
  late final pulumi.Output<String> peerIpv6NexthopAddress;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Region where the router and BgpPeer reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;
  /// The name of the Cloud Router in which this BgpPeer will be configured.
  ///
  ///
  /// - - -
  late final pulumi.Output<String> router;
  /// The URI of the VM instance that is used as third-party router appliances
  /// such as Next Gen Firewalls, Virtual Routers, or Router Appliances.
  /// The VM instance must be located in zones contained in the same region as
  /// this Cloud Router. The VM instance is the peer side of the BGP session.
  late final pulumi.Output<String?> routerApplianceInstance;
  /// The user-defined zero-advertised-route-priority for a advertised-route-priority in BGP session.
  /// This value has to be set true to force the advertised_route_priority to be 0.
  late final pulumi.Output<bool?> zeroAdvertisedRoutePriority;
  /// The user-defined zero-custom-learned-route-priority for a custom-learned-route-priority in BGP session.
  /// This value has to be set true to force the custom_learned_route_priority to be 0.
  late final pulumi.Output<bool?> zeroCustomLearnedRoutePriority;

  /// Creates a new [RouterPeer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouterPeer]. {@macro pulumi_compute_router_peer_router_peer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouterPeer(
    String name, {
    RouterPeerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerPeer:RouterPeer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advertiseMode = registerOutput<String?>('advertiseMode');
    advertisedGroups = registerOutput<List<String>?>('advertisedGroups');
    advertisedIpRanges = registerOutput<List<Map<String, dynamic>>?>('advertisedIpRanges');
    advertisedRoutePriority = registerOutput<int?>('advertisedRoutePriority');
    bfd = registerOutput<RouterPeerBfd>('bfd', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterPeerBfd.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customLearnedIpRanges = registerOutput<List<Map<String, dynamic>>?>('customLearnedIpRanges');
    customLearnedRoutePriority = registerOutput<int?>('customLearnedRoutePriority');
    enable = registerOutput<bool?>('enable');
    enableIpv4 = registerOutput<bool>('enableIpv4');
    enableIpv6 = registerOutput<bool?>('enableIpv6');
    exportPolicies = registerOutput<List<String>?>('exportPolicies');
    importPolicies = registerOutput<List<String>?>('importPolicies');
    interface = registerOutput<String>('interface');
    ipAddress = registerOutput<String>('ipAddress');
    ipv4NexthopAddress = registerOutput<String>('ipv4NexthopAddress');
    ipv6NexthopAddress = registerOutput<String>('ipv6NexthopAddress');
    isAdvertisedRoutePrioritySet = registerOutput<bool>('isAdvertisedRoutePrioritySet');
    isCustomLearnedPrioritySet = registerOutput<bool>('isCustomLearnedPrioritySet');
    managementType = registerOutput<String>('managementType');
    md5AuthenticationKey = registerOutput<RouterPeerMd5AuthenticationKey?>('md5AuthenticationKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterPeerMd5AuthenticationKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    peerAsn = registerOutput<int>('peerAsn');
    peerIpAddress = registerOutput<String>('peerIpAddress');
    peerIpv4NexthopAddress = registerOutput<String>('peerIpv4NexthopAddress');
    peerIpv6NexthopAddress = registerOutput<String>('peerIpv6NexthopAddress');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    routerApplianceInstance = registerOutput<String?>('routerApplianceInstance');
    zeroAdvertisedRoutePriority = registerOutput<bool?>('zeroAdvertisedRoutePriority');
    zeroCustomLearnedRoutePriority = registerOutput<bool?>('zeroCustomLearnedRoutePriority');
  }

  /// Gets an existing [RouterPeer] resource's state with the given [name] and [id].
  static RouterPeer get(
    String name,
    pulumi.Input<String> id, {
    RouterPeerState? state,
  }) {
    return RouterPeer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouterPeer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerPeer:RouterPeer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advertiseMode = registerOutput<String?>('advertiseMode');
    advertisedGroups = registerOutput<List<String>?>('advertisedGroups');
    advertisedIpRanges = registerOutput<List<Map<String, dynamic>>?>('advertisedIpRanges');
    advertisedRoutePriority = registerOutput<int?>('advertisedRoutePriority');
    bfd = registerOutput<RouterPeerBfd>('bfd', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterPeerBfd.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    customLearnedIpRanges = registerOutput<List<Map<String, dynamic>>?>('customLearnedIpRanges');
    customLearnedRoutePriority = registerOutput<int?>('customLearnedRoutePriority');
    enable = registerOutput<bool?>('enable');
    enableIpv4 = registerOutput<bool>('enableIpv4');
    enableIpv6 = registerOutput<bool?>('enableIpv6');
    exportPolicies = registerOutput<List<String>?>('exportPolicies');
    importPolicies = registerOutput<List<String>?>('importPolicies');
    interface = registerOutput<String>('interface');
    ipAddress = registerOutput<String>('ipAddress');
    ipv4NexthopAddress = registerOutput<String>('ipv4NexthopAddress');
    ipv6NexthopAddress = registerOutput<String>('ipv6NexthopAddress');
    isAdvertisedRoutePrioritySet = registerOutput<bool>('isAdvertisedRoutePrioritySet');
    isCustomLearnedPrioritySet = registerOutput<bool>('isCustomLearnedPrioritySet');
    managementType = registerOutput<String>('managementType');
    md5AuthenticationKey = registerOutput<RouterPeerMd5AuthenticationKey?>('md5AuthenticationKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterPeerMd5AuthenticationKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    peerAsn = registerOutput<int>('peerAsn');
    peerIpAddress = registerOutput<String>('peerIpAddress');
    peerIpv4NexthopAddress = registerOutput<String>('peerIpv4NexthopAddress');
    peerIpv6NexthopAddress = registerOutput<String>('peerIpv6NexthopAddress');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    router = registerOutput<String>('router');
    routerApplianceInstance = registerOutput<String?>('routerApplianceInstance');
    zeroAdvertisedRoutePriority = registerOutput<bool?>('zeroAdvertisedRoutePriority');
    zeroCustomLearnedRoutePriority = registerOutput<bool?>('zeroCustomLearnedRoutePriority');
  }
}
