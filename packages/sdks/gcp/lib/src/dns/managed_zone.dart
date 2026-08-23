import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_args.dart';
import 'managed_zone_cloud_logging_config.dart';
import 'managed_zone_dnssec_config.dart';
import 'managed_zone_forwarding_config.dart';
import 'managed_zone_peering_config.dart';
import 'managed_zone_private_visibility_config.dart';
import 'managed_zone_service_directory_config.dart';
import 'managed_zone_state.dart';

/// A zone is a subtree of the DNS namespace under one administrative
/// responsibility. A ManagedZone is a resource that represents a DNS zone
/// hosted by the Cloud DNS service.
///
///
/// To get more information about ManagedZone, see:
///
/// * [API documentation](https://cloud.google.com/dns/api/v1/managedZones)
/// * How-to Guides
/// * [Managing Zones](https://cloud.google.com/dns/zones/)
///
/// ## Example Usage
///
/// ### Dns Managed Zone Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example_zone = new gcp.dns.ManagedZone("example-zone", {
///     name: "example-zone",
///     dnsName: "my-domain.com.",
///     description: "Example DNS zone",
///     labels: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_zone = gcp.dns.ManagedZone("example-zone",
///     name="example-zone",
///     dns_name="my-domain.com.",
///     description="Example DNS zone",
///     labels={
///         "foo": "bar",
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
///     var example_zone = new Gcp.Dns.ManagedZone("example-zone", new()
///     {
///         Name = "example-zone",
///         DnsName = "my-domain.com.",
///         Description = "Example DNS zone",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewManagedZone(ctx, "example-zone", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("example-zone"),
/// 			DnsName:     pulumi.String("my-domain.com."),
/// 			Description: pulumi.String("Example DNS zone"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// resource "gcp_dns_managedzone" "example-zone" {
///   name        = "example-zone"
///   dns_name    = "my-domain.com."
///   description = "Example DNS zone"
///   labels = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
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
///         var example_zone = new ManagedZone("example-zone", ManagedZoneArgs.builder()
///             .name("example-zone")
///             .dnsName("my-domain.com.")
///             .description("Example DNS zone")
///             .labels(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example-zone:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: example-zone
///       dnsName: my-domain.com.
///       description: Example DNS zone
///       labels:
///         foo: bar
/// ```
///
/// ### Dns Managed Zone Private
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_1 = new gcp.compute.Network("network-1", {
///     name: "network-1",
///     autoCreateSubnetworks: false,
/// });
/// const network_2 = new gcp.compute.Network("network-2", {
///     name: "network-2",
///     autoCreateSubnetworks: false,
/// });
/// const private_zone = new gcp.dns.ManagedZone("private-zone", {
///     name: "private-zone",
///     dnsName: "private.example.com.",
///     description: "Example private DNS zone",
///     labels: {
///         foo: "bar",
///     },
///     visibility: "private",
///     privateVisibilityConfig: {
///         networks: [
///             {
///                 networkUrl: network_1.id,
///             },
///             {
///                 networkUrl: network_2.id,
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_1 = gcp.compute.Network("network-1",
///     name="network-1",
///     auto_create_subnetworks=False)
/// network_2 = gcp.compute.Network("network-2",
///     name="network-2",
///     auto_create_subnetworks=False)
/// private_zone = gcp.dns.ManagedZone("private-zone",
///     name="private-zone",
///     dns_name="private.example.com.",
///     description="Example private DNS zone",
///     labels={
///         "foo": "bar",
///     },
///     visibility="private",
///     private_visibility_config={
///         "networks": [
///             {
///                 "network_url": network_1.id,
///             },
///             {
///                 "network_url": network_2.id,
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
///     var network_1 = new Gcp.Compute.Network("network-1", new()
///     {
///         Name = "network-1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_2 = new Gcp.Compute.Network("network-2", new()
///     {
///         Name = "network-2",
///         AutoCreateSubnetworks = false,
///     });
///
///     var private_zone = new Gcp.Dns.ManagedZone("private-zone", new()
///     {
///         Name = "private-zone",
///         DnsName = "private.example.com.",
///         Description = "Example private DNS zone",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             Networks = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = network_1.Id,
///                 },
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = network_2.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network_1, err := compute.NewNetwork(ctx, "network-1", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network_2, err := compute.NewNetwork(ctx, "network-2", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-2"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewManagedZone(ctx, "private-zone", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("private-zone"),
/// 			DnsName:     pulumi.String("private.example.com."),
/// 			Description: pulumi.String("Example private DNS zone"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Visibility: pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				Networks: dns.ManagedZonePrivateVisibilityConfigNetworkArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: network_1.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: network_2.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_dns_managedzone" "private-zone" {
///   name        = "private-zone"
///   dns_name    = "private.example.com."
///   description = "Example private DNS zone"
///   labels = {
///     "foo" = "bar"
///   }
///   visibility = "private"
///   private_visibility_config = {
///     networks = [{
///       "networkUrl" = gcp_compute_network.network-1.id
///       }, {
///       "networkUrl" = gcp_compute_network.network-2.id
///     }]
///   }
/// }
/// resource "gcp_compute_network" "network-1" {
///   name                    = "network-1"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_network" "network-2" {
///   name                    = "network-2"
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
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigNetworkArgs;
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
///         var network_1 = new Network("network-1", NetworkArgs.builder()
///             .name("network-1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_2 = new Network("network-2", NetworkArgs.builder()
///             .name("network-2")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var private_zone = new ManagedZone("private-zone", ManagedZoneArgs.builder()
///             .name("private-zone")
///             .dnsName("private.example.com.")
///             .description("Example private DNS zone")
///             .labels(Map.of("foo", "bar"))
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .networks(
///                     ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                         .networkUrl(network_1.id())
///                         .build(),
///                     ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                         .networkUrl(network_2.id())
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   private-zone:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: private-zone
///       dnsName: private.example.com.
///       description: Example private DNS zone
///       labels:
///         foo: bar
///       visibility: private
///       privateVisibilityConfig:
///         networks:
///           - networkUrl: ${["network-1"].id}
///           - networkUrl: ${["network-2"].id}
///   network-1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///       autoCreateSubnetworks: false
///   network-2:
///     type: gcp:compute:Network
///     properties:
///       name: network-2
///       autoCreateSubnetworks: false
/// ```
///
/// ### Dns Managed Zone Private Forwarding
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_1 = new gcp.compute.Network("network-1", {
///     name: "network-1",
///     autoCreateSubnetworks: false,
/// });
/// const network_2 = new gcp.compute.Network("network-2", {
///     name: "network-2",
///     autoCreateSubnetworks: false,
/// });
/// const private_zone = new gcp.dns.ManagedZone("private-zone", {
///     name: "private-zone",
///     dnsName: "private.example.com.",
///     description: "Example private DNS zone",
///     labels: {
///         foo: "bar",
///     },
///     visibility: "private",
///     privateVisibilityConfig: {
///         networks: [
///             {
///                 networkUrl: network_1.id,
///             },
///             {
///                 networkUrl: network_2.id,
///             },
///         ],
///     },
///     forwardingConfig: {
///         targetNameServers: [
///             {
///                 ipv4Address: "172.16.1.10",
///             },
///             {
///                 ipv4Address: "172.16.1.20",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_1 = gcp.compute.Network("network-1",
///     name="network-1",
///     auto_create_subnetworks=False)
/// network_2 = gcp.compute.Network("network-2",
///     name="network-2",
///     auto_create_subnetworks=False)
/// private_zone = gcp.dns.ManagedZone("private-zone",
///     name="private-zone",
///     dns_name="private.example.com.",
///     description="Example private DNS zone",
///     labels={
///         "foo": "bar",
///     },
///     visibility="private",
///     private_visibility_config={
///         "networks": [
///             {
///                 "network_url": network_1.id,
///             },
///             {
///                 "network_url": network_2.id,
///             },
///         ],
///     },
///     forwarding_config={
///         "target_name_servers": [
///             {
///                 "ipv4_address": "172.16.1.10",
///             },
///             {
///                 "ipv4_address": "172.16.1.20",
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
///     var network_1 = new Gcp.Compute.Network("network-1", new()
///     {
///         Name = "network-1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_2 = new Gcp.Compute.Network("network-2", new()
///     {
///         Name = "network-2",
///         AutoCreateSubnetworks = false,
///     });
///
///     var private_zone = new Gcp.Dns.ManagedZone("private-zone", new()
///     {
///         Name = "private-zone",
///         DnsName = "private.example.com.",
///         Description = "Example private DNS zone",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             Networks = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = network_1.Id,
///                 },
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = network_2.Id,
///                 },
///             },
///         },
///         ForwardingConfig = new Gcp.Dns.Inputs.ManagedZoneForwardingConfigArgs
///         {
///             TargetNameServers = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZoneForwardingConfigTargetNameServerArgs
///                 {
///                     Ipv4Address = "172.16.1.10",
///                 },
///                 new Gcp.Dns.Inputs.ManagedZoneForwardingConfigTargetNameServerArgs
///                 {
///                     Ipv4Address = "172.16.1.20",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network_1, err := compute.NewNetwork(ctx, "network-1", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network_2, err := compute.NewNetwork(ctx, "network-2", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-2"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewManagedZone(ctx, "private-zone", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("private-zone"),
/// 			DnsName:     pulumi.String("private.example.com."),
/// 			Description: pulumi.String("Example private DNS zone"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Visibility: pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				Networks: dns.ManagedZonePrivateVisibilityConfigNetworkArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: network_1.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: network_2.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 			ForwardingConfig: &dns.ManagedZoneForwardingConfigArgs{
/// 				TargetNameServers: dns.ManagedZoneForwardingConfigTargetNameServerArray{
/// 					&dns.ManagedZoneForwardingConfigTargetNameServerArgs{
/// 						Ipv4Address: pulumi.String("172.16.1.10"),
/// 					},
/// 					&dns.ManagedZoneForwardingConfigTargetNameServerArgs{
/// 						Ipv4Address: pulumi.String("172.16.1.20"),
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
/// resource "gcp_dns_managedzone" "private-zone" {
///   name        = "private-zone"
///   dns_name    = "private.example.com."
///   description = "Example private DNS zone"
///   labels = {
///     "foo" = "bar"
///   }
///   visibility = "private"
///   private_visibility_config = {
///     networks = [{
///       "networkUrl" = gcp_compute_network.network-1.id
///       }, {
///       "networkUrl" = gcp_compute_network.network-2.id
///     }]
///   }
///   forwarding_config = {
///     target_name_servers = [{
///       "ipv4Address" = "172.16.1.10"
///       }, {
///       "ipv4Address" = "172.16.1.20"
///     }]
///   }
/// }
/// resource "gcp_compute_network" "network-1" {
///   name                    = "network-1"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_network" "network-2" {
///   name                    = "network-2"
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
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigNetworkArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZoneForwardingConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZoneForwardingConfigTargetNameServerArgs;
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
///         var network_1 = new Network("network-1", NetworkArgs.builder()
///             .name("network-1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_2 = new Network("network-2", NetworkArgs.builder()
///             .name("network-2")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var private_zone = new ManagedZone("private-zone", ManagedZoneArgs.builder()
///             .name("private-zone")
///             .dnsName("private.example.com.")
///             .description("Example private DNS zone")
///             .labels(Map.of("foo", "bar"))
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .networks(
///                     ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                         .networkUrl(network_1.id())
///                         .build(),
///                     ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                         .networkUrl(network_2.id())
///                         .build())
///                 .build())
///             .forwardingConfig(ManagedZoneForwardingConfigArgs.builder()
///                 .targetNameServers(
///                     ManagedZoneForwardingConfigTargetNameServerArgs.builder()
///                         .ipv4Address("172.16.1.10")
///                         .build(),
///                     ManagedZoneForwardingConfigTargetNameServerArgs.builder()
///                         .ipv4Address("172.16.1.20")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   private-zone:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: private-zone
///       dnsName: private.example.com.
///       description: Example private DNS zone
///       labels:
///         foo: bar
///       visibility: private
///       privateVisibilityConfig:
///         networks:
///           - networkUrl: ${["network-1"].id}
///           - networkUrl: ${["network-2"].id}
///       forwardingConfig:
///         targetNameServers:
///           - ipv4Address: 172.16.1.10
///           - ipv4Address: 172.16.1.20
///   network-1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///       autoCreateSubnetworks: false
///   network-2:
///     type: gcp:compute:Network
///     properties:
///       name: network-2
///       autoCreateSubnetworks: false
/// ```
///
/// ### Dns Managed Zone Private Forwarding Ipv6
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network1 = new gcp.compute.Network("network_1", {
///     name: "network-1",
///     autoCreateSubnetworks: false,
/// });
/// const private_zone = new gcp.dns.ManagedZone("private-zone", {
///     name: "private-zone",
///     dnsName: "private.example.com.",
///     description: "Example private DNS zone",
///     visibility: "private",
///     privateVisibilityConfig: {
///         networks: [{
///             networkUrl: network1.id,
///         }],
///     },
///     forwardingConfig: {
///         targetNameServers: [{
///             ipv6Address: "fd20:3e9:7a70:680d:0:8::",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network1 = gcp.compute.Network("network_1",
///     name="network-1",
///     auto_create_subnetworks=False)
/// private_zone = gcp.dns.ManagedZone("private-zone",
///     name="private-zone",
///     dns_name="private.example.com.",
///     description="Example private DNS zone",
///     visibility="private",
///     private_visibility_config={
///         "networks": [{
///             "network_url": network1.id,
///         }],
///     },
///     forwarding_config={
///         "target_name_servers": [{
///             "ipv6_address": "fd20:3e9:7a70:680d:0:8::",
///         }],
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
///     var network1 = new Gcp.Compute.Network("network_1", new()
///     {
///         Name = "network-1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var private_zone = new Gcp.Dns.ManagedZone("private-zone", new()
///     {
///         Name = "private-zone",
///         DnsName = "private.example.com.",
///         Description = "Example private DNS zone",
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             Networks = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = network1.Id,
///                 },
///             },
///         },
///         ForwardingConfig = new Gcp.Dns.Inputs.ManagedZoneForwardingConfigArgs
///         {
///             TargetNameServers = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZoneForwardingConfigTargetNameServerArgs
///                 {
///                     Ipv6Address = "fd20:3e9:7a70:680d:0:8::",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network1, err := compute.NewNetwork(ctx, "network_1", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewManagedZone(ctx, "private-zone", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("private-zone"),
/// 			DnsName:     pulumi.String("private.example.com."),
/// 			Description: pulumi.String("Example private DNS zone"),
/// 			Visibility:  pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				Networks: dns.ManagedZonePrivateVisibilityConfigNetworkArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: network1.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 			ForwardingConfig: &dns.ManagedZoneForwardingConfigArgs{
/// 				TargetNameServers: dns.ManagedZoneForwardingConfigTargetNameServerArray{
/// 					&dns.ManagedZoneForwardingConfigTargetNameServerArgs{
/// 						Ipv6Address: pulumi.String("fd20:3e9:7a70:680d:0:8::"),
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
/// resource "gcp_dns_managedzone" "private-zone" {
///   name        = "private-zone"
///   dns_name    = "private.example.com."
///   description = "Example private DNS zone"
///   visibility  = "private"
///   private_visibility_config = {
///     networks = [{
///       "networkUrl" = gcp_compute_network.network_1.id
///     }]
///   }
///   forwarding_config = {
///     target_name_servers = [{
///       "ipv6Address" = "fd20:3e9:7a70:680d:0:8::"
///     }]
///   }
/// }
/// resource "gcp_compute_network" "network_1" {
///   name                    = "network-1"
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
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigNetworkArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZoneForwardingConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZoneForwardingConfigTargetNameServerArgs;
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
///         var network1 = new Network("network1", NetworkArgs.builder()
///             .name("network-1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var private_zone = new ManagedZone("private-zone", ManagedZoneArgs.builder()
///             .name("private-zone")
///             .dnsName("private.example.com.")
///             .description("Example private DNS zone")
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .networks(ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                     .networkUrl(network1.id())
///                     .build())
///                 .build())
///             .forwardingConfig(ManagedZoneForwardingConfigArgs.builder()
///                 .targetNameServers(ManagedZoneForwardingConfigTargetNameServerArgs.builder()
///                     .ipv6Address("fd20:3e9:7a70:680d:0:8::")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   private-zone:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: private-zone
///       dnsName: private.example.com.
///       description: Example private DNS zone
///       visibility: private
///       privateVisibilityConfig:
///         networks:
///           - networkUrl: ${network1.id}
///       forwardingConfig:
///         targetNameServers:
///           - ipv6Address: 'fd20:3e9:7a70:680d:0:8::'
///   network1:
///     type: gcp:compute:Network
///     name: network_1
///     properties:
///       name: network-1
///       autoCreateSubnetworks: false
/// ```
///
/// ### Dns Managed Zone Private Gke
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_1 = new gcp.compute.Network("network-1", {
///     name: "network-1",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_1 = new gcp.compute.Subnetwork("subnetwork-1", {
///     name: network_1.name,
///     network: network_1.name,
///     ipCidrRange: "10.0.36.0/24",
///     region: "us-central1",
///     privateIpGoogleAccess: true,
///     secondaryIpRanges: [
///         {
///             rangeName: "pod",
///             ipCidrRange: "10.0.0.0/19",
///         },
///         {
///             rangeName: "svc",
///             ipCidrRange: "10.0.32.0/22",
///         },
///     ],
/// });
/// const cluster_1 = new gcp.container.Cluster("cluster-1", {
///     name: "cluster-1",
///     location: "us-central1-c",
///     initialNodeCount: 1,
///     networkingMode: "VPC_NATIVE",
///     defaultSnatStatus: {
///         disabled: true,
///     },
///     network: network_1.name,
///     subnetwork: subnetwork_1.name,
///     privateClusterConfig: {
///         enablePrivateEndpoint: true,
///         enablePrivateNodes: true,
///         masterIpv4CidrBlock: "10.42.0.0/28",
///         masterGlobalAccessConfig: {
///             enabled: true,
///         },
///     },
///     masterAuthorizedNetworksConfig: {},
///     ipAllocationPolicy: {
///         clusterSecondaryRangeName: subnetwork_1.secondaryIpRanges[0].rangeName,
///         servicesSecondaryRangeName: subnetwork_1.secondaryIpRanges[1].rangeName,
///     },
///     deletionProtection: true,
/// });
/// const private_zone_gke = new gcp.dns.ManagedZone("private-zone-gke", {
///     name: "private-zone",
///     dnsName: "private.example.com.",
///     description: "Example private DNS zone",
///     labels: {
///         foo: "bar",
///     },
///     visibility: "private",
///     privateVisibilityConfig: {
///         gkeClusters: [{
///             gkeClusterName: cluster_1.id,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_1 = gcp.compute.Network("network-1",
///     name="network-1",
///     auto_create_subnetworks=False)
/// subnetwork_1 = gcp.compute.Subnetwork("subnetwork-1",
///     name=network_1.name,
///     network=network_1.name,
///     ip_cidr_range="10.0.36.0/24",
///     region="us-central1",
///     private_ip_google_access=True,
///     secondary_ip_ranges=[
///         {
///             "range_name": "pod",
///             "ip_cidr_range": "10.0.0.0/19",
///         },
///         {
///             "range_name": "svc",
///             "ip_cidr_range": "10.0.32.0/22",
///         },
///     ])
/// cluster_1 = gcp.container.Cluster("cluster-1",
///     name="cluster-1",
///     location="us-central1-c",
///     initial_node_count=1,
///     networking_mode="VPC_NATIVE",
///     default_snat_status={
///         "disabled": True,
///     },
///     network=network_1.name,
///     subnetwork=subnetwork_1.name,
///     private_cluster_config={
///         "enable_private_endpoint": True,
///         "enable_private_nodes": True,
///         "master_ipv4_cidr_block": "10.42.0.0/28",
///         "master_global_access_config": {
///             "enabled": True,
///         },
///     },
///     master_authorized_networks_config={},
///     ip_allocation_policy={
///         "cluster_secondary_range_name": subnetwork_1.secondary_ip_ranges[0].range_name,
///         "services_secondary_range_name": subnetwork_1.secondary_ip_ranges[1].range_name,
///     },
///     deletion_protection=True)
/// private_zone_gke = gcp.dns.ManagedZone("private-zone-gke",
///     name="private-zone",
///     dns_name="private.example.com.",
///     description="Example private DNS zone",
///     labels={
///         "foo": "bar",
///     },
///     visibility="private",
///     private_visibility_config={
///         "gke_clusters": [{
///             "gke_cluster_name": cluster_1.id,
///         }],
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
///     var network_1 = new Gcp.Compute.Network("network-1", new()
///     {
///         Name = "network-1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_1 = new Gcp.Compute.Subnetwork("subnetwork-1", new()
///     {
///         Name = network_1.Name,
///         Network = network_1.Name,
///         IpCidrRange = "10.0.36.0/24",
///         Region = "us-central1",
///         PrivateIpGoogleAccess = true,
///         SecondaryIpRanges = new[]
///         {
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "pod",
///                 IpCidrRange = "10.0.0.0/19",
///             },
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "svc",
///                 IpCidrRange = "10.0.32.0/22",
///             },
///         },
///     });
///
///     var cluster_1 = new Gcp.Container.Cluster("cluster-1", new()
///     {
///         Name = "cluster-1",
///         Location = "us-central1-c",
///         InitialNodeCount = 1,
///         NetworkingMode = "VPC_NATIVE",
///         DefaultSnatStatus = new Gcp.Container.Inputs.ClusterDefaultSnatStatusArgs
///         {
///             Disabled = true,
///         },
///         Network = network_1.Name,
///         Subnetwork = subnetwork_1.Name,
///         PrivateClusterConfig = new Gcp.Container.Inputs.ClusterPrivateClusterConfigArgs
///         {
///             EnablePrivateEndpoint = true,
///             EnablePrivateNodes = true,
///             MasterIpv4CidrBlock = "10.42.0.0/28",
///             MasterGlobalAccessConfig = new Gcp.Container.Inputs.ClusterPrivateClusterConfigMasterGlobalAccessConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         MasterAuthorizedNetworksConfig = null,
///         IpAllocationPolicy = new Gcp.Container.Inputs.ClusterIpAllocationPolicyArgs
///         {
///             ClusterSecondaryRangeName = subnetwork_1.SecondaryIpRanges.Apply(secondaryIpRanges => secondaryIpRanges[0].RangeName),
///             ServicesSecondaryRangeName = subnetwork_1.SecondaryIpRanges.Apply(secondaryIpRanges => secondaryIpRanges[1].RangeName),
///         },
///         DeletionProtection = true,
///     });
///
///     var private_zone_gke = new Gcp.Dns.ManagedZone("private-zone-gke", new()
///     {
///         Name = "private-zone",
///         DnsName = "private.example.com.",
///         Description = "Example private DNS zone",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             GkeClusters = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigGkeClusterArgs
///                 {
///                     GkeClusterName = cluster_1.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network_1, err := compute.NewNetwork(ctx, "network-1", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetwork_1, err := compute.NewSubnetwork(ctx, "subnetwork-1", &compute.SubnetworkArgs{
/// 			Name:                  network_1.Name,
/// 			Network:               network_1.Name,
/// 			IpCidrRange:           pulumi.String("10.0.36.0/24"),
/// 			Region:                pulumi.String("us-central1"),
/// 			PrivateIpGoogleAccess: pulumi.Bool(true),
/// 			SecondaryIpRanges: compute.SubnetworkSecondaryIpRangeArray{
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName:   pulumi.String("pod"),
/// 					IpCidrRange: pulumi.String("10.0.0.0/19"),
/// 				},
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName:   pulumi.String("svc"),
/// 					IpCidrRange: pulumi.String("10.0.32.0/22"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_1, err := container.NewCluster(ctx, "cluster-1", &container.ClusterArgs{
/// 			Name:             pulumi.String("cluster-1"),
/// 			Location:         pulumi.String("us-central1-c"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			NetworkingMode:   pulumi.String("VPC_NATIVE"),
/// 			DefaultSnatStatus: &container.ClusterDefaultSnatStatusArgs{
/// 				Disabled: pulumi.Bool(true),
/// 			},
/// 			Network:    network_1.Name,
/// 			Subnetwork: subnetwork_1.Name,
/// 			PrivateClusterConfig: &container.ClusterPrivateClusterConfigArgs{
/// 				EnablePrivateEndpoint: pulumi.Bool(true),
/// 				EnablePrivateNodes:    pulumi.Bool(true),
/// 				MasterIpv4CidrBlock:   pulumi.String("10.42.0.0/28"),
/// 				MasterGlobalAccessConfig: &container.ClusterPrivateClusterConfigMasterGlobalAccessConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			MasterAuthorizedNetworksConfig: &container.ClusterMasterAuthorizedNetworksConfigArgs{},
/// 			IpAllocationPolicy: &container.ClusterIpAllocationPolicyArgs{
/// 				ClusterSecondaryRangeName: subnetwork_1.SecondaryIpRanges.ApplyT(func(secondaryIpRanges []compute.SubnetworkSecondaryIpRange) (*string, error) {
/// 					return secondaryIpRanges[0].RangeName, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				ServicesSecondaryRangeName: subnetwork_1.SecondaryIpRanges.ApplyT(func(secondaryIpRanges []compute.SubnetworkSecondaryIpRange) (*string, error) {
/// 					return secondaryIpRanges[1].RangeName, nil
/// 				}).(pulumi.StringPtrOutput),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewManagedZone(ctx, "private-zone-gke", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("private-zone"),
/// 			DnsName:     pulumi.String("private.example.com."),
/// 			Description: pulumi.String("Example private DNS zone"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Visibility: pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				GkeClusters: dns.ManagedZonePrivateVisibilityConfigGkeClusterArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigGkeClusterArgs{
/// 						GkeClusterName: cluster_1.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_dns_managedzone" "private-zone-gke" {
///   name        = "private-zone"
///   dns_name    = "private.example.com."
///   description = "Example private DNS zone"
///   labels = {
///     "foo" = "bar"
///   }
///   visibility = "private"
///   private_visibility_config = {
///     gke_clusters = [{
///       "gkeClusterName" = gcp_container_cluster.cluster-1.id
///     }]
///   }
/// }
/// resource "gcp_compute_network" "network-1" {
///   name                    = "network-1"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnetwork-1" {
///   name                     = gcp_compute_network.network-1.name
///   network                  = gcp_compute_network.network-1.name
///   ip_cidr_range            = "10.0.36.0/24"
///   region                   = "us-central1"
///   private_ip_google_access = true
///   secondary_ip_ranges {
///     range_name    = "pod"
///     ip_cidr_range = "10.0.0.0/19"
///   }
///   secondary_ip_ranges {
///     range_name    = "svc"
///     ip_cidr_range = "10.0.32.0/22"
///   }
/// }
/// resource "gcp_container_cluster" "cluster-1" {
///   name               = "cluster-1"
///   location           = "us-central1-c"
///   initial_node_count = 1
///   networking_mode    = "VPC_NATIVE"
///   default_snat_status = {
///     disabled = true
///   }
///   network    = gcp_compute_network.network-1.name
///   subnetwork = gcp_compute_subnetwork.subnetwork-1.name
///   private_cluster_config = {
///     enable_private_endpoint = true
///     enable_private_nodes    = true
///     master_ipv4_cidr_block  = "10.42.0.0/28"
///     master_global_access_config = {
///       enabled = true
///     }
///   }
///   master_authorized_networks_config = {}
///   ip_allocation_policy = {
///     cluster_secondary_range_name  = gcp_compute_subnetwork.subnetwork-1.secondary_ip_ranges[0].range_name
///     services_secondary_range_name = gcp_compute_subnetwork.subnetwork-1.secondary_ip_ranges[1].range_name
///   }
///   deletion_protection = true
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
/// import com.pulumi.gcp.compute.inputs.SubnetworkSecondaryIpRangeArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterDefaultSnatStatusArgs;
/// import com.pulumi.gcp.container.inputs.ClusterPrivateClusterConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterPrivateClusterConfigMasterGlobalAccessConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterMasterAuthorizedNetworksConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterIpAllocationPolicyArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigGkeClusterArgs;
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
///         var network_1 = new Network("network-1", NetworkArgs.builder()
///             .name("network-1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_1 = new Subnetwork("subnetwork-1", SubnetworkArgs.builder()
///             .name(network_1.name())
///             .network(network_1.name())
///             .ipCidrRange("10.0.36.0/24")
///             .region("us-central1")
///             .privateIpGoogleAccess(true)
///             .secondaryIpRanges(
///                 SubnetworkSecondaryIpRangeArgs.builder()
///                     .rangeName("pod")
///                     .ipCidrRange("10.0.0.0/19")
///                     .build(),
///                 SubnetworkSecondaryIpRangeArgs.builder()
///                     .rangeName("svc")
///                     .ipCidrRange("10.0.32.0/22")
///                     .build())
///             .build());
///
///         var cluster_1 = new Cluster("cluster-1", ClusterArgs.builder()
///             .name("cluster-1")
///             .location("us-central1-c")
///             .initialNodeCount(1)
///             .networkingMode("VPC_NATIVE")
///             .defaultSnatStatus(ClusterDefaultSnatStatusArgs.builder()
///                 .disabled(true)
///                 .build())
///             .network(network_1.name())
///             .subnetwork(subnetwork_1.name())
///             .privateClusterConfig(ClusterPrivateClusterConfigArgs.builder()
///                 .enablePrivateEndpoint(true)
///                 .enablePrivateNodes(true)
///                 .masterIpv4CidrBlock("10.42.0.0/28")
///                 .masterGlobalAccessConfig(ClusterPrivateClusterConfigMasterGlobalAccessConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .masterAuthorizedNetworksConfig(ClusterMasterAuthorizedNetworksConfigArgs.builder()
///                 .build())
///             .ipAllocationPolicy(ClusterIpAllocationPolicyArgs.builder()
///                 .clusterSecondaryRangeName(subnetwork_1.secondaryIpRanges().applyValue(_secondaryIpRanges -> _secondaryIpRanges.get(0).rangeName()))
///                 .servicesSecondaryRangeName(subnetwork_1.secondaryIpRanges().applyValue(_secondaryIpRanges -> _secondaryIpRanges.get(1).rangeName()))
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var private_zone_gke = new ManagedZone("private-zone-gke", ManagedZoneArgs.builder()
///             .name("private-zone")
///             .dnsName("private.example.com.")
///             .description("Example private DNS zone")
///             .labels(Map.of("foo", "bar"))
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .gkeClusters(ManagedZonePrivateVisibilityConfigGkeClusterArgs.builder()
///                     .gkeClusterName(cluster_1.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   private-zone-gke:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: private-zone
///       dnsName: private.example.com.
///       description: Example private DNS zone
///       labels:
///         foo: bar
///       visibility: private
///       privateVisibilityConfig:
///         gkeClusters:
///           - gkeClusterName: ${["cluster-1"].id}
///   network-1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///       autoCreateSubnetworks: false
///   subnetwork-1:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: ${["network-1"].name}
///       network: ${["network-1"].name}
///       ipCidrRange: 10.0.36.0/24
///       region: us-central1
///       privateIpGoogleAccess: true
///       secondaryIpRanges:
///         - rangeName: pod
///           ipCidrRange: 10.0.0.0/19
///         - rangeName: svc
///           ipCidrRange: 10.0.32.0/22
///   cluster-1:
///     type: gcp:container:Cluster
///     properties:
///       name: cluster-1
///       location: us-central1-c
///       initialNodeCount: 1
///       networkingMode: VPC_NATIVE
///       defaultSnatStatus:
///         disabled: true
///       network: ${["network-1"].name}
///       subnetwork: ${["subnetwork-1"].name}
///       privateClusterConfig:
///         enablePrivateEndpoint: true
///         enablePrivateNodes: true
///         masterIpv4CidrBlock: 10.42.0.0/28
///         masterGlobalAccessConfig:
///           enabled: true
///       masterAuthorizedNetworksConfig: {}
///       ipAllocationPolicy:
///         clusterSecondaryRangeName: ${["subnetwork-1"].secondaryIpRanges[0].rangeName}
///         servicesSecondaryRangeName: ${["subnetwork-1"].secondaryIpRanges[1].rangeName}
///       deletionProtection: true
/// ```
///
/// ### Dns Managed Zone Private Peering
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_source = new gcp.compute.Network("network-source", {
///     name: "network-source",
///     autoCreateSubnetworks: false,
/// });
/// const network_target = new gcp.compute.Network("network-target", {
///     name: "network-target",
///     autoCreateSubnetworks: false,
/// });
/// const peering_zone = new gcp.dns.ManagedZone("peering-zone", {
///     name: "peering-zone",
///     dnsName: "peering.example.com.",
///     description: "Example private DNS peering zone",
///     visibility: "private",
///     privateVisibilityConfig: {
///         networks: [{
///             networkUrl: network_source.id,
///         }],
///     },
///     peeringConfig: {
///         targetNetwork: {
///             networkUrl: network_target.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_source = gcp.compute.Network("network-source",
///     name="network-source",
///     auto_create_subnetworks=False)
/// network_target = gcp.compute.Network("network-target",
///     name="network-target",
///     auto_create_subnetworks=False)
/// peering_zone = gcp.dns.ManagedZone("peering-zone",
///     name="peering-zone",
///     dns_name="peering.example.com.",
///     description="Example private DNS peering zone",
///     visibility="private",
///     private_visibility_config={
///         "networks": [{
///             "network_url": network_source.id,
///         }],
///     },
///     peering_config={
///         "target_network": {
///             "network_url": network_target.id,
///         },
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
///     var network_source = new Gcp.Compute.Network("network-source", new()
///     {
///         Name = "network-source",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_target = new Gcp.Compute.Network("network-target", new()
///     {
///         Name = "network-target",
///         AutoCreateSubnetworks = false,
///     });
///
///     var peering_zone = new Gcp.Dns.ManagedZone("peering-zone", new()
///     {
///         Name = "peering-zone",
///         DnsName = "peering.example.com.",
///         Description = "Example private DNS peering zone",
///         Visibility = "private",
///         PrivateVisibilityConfig = new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigArgs
///         {
///             Networks = new[]
///             {
///                 new Gcp.Dns.Inputs.ManagedZonePrivateVisibilityConfigNetworkArgs
///                 {
///                     NetworkUrl = network_source.Id,
///                 },
///             },
///         },
///         PeeringConfig = new Gcp.Dns.Inputs.ManagedZonePeeringConfigArgs
///         {
///             TargetNetwork = new Gcp.Dns.Inputs.ManagedZonePeeringConfigTargetNetworkArgs
///             {
///                 NetworkUrl = network_target.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network_source, err := compute.NewNetwork(ctx, "network-source", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-source"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network_target, err := compute.NewNetwork(ctx, "network-target", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-target"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewManagedZone(ctx, "peering-zone", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("peering-zone"),
/// 			DnsName:     pulumi.String("peering.example.com."),
/// 			Description: pulumi.String("Example private DNS peering zone"),
/// 			Visibility:  pulumi.String("private"),
/// 			PrivateVisibilityConfig: &dns.ManagedZonePrivateVisibilityConfigArgs{
/// 				Networks: dns.ManagedZonePrivateVisibilityConfigNetworkArray{
/// 					&dns.ManagedZonePrivateVisibilityConfigNetworkArgs{
/// 						NetworkUrl: network_source.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 			PeeringConfig: &dns.ManagedZonePeeringConfigArgs{
/// 				TargetNetwork: &dns.ManagedZonePeeringConfigTargetNetworkArgs{
/// 					NetworkUrl: network_target.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_dns_managedzone" "peering-zone" {
///   name        = "peering-zone"
///   dns_name    = "peering.example.com."
///   description = "Example private DNS peering zone"
///   visibility  = "private"
///   private_visibility_config = {
///     networks = [{
///       "networkUrl" = gcp_compute_network.network-source.id
///     }]
///   }
///   peering_config = {
///     target_network = {
///       network_url = gcp_compute_network.network-target.id
///     }
///   }
/// }
/// resource "gcp_compute_network" "network-source" {
///   name                    = "network-source"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_network" "network-target" {
///   name                    = "network-target"
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
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePrivateVisibilityConfigNetworkArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePeeringConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZonePeeringConfigTargetNetworkArgs;
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
///         var network_source = new Network("network-source", NetworkArgs.builder()
///             .name("network-source")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_target = new Network("network-target", NetworkArgs.builder()
///             .name("network-target")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var peering_zone = new ManagedZone("peering-zone", ManagedZoneArgs.builder()
///             .name("peering-zone")
///             .dnsName("peering.example.com.")
///             .description("Example private DNS peering zone")
///             .visibility("private")
///             .privateVisibilityConfig(ManagedZonePrivateVisibilityConfigArgs.builder()
///                 .networks(ManagedZonePrivateVisibilityConfigNetworkArgs.builder()
///                     .networkUrl(network_source.id())
///                     .build())
///                 .build())
///             .peeringConfig(ManagedZonePeeringConfigArgs.builder()
///                 .targetNetwork(ManagedZonePeeringConfigTargetNetworkArgs.builder()
///                     .networkUrl(network_target.id())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peering-zone:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: peering-zone
///       dnsName: peering.example.com.
///       description: Example private DNS peering zone
///       visibility: private
///       privateVisibilityConfig:
///         networks:
///           - networkUrl: ${["network-source"].id}
///       peeringConfig:
///         targetNetwork:
///           networkUrl: ${["network-target"].id}
///   network-source:
///     type: gcp:compute:Network
///     properties:
///       name: network-source
///       autoCreateSubnetworks: false
///   network-target:
///     type: gcp:compute:Network
///     properties:
///       name: network-target
///       autoCreateSubnetworks: false
/// ```
///
/// ### Dns Managed Zone Service Directory
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.servicedirectory.Namespace("example", {
///     namespaceId: "example",
///     location: "us-central1",
/// });
/// const sd_zone = new gcp.dns.ManagedZone("sd-zone", {
///     name: "peering-zone",
///     dnsName: "services.example.com.",
///     description: "Example private DNS Service Directory zone",
///     visibility: "private",
///     serviceDirectoryConfig: {
///         namespace: {
///             namespaceUrl: example.id,
///         },
///     },
/// });
/// const network = new gcp.compute.Network("network", {
///     name: "network",
///     autoCreateSubnetworks: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.servicedirectory.Namespace("example",
///     namespace_id="example",
///     location="us-central1")
/// sd_zone = gcp.dns.ManagedZone("sd-zone",
///     name="peering-zone",
///     dns_name="services.example.com.",
///     description="Example private DNS Service Directory zone",
///     visibility="private",
///     service_directory_config={
///         "namespace": {
///             "namespace_url": example.id,
///         },
///     })
/// network = gcp.compute.Network("network",
///     name="network",
///     auto_create_subnetworks=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.ServiceDirectory.Namespace("example", new()
///     {
///         NamespaceId = "example",
///         Location = "us-central1",
///     });
///
///     var sd_zone = new Gcp.Dns.ManagedZone("sd-zone", new()
///     {
///         Name = "peering-zone",
///         DnsName = "services.example.com.",
///         Description = "Example private DNS Service Directory zone",
///         Visibility = "private",
///         ServiceDirectoryConfig = new Gcp.Dns.Inputs.ManagedZoneServiceDirectoryConfigArgs
///         {
///             Namespace = new Gcp.Dns.Inputs.ManagedZoneServiceDirectoryConfigNamespaceArgs
///             {
///                 NamespaceUrl = example.Id,
///             },
///         },
///     });
///
///     var network = new Gcp.Compute.Network("network", new()
///     {
///         Name = "network",
///         AutoCreateSubnetworks = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicedirectory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := servicedirectory.NewNamespace(ctx, "example", &servicedirectory.NamespaceArgs{
/// 			NamespaceId: pulumi.String("example"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewManagedZone(ctx, "sd-zone", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("peering-zone"),
/// 			DnsName:     pulumi.String("services.example.com."),
/// 			Description: pulumi.String("Example private DNS Service Directory zone"),
/// 			Visibility:  pulumi.String("private"),
/// 			ServiceDirectoryConfig: &dns.ManagedZoneServiceDirectoryConfigArgs{
/// 				Namespace: &dns.ManagedZoneServiceDirectoryConfigNamespaceArgs{
/// 					NamespaceUrl: example.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetwork(ctx, "network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
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
/// resource "gcp_dns_managedzone" "sd-zone" {
///   name        = "peering-zone"
///   dns_name    = "services.example.com."
///   description = "Example private DNS Service Directory zone"
///   visibility  = "private"
///   service_directory_config = {
///     namespace = {
///       namespace_url = gcp_servicedirectory_namespace.example.id
///     }
///   }
/// }
/// resource "gcp_servicedirectory_namespace" "example" {
///   namespace_id = "example"
///   location     = "us-central1"
/// }
/// resource "gcp_compute_network" "network" {
///   name                    = "network"
///   auto_create_subnetworks = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.servicedirectory.Namespace;
/// import com.pulumi.gcp.servicedirectory.NamespaceArgs;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZoneServiceDirectoryConfigArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZoneServiceDirectoryConfigNamespaceArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
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
///         var example = new Namespace("example", NamespaceArgs.builder()
///             .namespaceId("example")
///             .location("us-central1")
///             .build());
///
///         var sd_zone = new ManagedZone("sd-zone", ManagedZoneArgs.builder()
///             .name("peering-zone")
///             .dnsName("services.example.com.")
///             .description("Example private DNS Service Directory zone")
///             .visibility("private")
///             .serviceDirectoryConfig(ManagedZoneServiceDirectoryConfigArgs.builder()
///                 .namespace(ManagedZoneServiceDirectoryConfigNamespaceArgs.builder()
///                     .namespaceUrl(example.id())
///                     .build())
///                 .build())
///             .build());
///
///         var network = new Network("network", NetworkArgs.builder()
///             .name("network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sd-zone:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: peering-zone
///       dnsName: services.example.com.
///       description: Example private DNS Service Directory zone
///       visibility: private
///       serviceDirectoryConfig:
///         namespace:
///           namespaceUrl: ${example.id}
///   example:
///     type: gcp:servicedirectory:Namespace
///     properties:
///       namespaceId: example
///       location: us-central1
///   network:
///     type: gcp:compute:Network
///     properties:
///       name: network
///       autoCreateSubnetworks: false
/// ```
///
/// ### Dns Managed Zone Cloud Logging
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloud_logging_enabled_zone = new gcp.dns.ManagedZone("cloud-logging-enabled-zone", {
///     name: "cloud-logging-enabled-zone",
///     dnsName: "services.example.com.",
///     description: "Example cloud logging enabled DNS zone",
///     labels: {
///         foo: "bar",
///     },
///     cloudLoggingConfig: {
///         enableLogging: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloud_logging_enabled_zone = gcp.dns.ManagedZone("cloud-logging-enabled-zone",
///     name="cloud-logging-enabled-zone",
///     dns_name="services.example.com.",
///     description="Example cloud logging enabled DNS zone",
///     labels={
///         "foo": "bar",
///     },
///     cloud_logging_config={
///         "enable_logging": True,
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
///     var cloud_logging_enabled_zone = new Gcp.Dns.ManagedZone("cloud-logging-enabled-zone", new()
///     {
///         Name = "cloud-logging-enabled-zone",
///         DnsName = "services.example.com.",
///         Description = "Example cloud logging enabled DNS zone",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         CloudLoggingConfig = new Gcp.Dns.Inputs.ManagedZoneCloudLoggingConfigArgs
///         {
///             EnableLogging = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewManagedZone(ctx, "cloud-logging-enabled-zone", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("cloud-logging-enabled-zone"),
/// 			DnsName:     pulumi.String("services.example.com."),
/// 			Description: pulumi.String("Example cloud logging enabled DNS zone"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			CloudLoggingConfig: &dns.ManagedZoneCloudLoggingConfigArgs{
/// 				EnableLogging: pulumi.Bool(true),
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
/// resource "gcp_dns_managedzone" "cloud-logging-enabled-zone" {
///   name        = "cloud-logging-enabled-zone"
///   dns_name    = "services.example.com."
///   description = "Example cloud logging enabled DNS zone"
///   labels = {
///     "foo" = "bar"
///   }
///   cloud_logging_config = {
///     enable_logging = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.inputs.ManagedZoneCloudLoggingConfigArgs;
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
///         var cloud_logging_enabled_zone = new ManagedZone("cloud-logging-enabled-zone", ManagedZoneArgs.builder()
///             .name("cloud-logging-enabled-zone")
///             .dnsName("services.example.com.")
///             .description("Example cloud logging enabled DNS zone")
///             .labels(Map.of("foo", "bar"))
///             .cloudLoggingConfig(ManagedZoneCloudLoggingConfigArgs.builder()
///                 .enableLogging(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cloud-logging-enabled-zone:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: cloud-logging-enabled-zone
///       dnsName: services.example.com.
///       description: Example cloud logging enabled DNS zone
///       labels:
///         foo: bar
///       cloudLoggingConfig:
///         enableLogging: true
/// ```
///
/// ### Dns Managed Zone Iam Condition
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.dns.ManagedZone("default", {
///     name: "example-zone",
///     dnsName: "example.com.",
///     description: "Example zone for IAM conditions",
/// });
/// const conditionTest = new gcp.dns.DnsManagedZoneIamMember("condition_test", {
///     project: _default.project,
///     managedZone: _default.name,
///     role: "roles/dns.admin",
///     member: "user:admin@hashicorptest.com",
///     condition: {
///         title: "Exact Record Match",
///         description: "Allow modifying only api.example.com. A records",
///         expression: "(resource.type == 'dns.googleapis.com/ResourceRecordSet' && resource.name.endsWith('/rrsets/api.example.com./A')) || (resource.type != 'dns.googleapis.com/ResourceRecordSet')",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.dns.ManagedZone("default",
///     name="example-zone",
///     dns_name="example.com.",
///     description="Example zone for IAM conditions")
/// condition_test = gcp.dns.DnsManagedZoneIamMember("condition_test",
///     project=default.project,
///     managed_zone=default.name,
///     role="roles/dns.admin",
///     member="user:admin@hashicorptest.com",
///     condition={
///         "title": "Exact Record Match",
///         "description": "Allow modifying only api.example.com. A records",
///         "expression": "(resource.type == 'dns.googleapis.com/ResourceRecordSet' && resource.name.endsWith('/rrsets/api.example.com./A')) || (resource.type != 'dns.googleapis.com/ResourceRecordSet')",
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
///     var @default = new Gcp.Dns.ManagedZone("default", new()
///     {
///         Name = "example-zone",
///         DnsName = "example.com.",
///         Description = "Example zone for IAM conditions",
///     });
///
///     var conditionTest = new Gcp.Dns.DnsManagedZoneIamMember("condition_test", new()
///     {
///         Project = @default.Project,
///         ManagedZone = @default.Name,
///         Role = "roles/dns.admin",
///         Member = "user:admin@hashicorptest.com",
///         Condition = new Gcp.Dns.Inputs.DnsManagedZoneIamMemberConditionArgs
///         {
///             Title = "Exact Record Match",
///             Description = "Allow modifying only api.example.com. A records",
///             Expression = "(resource.type == 'dns.googleapis.com/ResourceRecordSet' && resource.name.endsWith('/rrsets/api.example.com./A')) || (resource.type != 'dns.googleapis.com/ResourceRecordSet')",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := dns.NewManagedZone(ctx, "default", &dns.ManagedZoneArgs{
/// 			Name:        pulumi.String("example-zone"),
/// 			DnsName:     pulumi.String("example.com."),
/// 			Description: pulumi.String("Example zone for IAM conditions"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewDnsManagedZoneIamMember(ctx, "condition_test", &dns.DnsManagedZoneIamMemberArgs{
/// 			Project:     _default.Project,
/// 			ManagedZone: _default.Name,
/// 			Role:        pulumi.String("roles/dns.admin"),
/// 			Member:      pulumi.String("user:admin@hashicorptest.com"),
/// 			Condition: &dns.DnsManagedZoneIamMemberConditionArgs{
/// 				Title:       pulumi.String("Exact Record Match"),
/// 				Description: pulumi.String("Allow modifying only api.example.com. A records"),
/// 				Expression:  pulumi.String("(resource.type == 'dns.googleapis.com/ResourceRecordSet' && resource.name.endsWith('/rrsets/api.example.com./A')) || (resource.type != 'dns.googleapis.com/ResourceRecordSet')"),
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
/// resource "gcp_dns_managedzone" "default" {
///   name        = "example-zone"
///   dns_name    = "example.com."
///   description = "Example zone for IAM conditions"
/// }
/// resource "gcp_dns_dnsmanagedzoneiammember" "condition_test" {
///   project      = gcp_dns_managedzone.default.project
///   managed_zone = gcp_dns_managedzone.default.name
///   role         = "roles/dns.admin"
///   member       = "user:admin@hashicorptest.com"
///   condition = {
///     title       = "Exact Record Match"
///     description = "Allow modifying only api.example.com. A records"
///     expression  = "(resource.type == 'dns.googleapis.com/ResourceRecordSet' && resource.name.endsWith('/rrsets/api.example.com./A')) || (resource.type != 'dns.googleapis.com/ResourceRecordSet')"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dns.ManagedZone;
/// import com.pulumi.gcp.dns.ManagedZoneArgs;
/// import com.pulumi.gcp.dns.DnsManagedZoneIamMember;
/// import com.pulumi.gcp.dns.DnsManagedZoneIamMemberArgs;
/// import com.pulumi.gcp.dns.inputs.DnsManagedZoneIamMemberConditionArgs;
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
///         var default_ = new ManagedZone("default", ManagedZoneArgs.builder()
///             .name("example-zone")
///             .dnsName("example.com.")
///             .description("Example zone for IAM conditions")
///             .build());
///
///         var conditionTest = new DnsManagedZoneIamMember("conditionTest", DnsManagedZoneIamMemberArgs.builder()
///             .project(default_.project())
///             .managedZone(default_.name())
///             .role("roles/dns.admin")
///             .member("user:admin@hashicorptest.com")
///             .condition(DnsManagedZoneIamMemberConditionArgs.builder()
///                 .title("Exact Record Match")
///                 .description("Allow modifying only api.example.com. A records")
///                 .expression("(resource.type == 'dns.googleapis.com/ResourceRecordSet' && resource.name.endsWith('/rrsets/api.example.com./A')) || (resource.type != 'dns.googleapis.com/ResourceRecordSet')")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:dns:ManagedZone
///     properties:
///       name: example-zone
///       dnsName: example.com.
///       description: Example zone for IAM conditions
///   conditionTest:
///     type: gcp:dns:DnsManagedZoneIamMember
///     name: condition_test
///     properties:
///       project: ${default.project}
///       managedZone: ${default.name}
///       role: roles/dns.admin
///       member: user:admin@hashicorptest.com
///       condition:
///         title: Exact Record Match
///         description: Allow modifying only api.example.com. A records
///         expression: (resource.type == 'dns.googleapis.com/ResourceRecordSet' && resource.name.endsWith('/rrsets/api.example.com./A')) || (resource.type != 'dns.googleapis.com/ResourceRecordSet')
/// ```
///
///
/// ## Import
///
/// ManagedZone can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/managedZones/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, ManagedZone can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/managedZone:ManagedZone default projects/{{project}}/managedZones/{{name}}
/// $ pulumi import gcp:dns/managedZone:ManagedZone default {{project}}/{{name}}
/// $ pulumi import gcp:dns/managedZone:ManagedZone default {{name}}
/// ```
class ManagedZone extends pulumi.CustomResource {
  /// Cloud logging configuration
  /// Structure is documented below.
  late final pulumi.Output<ManagedZoneCloudLoggingConfig> cloudLoggingConfig;
  /// The time that this resource was created on the server.
  /// This is in RFC3339 text format.
  late final pulumi.Output<String> creationTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A textual description field. Defaults to 'Managed by Pulumi'.
  late final pulumi.Output<String> description;
  /// The DNS name of this managed zone, for instance "example.com.".
  late final pulumi.Output<String> dnsName;
  /// DNSSEC configuration
  /// Structure is documented below.
  late final pulumi.Output<ManagedZoneDnssecConfig> dnssecConfig;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Set this true to delete all records in the zone.
  late final pulumi.Output<bool?> forceDestroy;
  /// The presence for this field indicates that outbound forwarding is enabled
  /// for this zone. The value of this field contains the set of destinations
  /// to forward to.
  /// Structure is documented below.
  late final pulumi.Output<ManagedZoneForwardingConfig?> forwardingConfig;
  /// A set of key/value label pairs to assign to this ManagedZone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Unique identifier for the resource; defined by the server.
  late final pulumi.Output<String> managedZoneId;
  /// User assigned name for this resource.
  /// Must be unique within the project.
  late final pulumi.Output<String> name;
  /// Delegate your managedZone to these virtual name servers;
  /// defined by the server
  late final pulumi.Output<List<String>> nameServers;
  /// The presence of this field indicates that DNS Peering is enabled for this
  /// zone. The value of this field contains the network to peer with.
  /// Structure is documented below.
  late final pulumi.Output<ManagedZonePeeringConfig?> peeringConfig;
  /// For privately visible zones, the set of Virtual Private Cloud
  /// resources that the zone is visible from. At least one of `gkeClusters` or `networks` must be specified.
  /// Structure is documented below.
  late final pulumi.Output<ManagedZonePrivateVisibilityConfig?> privateVisibilityConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// (Optional, Beta)
  /// Specifies if this is a managed reverse lookup zone. If true, Cloud DNS will resolve reverse
  /// lookup queries using automatically configured records for VPC resources. This only applies
  /// to networks listed under `privateVisibilityConfig`.
  late final pulumi.Output<bool?> reverseLookup;
  /// (Optional, Beta)
  /// The presence of this field indicates that this zone is backed by Service Directory. The value of this field contains information related to the namespace associated with the zone.
  /// Structure is documented below.
  late final pulumi.Output<ManagedZoneServiceDirectoryConfig?> serviceDirectoryConfig;
  /// The zone's visibility: public zones are exposed to the Internet,
  /// while private zones are visible only to Virtual Private Cloud resources.
  /// Default value is `public`.
  /// Possible values are: `private`, `public`.
  late final pulumi.Output<String?> visibility;

  /// Creates a new [ManagedZone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedZone]. {@macro pulumi_dns_managed_zone_managed_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedZone(
    String name, {
    ManagedZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/managedZone:ManagedZone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudLoggingConfig = registerOutput<ManagedZoneCloudLoggingConfig>('cloudLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZoneCloudLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTime = registerOutput<String>('creationTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    dnsName = registerOutput<String>('dnsName');
    dnssecConfig = registerOutput<ManagedZoneDnssecConfig>('dnssecConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZoneDnssecConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    forwardingConfig = registerOutput<ManagedZoneForwardingConfig?>('forwardingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZoneForwardingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    managedZoneId = registerOutput<String>('managedZoneId');
    this.name = registerOutput<String>('name');
    nameServers = registerOutput<List<String>>('nameServers');
    peeringConfig = registerOutput<ManagedZonePeeringConfig?>('peeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZonePeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateVisibilityConfig = registerOutput<ManagedZonePrivateVisibilityConfig?>('privateVisibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZonePrivateVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reverseLookup = registerOutput<bool?>('reverseLookup');
    serviceDirectoryConfig = registerOutput<ManagedZoneServiceDirectoryConfig?>('serviceDirectoryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZoneServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibility = registerOutput<String?>('visibility');
  }

  /// Gets an existing [ManagedZone] resource's state with the given [name] and [id].
  static ManagedZone get(
    String name,
    pulumi.Input<String> id, {
    ManagedZoneState? state,
  }) {
    return ManagedZone._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedZone._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/managedZone:ManagedZone',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cloudLoggingConfig = registerOutput<ManagedZoneCloudLoggingConfig>('cloudLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZoneCloudLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    creationTime = registerOutput<String>('creationTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String>('description');
    dnsName = registerOutput<String>('dnsName');
    dnssecConfig = registerOutput<ManagedZoneDnssecConfig>('dnssecConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZoneDnssecConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    forwardingConfig = registerOutput<ManagedZoneForwardingConfig?>('forwardingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZoneForwardingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    managedZoneId = registerOutput<String>('managedZoneId');
    this.name = registerOutput<String>('name');
    nameServers = registerOutput<List<String>>('nameServers');
    peeringConfig = registerOutput<ManagedZonePeeringConfig?>('peeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZonePeeringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateVisibilityConfig = registerOutput<ManagedZonePrivateVisibilityConfig?>('privateVisibilityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZonePrivateVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    reverseLookup = registerOutput<bool?>('reverseLookup');
    serviceDirectoryConfig = registerOutput<ManagedZoneServiceDirectoryConfig?>('serviceDirectoryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedZoneServiceDirectoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    visibility = registerOutput<String?>('visibility');
  }
}
