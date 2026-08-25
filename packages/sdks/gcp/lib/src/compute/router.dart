import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_args.dart';
import 'router_bgp.dart';
import 'router_md5_authentication_keys.dart';
import 'router_params.dart';
import 'router_state.dart';

/// Represents a Router resource.
///
///
/// To get more information about Router, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foobarNetwork = new gcp.compute.Network("foobar", {
///     name: "my-network",
///     autoCreateSubnetworks: false,
/// });
/// const foobar = new gcp.compute.Router("foobar", {
///     name: "my-router",
///     network: foobarNetwork.name,
///     bgp: {
///         asn: 64514,
///         advertiseMode: "CUSTOM",
///         advertisedGroups: ["ALL_SUBNETS"],
///         advertisedIpRanges: [
///             {
///                 range: "1.2.3.4",
///             },
///             {
///                 range: "6.7.0.0/16",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foobar_network = gcp.compute.Network("foobar",
///     name="my-network",
///     auto_create_subnetworks=False)
/// foobar = gcp.compute.Router("foobar",
///     name="my-router",
///     network=foobar_network.name,
///     bgp={
///         "asn": 64514,
///         "advertise_mode": "CUSTOM",
///         "advertised_groups": ["ALL_SUBNETS"],
///         "advertised_ip_ranges": [
///             {
///                 "range": "1.2.3.4",
///             },
///             {
///                 "range": "6.7.0.0/16",
///             },
///         ],
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
///     var foobarNetwork = new Gcp.Compute.Network("foobar", new()
///     {
///         Name = "my-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var foobar = new Gcp.Compute.Router("foobar", new()
///     {
///         Name = "my-router",
///         Network = foobarNetwork.Name,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 64514,
///             AdvertiseMode = "CUSTOM",
///             AdvertisedGroups = new[]
///             {
///                 "ALL_SUBNETS",
///             },
///             AdvertisedIpRanges = new[]
///             {
///                 new Gcp.Compute.Inputs.RouterBgpAdvertisedIpRangeArgs
///                 {
///                     Range = "1.2.3.4",
///                 },
///                 new Gcp.Compute.Inputs.RouterBgpAdvertisedIpRangeArgs
///                 {
///                     Range = "6.7.0.0/16",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobarNetwork, err := compute.NewNetwork(ctx, "foobar", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("my-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouter(ctx, "foobar", &compute.RouterArgs{
/// 			Name:    pulumi.String("my-router"),
/// 			Network: foobarNetwork.Name,
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn:           pulumi.Int(64514),
/// 				AdvertiseMode: pulumi.String("CUSTOM"),
/// 				AdvertisedGroups: pulumi.StringArray{
/// 					pulumi.String("ALL_SUBNETS"),
/// 				},
/// 				AdvertisedIpRanges: compute.RouterBgpAdvertisedIpRangeArray{
/// 					&compute.RouterBgpAdvertisedIpRangeArgs{
/// 						Range: pulumi.String("1.2.3.4"),
/// 					},
/// 					&compute.RouterBgpAdvertisedIpRangeArgs{
/// 						Range: pulumi.String("6.7.0.0/16"),
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_router" "foobar" {
///   name    = "my-router"
///   network = gcp_compute_network.foobar.name
///   bgp = {
///     asn               = 64514
///     advertise_mode    = "CUSTOM"
///     advertised_groups = ["ALL_SUBNETS"]
///     advertised_ip_ranges = [{
///       "range" = "1.2.3.4"
///       }, {
///       "range" = "6.7.0.0/16"
///     }]
///   }
/// }
/// resource "gcp_compute_network" "foobar" {
///   name                    = "my-network"
///   auto_create_subnetworks = false
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
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpAdvertisedIpRangeArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var foobarNetwork = new Network("foobarNetwork", NetworkArgs.builder()
///             .name("my-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var foobar = new Router("foobar", RouterArgs.builder()
///             .name("my-router")
///             .network(foobarNetwork.name())
///             .bgp(RouterBgpArgs.builder()
///                 .asn(64514)
///                 .advertiseMode("CUSTOM")
///                 .advertisedGroups("ALL_SUBNETS")
///                 .advertisedIpRanges(
///                     RouterBgpAdvertisedIpRangeArgs.builder()
///                         .range("1.2.3.4")
///                         .build(),
///                     RouterBgpAdvertisedIpRangeArgs.builder()
///                         .range("6.7.0.0/16")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       network: ${foobarNetwork.name}
///       bgp:
///         asn: 64514
///         advertiseMode: CUSTOM
///         advertisedGroups:
///           - ALL_SUBNETS
///         advertisedIpRanges:
///           - range: 1.2.3.4
///           - range: 6.7.0.0/16
///   foobarNetwork:
///     type: gcp:compute:Network
///     name: foobar
///     properties:
///       name: my-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Compute Router Encrypted Interconnect
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "test-network",
///     autoCreateSubnetworks: false,
/// });
/// const encrypted_interconnect_router = new gcp.compute.Router("encrypted-interconnect-router", {
///     name: "test-router",
///     network: network.name,
///     encryptedInterconnectRouter: true,
///     bgp: {
///         asn: 64514,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="test-network",
///     auto_create_subnetworks=False)
/// encrypted_interconnect_router = gcp.compute.Router("encrypted-interconnect-router",
///     name="test-router",
///     network=network.name,
///     encrypted_interconnect_router=True,
///     bgp={
///         "asn": 64514,
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
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var encrypted_interconnect_router = new Gcp.Compute.Router("encrypted-interconnect-router", new()
///     {
///         Name = "test-router",
///         Network = network.Name,
///         EncryptedInterconnectRouter = true,
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 64514,
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
/// 			Name:                  pulumi.String("test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouter(ctx, "encrypted-interconnect-router", &compute.RouterArgs{
/// 			Name:                        pulumi.String("test-router"),
/// 			Network:                     network.Name,
/// 			EncryptedInterconnectRouter: pulumi.Bool(true),
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn: pulumi.Int(64514),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_router" "encrypted-interconnect-router" {
///   name                          = "test-router"
///   network                       = gcp_compute_network.network.name
///   encrypted_interconnect_router = true
///   bgp = {
///     asn = 64514
///   }
/// }
/// resource "gcp_compute_network" "network" {
///   name                    = "test-network"
///   auto_create_subnetworks = false
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
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var encrypted_interconnect_router = new Router("encrypted-interconnect-router", RouterArgs.builder()
///             .name("test-router")
///             .network(network.name())
///             .encryptedInterconnectRouter(true)
///             .bgp(RouterBgpArgs.builder()
///                 .asn(64514)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   encrypted-interconnect-router:
///     type: gcp:compute:Router
///     properties:
///       name: test-router
///       network: ${network.name}
///       encryptedInterconnectRouter: true
///       bgp:
///         asn: 64514
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: test-network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Router Ncc Gw
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network = new gcp.compute.Network("network", {
///     name: "net-spoke",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork = new gcp.compute.Subnetwork("subnetwork", {
///     name: "tf-test-subnet_37118",
///     ipCidrRange: "10.0.0.0/28",
///     region: "us-central1",
///     network: network.selfLink,
/// });
/// const basicHub = new gcp.networkconnectivity.Hub("basic_hub", {
///     name: "hub",
///     description: "A sample hub",
///     labels: {
///         "label-two": "value-one",
///     },
///     presetTopology: "HYBRID_INSPECTION",
/// });
/// const primary = new gcp.networkconnectivity.Spoke("primary", {
///     name: "my-ncc-gw",
///     location: "us-central1",
///     description: "A sample spoke of type Gateway",
///     labels: {
///         "label-one": "value-one",
///     },
///     hub: basicHub.id,
///     gateway: {
///         ipRangeReservations: [{
///             ipRange: "10.0.0.0/23",
///         }],
///         capacity: "CAPACITY_1_GBPS",
///     },
///     group: "gateways",
/// });
/// const foobar = new gcp.compute.Router("foobar", {
///     name: "my-router",
///     bgp: {
///         asn: 64514,
///         advertiseMode: "CUSTOM",
///         advertisedGroups: ["ALL_SUBNETS"],
///         advertisedIpRanges: [
///             {
///                 range: "1.2.3.4",
///             },
///             {
///                 range: "6.7.0.0/16",
///             },
///         ],
///     },
///     nccGateway: primary.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network = gcp.compute.Network("network",
///     name="net-spoke",
///     auto_create_subnetworks=False)
/// subnetwork = gcp.compute.Subnetwork("subnetwork",
///     name="tf-test-subnet_37118",
///     ip_cidr_range="10.0.0.0/28",
///     region="us-central1",
///     network=network.self_link)
/// basic_hub = gcp.networkconnectivity.Hub("basic_hub",
///     name="hub",
///     description="A sample hub",
///     labels={
///         "label-two": "value-one",
///     },
///     preset_topology="HYBRID_INSPECTION")
/// primary = gcp.networkconnectivity.Spoke("primary",
///     name="my-ncc-gw",
///     location="us-central1",
///     description="A sample spoke of type Gateway",
///     labels={
///         "label-one": "value-one",
///     },
///     hub=basic_hub.id,
///     gateway={
///         "ip_range_reservations": [{
///             "ip_range": "10.0.0.0/23",
///         }],
///         "capacity": "CAPACITY_1_GBPS",
///     },
///     group="gateways")
/// foobar = gcp.compute.Router("foobar",
///     name="my-router",
///     bgp={
///         "asn": 64514,
///         "advertise_mode": "CUSTOM",
///         "advertised_groups": ["ALL_SUBNETS"],
///         "advertised_ip_ranges": [
///             {
///                 "range": "1.2.3.4",
///             },
///             {
///                 "range": "6.7.0.0/16",
///             },
///         ],
///     },
///     ncc_gateway=primary.id)
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
///         Name = "net-spoke",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork = new Gcp.Compute.Subnetwork("subnetwork", new()
///     {
///         Name = "tf-test-subnet_37118",
///         IpCidrRange = "10.0.0.0/28",
///         Region = "us-central1",
///         Network = network.SelfLink,
///     });
///
///     var basicHub = new Gcp.NetworkConnectivity.Hub("basic_hub", new()
///     {
///         Name = "hub",
///         Description = "A sample hub",
///         Labels =
///         {
///             { "label-two", "value-one" },
///         },
///         PresetTopology = "HYBRID_INSPECTION",
///     });
///
///     var primary = new Gcp.NetworkConnectivity.Spoke("primary", new()
///     {
///         Name = "my-ncc-gw",
///         Location = "us-central1",
///         Description = "A sample spoke of type Gateway",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Hub = basicHub.Id,
///         Gateway = new Gcp.NetworkConnectivity.Inputs.SpokeGatewayArgs
///         {
///             IpRangeReservations = new[]
///             {
///                 new Gcp.NetworkConnectivity.Inputs.SpokeGatewayIpRangeReservationArgs
///                 {
///                     IpRange = "10.0.0.0/23",
///                 },
///             },
///             Capacity = "CAPACITY_1_GBPS",
///         },
///         Group = "gateways",
///     });
///
///     var foobar = new Gcp.Compute.Router("foobar", new()
///     {
///         Name = "my-router",
///         Bgp = new Gcp.Compute.Inputs.RouterBgpArgs
///         {
///             Asn = 64514,
///             AdvertiseMode = "CUSTOM",
///             AdvertisedGroups = new[]
///             {
///                 "ALL_SUBNETS",
///             },
///             AdvertisedIpRanges = new[]
///             {
///                 new Gcp.Compute.Inputs.RouterBgpAdvertisedIpRangeArgs
///                 {
///                     Range = "1.2.3.4",
///                 },
///                 new Gcp.Compute.Inputs.RouterBgpAdvertisedIpRangeArgs
///                 {
///                     Range = "6.7.0.0/16",
///                 },
///             },
///         },
///         NccGateway = primary.Id,
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network, err := compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("net-spoke"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "subnetwork", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("tf-test-subnet_37118"),
/// 			IpCidrRange: pulumi.String("10.0.0.0/28"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     network.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicHub, err := networkconnectivity.NewHub(ctx, "basic_hub", &networkconnectivity.HubArgs{
/// 			Name:        pulumi.String("hub"),
/// 			Description: pulumi.String("A sample hub"),
/// 			Labels: pulumi.StringMap{
/// 				"label-two": pulumi.String("value-one"),
/// 			},
/// 			PresetTopology: pulumi.String("HYBRID_INSPECTION"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := networkconnectivity.NewSpoke(ctx, "primary", &networkconnectivity.SpokeArgs{
/// 			Name:        pulumi.String("my-ncc-gw"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("A sample spoke of type Gateway"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Hub: basicHub.ID().ToIDOutput().ToStringOutput(),
/// 			Gateway: &networkconnectivity.SpokeGatewayArgs{
/// 				IpRangeReservations: networkconnectivity.SpokeGatewayIpRangeReservationArray{
/// 					&networkconnectivity.SpokeGatewayIpRangeReservationArgs{
/// 						IpRange: pulumi.String("10.0.0.0/23"),
/// 					},
/// 				},
/// 				Capacity: pulumi.String("CAPACITY_1_GBPS"),
/// 			},
/// 			Group: pulumi.String("gateways"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRouter(ctx, "foobar", &compute.RouterArgs{
/// 			Name: pulumi.String("my-router"),
/// 			Bgp: &compute.RouterBgpArgs{
/// 				Asn:           pulumi.Int(64514),
/// 				AdvertiseMode: pulumi.String("CUSTOM"),
/// 				AdvertisedGroups: pulumi.StringArray{
/// 					pulumi.String("ALL_SUBNETS"),
/// 				},
/// 				AdvertisedIpRanges: compute.RouterBgpAdvertisedIpRangeArray{
/// 					&compute.RouterBgpAdvertisedIpRangeArgs{
/// 						Range: pulumi.String("1.2.3.4"),
/// 					},
/// 					&compute.RouterBgpAdvertisedIpRangeArgs{
/// 						Range: pulumi.String("6.7.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			NccGateway: primary.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_network" "network" {
///   name                    = "net-spoke"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnetwork" {
///   name          = "tf-test-subnet_37118"
///   ip_cidr_range = "10.0.0.0/28"
///   region        = "us-central1"
///   network       = gcp_compute_network.network.self_link
/// }
/// resource "gcp_networkconnectivity_hub" "basic_hub" {
///   name        = "hub"
///   description = "A sample hub"
///   labels = {
///     "label-two" = "value-one"
///   }
///   preset_topology = "HYBRID_INSPECTION"
/// }
/// resource "gcp_networkconnectivity_spoke" "primary" {
///   name        = "my-ncc-gw"
///   location    = "us-central1"
///   description = "A sample spoke of type Gateway"
///   labels = {
///     "label-one" = "value-one"
///   }
///   hub = gcp_networkconnectivity_hub.basic_hub.id
///   gateway = {
///     ip_range_reservations = [{
///       "ipRange" = "10.0.0.0/23"
///     }]
///     capacity = "CAPACITY_1_GBPS"
///   }
///   group = "gateways"
/// }
/// resource "gcp_compute_router" "foobar" {
///   name = "my-router"
///   bgp = {
///     asn               = 64514
///     advertise_mode    = "CUSTOM"
///     advertised_groups = ["ALL_SUBNETS"]
///     advertised_ip_ranges = [{
///       "range" = "1.2.3.4"
///       }, {
///       "range" = "6.7.0.0/16"
///     }]
///   }
///   ncc_gateway = gcp_networkconnectivity_spoke.primary.id
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
/// import com.pulumi.gcp.networkconnectivity.Hub;
/// import com.pulumi.gcp.networkconnectivity.HubArgs;
/// import com.pulumi.gcp.networkconnectivity.Spoke;
/// import com.pulumi.gcp.networkconnectivity.SpokeArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeGatewayArgs;
/// import com.pulumi.gcp.networkconnectivity.inputs.SpokeGatewayIpRangeReservationArgs;
/// import com.pulumi.gcp.compute.Router;
/// import com.pulumi.gcp.compute.RouterArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpArgs;
/// import com.pulumi.gcp.compute.inputs.RouterBgpAdvertisedIpRangeArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("net-spoke")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork = new Subnetwork("subnetwork", SubnetworkArgs.builder()
///             .name("tf-test-subnet_37118")
///             .ipCidrRange("10.0.0.0/28")
///             .region("us-central1")
///             .network(network.selfLink())
///             .build());
///
///         var basicHub = new Hub("basicHub", HubArgs.builder()
///             .name("hub")
///             .description("A sample hub")
///             .labels(Map.of("label-two", "value-one"))
///             .presetTopology("HYBRID_INSPECTION")
///             .build());
///
///         var primary = new Spoke("primary", SpokeArgs.builder()
///             .name("my-ncc-gw")
///             .location("us-central1")
///             .description("A sample spoke of type Gateway")
///             .labels(Map.of("label-one", "value-one"))
///             .hub(basicHub.id())
///             .gateway(SpokeGatewayArgs.builder()
///                 .ipRangeReservations(SpokeGatewayIpRangeReservationArgs.builder()
///                     .ipRange("10.0.0.0/23")
///                     .build())
///                 .capacity("CAPACITY_1_GBPS")
///                 .build())
///             .group("gateways")
///             .build());
///
///         var foobar = new Router("foobar", RouterArgs.builder()
///             .name("my-router")
///             .bgp(RouterBgpArgs.builder()
///                 .asn(64514)
///                 .advertiseMode("CUSTOM")
///                 .advertisedGroups("ALL_SUBNETS")
///                 .advertisedIpRanges(
///                     RouterBgpAdvertisedIpRangeArgs.builder()
///                         .range("1.2.3.4")
///                         .build(),
///                     RouterBgpAdvertisedIpRangeArgs.builder()
///                         .range("6.7.0.0/16")
///                         .build())
///                 .build())
///             .nccGateway(primary.id())
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
///       name: net-spoke
///       autoCreateSubnetworks: false
///   subnetwork:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: tf-test-subnet_37118
///       ipCidrRange: 10.0.0.0/28
///       region: us-central1
///       network: ${network.selfLink}
///   basicHub:
///     type: gcp:networkconnectivity:Hub
///     name: basic_hub
///     properties:
///       name: hub
///       description: A sample hub
///       labels:
///         label-two: value-one
///       presetTopology: HYBRID_INSPECTION
///   primary:
///     type: gcp:networkconnectivity:Spoke
///     properties:
///       name: my-ncc-gw
///       location: us-central1
///       description: A sample spoke of type Gateway
///       labels:
///         label-one: value-one
///       hub: ${basicHub.id}
///       gateway:
///         ipRangeReservations:
///           - ipRange: 10.0.0.0/23
///         capacity: CAPACITY_1_GBPS
///       group: gateways
///   foobar:
///     type: gcp:compute:Router
///     properties:
///       name: my-router
///       bgp:
///         asn: 64514
///         advertiseMode: CUSTOM
///         advertisedGroups:
///           - ALL_SUBNETS
///         advertisedIpRanges:
///           - range: 1.2.3.4
///           - range: 6.7.0.0/16
///       nccGateway: ${primary.id}
/// ```
///
///
/// ## Import
///
/// Router can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/routers/{{name}}`
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Router can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/router:Router default projects/{{project}}/regions/{{region}}/routers/{{name}}
/// $ pulumi import gcp:compute/router:Router default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/router:Router default {{region}}/{{name}}
/// $ pulumi import gcp:compute/router:Router default {{name}}
/// ```
class Router extends pulumi.CustomResource {
  /// BGP information specific to this router.
  /// Structure is documented below.
  late final pulumi.Output<RouterBgp?> bgp;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource.
  late final pulumi.Output<String?> description;
  /// Indicates if a router is dedicated for use with encrypted VLAN
  /// attachments (interconnectAttachments).
  late final pulumi.Output<bool?> encryptedInterconnectRouter;
  /// Keys used for MD5 authentication.
  /// Structure is documented below.
  late final pulumi.Output<RouterMd5AuthenticationKeys?> md5AuthenticationKeys;
  /// Name of the resource. The name must be 1-63 characters long, and
  /// comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?`
  /// which means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// A URI of an NCC Gateway spoke
  late final pulumi.Output<String?> nccGateway;
  /// A reference to the network to which this router belongs.
  late final pulumi.Output<String?> network;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<RouterParams?> params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Region where the router resides.
  late final pulumi.Output<String> region;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Creates a new [Router].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Router]. {@macro pulumi_compute_router_router_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Router(
    String name, {
    RouterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/router:Router',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    bgp = registerOutput<RouterBgp?>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    encryptedInterconnectRouter = registerOutput<bool?>('encryptedInterconnectRouter');
    md5AuthenticationKeys = registerOutput<RouterMd5AuthenticationKeys?>('md5AuthenticationKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterMd5AuthenticationKeys.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nccGateway = registerOutput<String?>('nccGateway');
    network = registerOutput<String?>('network');
    params = registerOutput<RouterParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Gets an existing [Router] resource's state with the given [name] and [id].
  static Router get(
    String name,
    pulumi.Input<String> id, {
    RouterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Router._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Router._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/router:Router',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bgp = registerOutput<RouterBgp?>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    encryptedInterconnectRouter = registerOutput<bool?>('encryptedInterconnectRouter');
    md5AuthenticationKeys = registerOutput<RouterMd5AuthenticationKeys?>('md5AuthenticationKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterMd5AuthenticationKeys.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nccGateway = registerOutput<String?>('nccGateway');
    network = registerOutput<String?>('network');
    params = registerOutput<RouterParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }

  /// Creates a typed reference to an existing [Router] resource.
  Router.reference(String urn)
    : super(
        'gcp:compute/router:Router',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bgp = registerOutput<RouterBgp?>('bgp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterBgp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    encryptedInterconnectRouter = registerOutput<bool?>('encryptedInterconnectRouter');
    md5AuthenticationKeys = registerOutput<RouterMd5AuthenticationKeys?>('md5AuthenticationKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterMd5AuthenticationKeys.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nccGateway = registerOutput<String?>('nccGateway');
    network = registerOutput<String?>('network');
    params = registerOutput<RouterParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouterParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    selfLink = registerOutput<String>('selfLink');
  }
}
