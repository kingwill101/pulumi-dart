import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';
import 'route_as_path.dart';
import 'route_params.dart';
import 'route_state.dart';
import 'route_warning.dart';

/// Represents a Route resource.
///
/// A route is a rule that specifies how certain packets should be handled by
/// the virtual network. Routes are associated with virtual machines by tag,
/// and the set of routes for a particular virtual machine is called its
/// routing table. For each packet leaving a virtual machine, the system
/// searches that virtual machine's routing table for a single best matching
/// route.
///
/// Routes match packets by destination IP address, preferring smaller or more
/// specific ranges over larger ones. If there is a tie, the system selects
/// the route with the smallest priority value. If there is still a tie, it
/// uses the layer three and four packet headers to select just one of the
/// remaining matching routes. The packet is then forwarded as specified by
/// the nextHop field of the winning route -- either to another virtual
/// machine destination, a virtual machine gateway or a Compute
/// Engine-operated gateway. Packets that do not match any route in the
/// sending virtual machine's routing table will be dropped.
///
/// A Route resource must have exactly one specification of either
/// nextHopGateway, nextHopInstance, nextHopIp, nextHopVpnTunnel, or
/// nextHopIlb.
///
///
/// To get more information about Route, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routes)
/// * How-to Guides
/// * [Using Routes](https://cloud.google.com/vpc/docs/using-routes)
///
/// ## Example Usage
///
/// ### Route Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {name: "compute-network"});
/// const _default = new gcp.compute.Route("default", {
///     name: "network-route",
///     destRange: "15.0.0.0/24",
///     network: defaultNetwork.name,
///     nextHopIp: "10.132.1.5",
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default", name="compute-network")
/// default = gcp.compute.Route("default",
///     name="network-route",
///     dest_range="15.0.0.0/24",
///     network=default_network.name,
///     next_hop_ip="10.132.1.5",
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultNetwork = new Gcp.Compute.Network("default", new()
///     {
///         Name = "compute-network",
///     });
///
///     var @default = new Gcp.Compute.Route("default", new()
///     {
///         Name = "network-route",
///         DestRange = "15.0.0.0/24",
///         Network = defaultNetwork.Name,
///         NextHopIp = "10.132.1.5",
///         Priority = 100,
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
/// 		defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name: pulumi.String("compute-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRoute(ctx, "default", &compute.RouteArgs{
/// 			Name:      pulumi.String("network-route"),
/// 			DestRange: pulumi.String("15.0.0.0/24"),
/// 			Network:   defaultNetwork.Name,
/// 			NextHopIp: pulumi.String("10.132.1.5"),
/// 			Priority:  pulumi.Int(100),
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
/// resource "gcp_compute_route" "default" {
///   name        = "network-route"
///   dest_range  = "15.0.0.0/24"
///   network     = gcp_compute_network.default.name
///   next_hop_ip = "10.132.1.5"
///   priority    = 100
/// }
/// resource "gcp_compute_network" "default" {
///   name = "compute-network"
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
/// import com.pulumi.gcp.compute.Route;
/// import com.pulumi.gcp.compute.RouteArgs;
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
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .name("compute-network")
///             .build());
///
///         var default_ = new Route("default", RouteArgs.builder()
///             .name("network-route")
///             .destRange("15.0.0.0/24")
///             .network(defaultNetwork.name())
///             .nextHopIp("10.132.1.5")
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Route
///     properties:
///       name: network-route
///       destRange: 15.0.0.0/24
///       network: ${defaultNetwork.name}
///       nextHopIp: 10.132.1.5
///       priority: 100
///   defaultNetwork:
///     type: gcp:compute:Network
///     name: default
///     properties:
///       name: compute-network
/// ```
///
/// ### Route Ilb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "compute-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "compute-subnet",
///     ipCidrRange: "10.0.1.0/24",
///     region: "us-central1",
///     network: _default.id,
/// });
/// const hc = new gcp.compute.HealthCheck("hc", {
///     name: "proxy-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const backend = new gcp.compute.RegionBackendService("backend", {
///     name: "compute-backend",
///     region: "us-central1",
///     healthChecks: hc.id,
/// });
/// const defaultForwardingRule = new gcp.compute.ForwardingRule("default", {
///     name: "compute-forwarding-rule",
///     region: "us-central1",
///     loadBalancingScheme: "INTERNAL",
///     backendService: backend.id,
///     allPorts: true,
///     network: _default.name,
///     subnetwork: defaultSubnetwork.name,
/// });
/// const route_ilb = new gcp.compute.Route("route-ilb", {
///     name: "route-ilb",
///     destRange: "0.0.0.0/0",
///     network: _default.name,
///     nextHopIlb: defaultForwardingRule.id,
///     priority: 2000,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="compute-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="compute-subnet",
///     ip_cidr_range="10.0.1.0/24",
///     region="us-central1",
///     network=default.id)
/// hc = gcp.compute.HealthCheck("hc",
///     name="proxy-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// backend = gcp.compute.RegionBackendService("backend",
///     name="compute-backend",
///     region="us-central1",
///     health_checks=hc.id)
/// default_forwarding_rule = gcp.compute.ForwardingRule("default",
///     name="compute-forwarding-rule",
///     region="us-central1",
///     load_balancing_scheme="INTERNAL",
///     backend_service=backend.id,
///     all_ports=True,
///     network=default.name,
///     subnetwork=default_subnetwork.name)
/// route_ilb = gcp.compute.Route("route-ilb",
///     name="route-ilb",
///     dest_range="0.0.0.0/0",
///     network=default.name,
///     next_hop_ilb=default_forwarding_rule.id,
///     priority=2000)
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
///         Name = "compute-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "compute-subnet",
///         IpCidrRange = "10.0.1.0/24",
///         Region = "us-central1",
///         Network = @default.Id,
///     });
///
///     var hc = new Gcp.Compute.HealthCheck("hc", new()
///     {
///         Name = "proxy-health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var backend = new Gcp.Compute.RegionBackendService("backend", new()
///     {
///         Name = "compute-backend",
///         Region = "us-central1",
///         HealthChecks = hc.Id,
///     });
///
///     var defaultForwardingRule = new Gcp.Compute.ForwardingRule("default", new()
///     {
///         Name = "compute-forwarding-rule",
///         Region = "us-central1",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = backend.Id,
///         AllPorts = true,
///         Network = @default.Name,
///         Subnetwork = defaultSubnetwork.Name,
///     });
///
///     var route_ilb = new Gcp.Compute.Route("route-ilb", new()
///     {
///         Name = "route-ilb",
///         DestRange = "0.0.0.0/0",
///         Network = @default.Name,
///         NextHopIlb = defaultForwardingRule.Id,
///         Priority = 2000,
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
/// 			Name:                  pulumi.String("compute-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("compute-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.1.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		hc, err := compute.NewHealthCheck(ctx, "hc", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("proxy-health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backend, err := compute.NewRegionBackendService(ctx, "backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("compute-backend"),
/// 			Region:       pulumi.String("us-central1"),
/// 			HealthChecks: hc.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultForwardingRule, err := compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("compute-forwarding-rule"),
/// 			Region:              pulumi.String("us-central1"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      backend.ID().ToIDOutput().ToStringOutput(),
/// 			AllPorts:            pulumi.Bool(true),
/// 			Network:             _default.Name,
/// 			Subnetwork:          defaultSubnetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRoute(ctx, "route-ilb", &compute.RouteArgs{
/// 			Name:       pulumi.String("route-ilb"),
/// 			DestRange:  pulumi.String("0.0.0.0/0"),
/// 			Network:    _default.Name,
/// 			NextHopIlb: defaultForwardingRule.ID().ToIDOutput().ToStringOutput(),
/// 			Priority:   pulumi.Int(2000),
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
/// resource "gcp_compute_network" "default" {
///   name                    = "compute-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "compute-subnet"
///   ip_cidr_range = "10.0.1.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.default.id
/// }
/// resource "gcp_compute_healthcheck" "hc" {
///   name               = "proxy-health-check"
///   check_interval_sec = 1
///   timeout_sec        = 1
///   tcp_health_check = {
///     port = "80"
///   }
/// }
/// resource "gcp_compute_regionbackendservice" "backend" {
///   name          = "compute-backend"
///   region        = "us-central1"
///   health_checks = gcp_compute_healthcheck.hc.id
/// }
/// resource "gcp_compute_forwardingrule" "default" {
///   name                  = "compute-forwarding-rule"
///   region                = "us-central1"
///   load_balancing_scheme = "INTERNAL"
///   backend_service       = gcp_compute_regionbackendservice.backend.id
///   all_ports             = true
///   network               = gcp_compute_network.default.name
///   subnetwork            = gcp_compute_subnetwork.default.name
/// }
/// resource "gcp_compute_route" "route-ilb" {
///   name         = "route-ilb"
///   dest_range   = "0.0.0.0/0"
///   network      = gcp_compute_network.default.name
///   next_hop_ilb = gcp_compute_forwardingrule.default.id
///   priority     = 2000
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
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.Route;
/// import com.pulumi.gcp.compute.RouteArgs;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("compute-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("compute-subnet")
///             .ipCidrRange("10.0.1.0/24")
///             .region("us-central1")
///             .network(default_.id())
///             .build());
///
///         var hc = new HealthCheck("hc", HealthCheckArgs.builder()
///             .name("proxy-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var backend = new RegionBackendService("backend", RegionBackendServiceArgs.builder()
///             .name("compute-backend")
///             .region("us-central1")
///             .healthChecks(hc.id())
///             .build());
///
///         var defaultForwardingRule = new ForwardingRule("defaultForwardingRule", ForwardingRuleArgs.builder()
///             .name("compute-forwarding-rule")
///             .region("us-central1")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(backend.id())
///             .allPorts(true)
///             .network(default_.name())
///             .subnetwork(defaultSubnetwork.name())
///             .build());
///
///         var route_ilb = new Route("route-ilb", RouteArgs.builder()
///             .name("route-ilb")
///             .destRange("0.0.0.0/0")
///             .network(default_.name())
///             .nextHopIlb(defaultForwardingRule.id())
///             .priority(2000)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: compute-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: compute-subnet
///       ipCidrRange: 10.0.1.0/24
///       region: us-central1
///       network: ${default.id}
///   hc:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: proxy-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   backend:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: compute-backend
///       region: us-central1
///       healthChecks: ${hc.id}
///   defaultForwardingRule:
///     type: gcp:compute:ForwardingRule
///     name: default
///     properties:
///       name: compute-forwarding-rule
///       region: us-central1
///       loadBalancingScheme: INTERNAL
///       backendService: ${backend.id}
///       allPorts: true
///       network: ${default.name}
///       subnetwork: ${defaultSubnetwork.name}
///   route-ilb:
///     type: gcp:compute:Route
///     properties:
///       name: route-ilb
///       destRange: 0.0.0.0/0
///       network: ${default.name}
///       nextHopIlb: ${defaultForwardingRule.id}
///       priority: 2000
/// ```
///
/// ### Route Ilb Vip
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const producer = new gcp.compute.Network("producer", {
///     name: "producer-vpc",
///     autoCreateSubnetworks: false,
/// });
/// const producerSubnetwork = new gcp.compute.Subnetwork("producer", {
///     name: "producer-subnet",
///     ipCidrRange: "10.0.1.0/24",
///     region: "us-central1",
///     network: producer.id,
/// });
/// const consumer = new gcp.compute.Network("consumer", {
///     name: "consumer-vpc",
///     autoCreateSubnetworks: false,
/// });
/// const consumerSubnetwork = new gcp.compute.Subnetwork("consumer", {
///     name: "consumer-subnet",
///     ipCidrRange: "10.0.2.0/24",
///     region: "us-central1",
///     network: consumer.id,
/// });
/// const peering1 = new gcp.compute.NetworkPeering("peering1", {
///     name: "peering-producer-to-consumer",
///     network: consumer.id,
///     peerNetwork: producer.id,
/// });
/// const peering2 = new gcp.compute.NetworkPeering("peering2", {
///     name: "peering-consumer-to-producer",
///     network: producer.id,
///     peerNetwork: consumer.id,
/// });
/// const hc = new gcp.compute.HealthCheck("hc", {
///     name: "proxy-health-check",
///     checkIntervalSec: 1,
///     timeoutSec: 1,
///     tcpHealthCheck: {
///         port: 80,
///     },
/// });
/// const backend = new gcp.compute.RegionBackendService("backend", {
///     name: "compute-backend",
///     region: "us-central1",
///     healthChecks: hc.id,
/// });
/// const _default = new gcp.compute.ForwardingRule("default", {
///     name: "compute-forwarding-rule",
///     region: "us-central1",
///     loadBalancingScheme: "INTERNAL",
///     backendService: backend.id,
///     allPorts: true,
///     network: producer.name,
///     subnetwork: producerSubnetwork.name,
/// });
/// const route_ilb = new gcp.compute.Route("route-ilb", {
///     name: "route-ilb",
///     destRange: "0.0.0.0/0",
///     network: consumer.name,
///     nextHopIlb: _default.ipAddress,
///     priority: 2000,
///     tags: [
///         "tag1",
///         "tag2",
///     ],
/// }, {
///     dependsOn: [
///         peering1,
///         peering2,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// producer = gcp.compute.Network("producer",
///     name="producer-vpc",
///     auto_create_subnetworks=False)
/// producer_subnetwork = gcp.compute.Subnetwork("producer",
///     name="producer-subnet",
///     ip_cidr_range="10.0.1.0/24",
///     region="us-central1",
///     network=producer.id)
/// consumer = gcp.compute.Network("consumer",
///     name="consumer-vpc",
///     auto_create_subnetworks=False)
/// consumer_subnetwork = gcp.compute.Subnetwork("consumer",
///     name="consumer-subnet",
///     ip_cidr_range="10.0.2.0/24",
///     region="us-central1",
///     network=consumer.id)
/// peering1 = gcp.compute.NetworkPeering("peering1",
///     name="peering-producer-to-consumer",
///     network=consumer.id,
///     peer_network=producer.id)
/// peering2 = gcp.compute.NetworkPeering("peering2",
///     name="peering-consumer-to-producer",
///     network=producer.id,
///     peer_network=consumer.id)
/// hc = gcp.compute.HealthCheck("hc",
///     name="proxy-health-check",
///     check_interval_sec=1,
///     timeout_sec=1,
///     tcp_health_check={
///         "port": 80,
///     })
/// backend = gcp.compute.RegionBackendService("backend",
///     name="compute-backend",
///     region="us-central1",
///     health_checks=hc.id)
/// default = gcp.compute.ForwardingRule("default",
///     name="compute-forwarding-rule",
///     region="us-central1",
///     load_balancing_scheme="INTERNAL",
///     backend_service=backend.id,
///     all_ports=True,
///     network=producer.name,
///     subnetwork=producer_subnetwork.name)
/// route_ilb = gcp.compute.Route("route-ilb",
///     name="route-ilb",
///     dest_range="0.0.0.0/0",
///     network=consumer.name,
///     next_hop_ilb=default.ip_address,
///     priority=2000,
///     tags=[
///         "tag1",
///         "tag2",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[
///             peering1,
///             peering2,
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
///     var producer = new Gcp.Compute.Network("producer", new()
///     {
///         Name = "producer-vpc",
///         AutoCreateSubnetworks = false,
///     });
///
///     var producerSubnetwork = new Gcp.Compute.Subnetwork("producer", new()
///     {
///         Name = "producer-subnet",
///         IpCidrRange = "10.0.1.0/24",
///         Region = "us-central1",
///         Network = producer.Id,
///     });
///
///     var consumer = new Gcp.Compute.Network("consumer", new()
///     {
///         Name = "consumer-vpc",
///         AutoCreateSubnetworks = false,
///     });
///
///     var consumerSubnetwork = new Gcp.Compute.Subnetwork("consumer", new()
///     {
///         Name = "consumer-subnet",
///         IpCidrRange = "10.0.2.0/24",
///         Region = "us-central1",
///         Network = consumer.Id,
///     });
///
///     var peering1 = new Gcp.Compute.NetworkPeering("peering1", new()
///     {
///         Name = "peering-producer-to-consumer",
///         Network = consumer.Id,
///         PeerNetwork = producer.Id,
///     });
///
///     var peering2 = new Gcp.Compute.NetworkPeering("peering2", new()
///     {
///         Name = "peering-consumer-to-producer",
///         Network = producer.Id,
///         PeerNetwork = consumer.Id,
///     });
///
///     var hc = new Gcp.Compute.HealthCheck("hc", new()
///     {
///         Name = "proxy-health-check",
///         CheckIntervalSec = 1,
///         TimeoutSec = 1,
///         TcpHealthCheck = new Gcp.Compute.Inputs.HealthCheckTcpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var backend = new Gcp.Compute.RegionBackendService("backend", new()
///     {
///         Name = "compute-backend",
///         Region = "us-central1",
///         HealthChecks = hc.Id,
///     });
///
///     var @default = new Gcp.Compute.ForwardingRule("default", new()
///     {
///         Name = "compute-forwarding-rule",
///         Region = "us-central1",
///         LoadBalancingScheme = "INTERNAL",
///         BackendService = backend.Id,
///         AllPorts = true,
///         Network = producer.Name,
///         Subnetwork = producerSubnetwork.Name,
///     });
///
///     var route_ilb = new Gcp.Compute.Route("route-ilb", new()
///     {
///         Name = "route-ilb",
///         DestRange = "0.0.0.0/0",
///         Network = consumer.Name,
///         NextHopIlb = @default.IpAddress,
///         Priority = 2000,
///         Tags = new[]
///         {
///             "tag1",
///             "tag2",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             peering1,
///             peering2,
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
/// 		producer, err := compute.NewNetwork(ctx, "producer", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("producer-vpc"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		producerSubnetwork, err := compute.NewSubnetwork(ctx, "producer", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("producer-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.1.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     producer.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		consumer, err := compute.NewNetwork(ctx, "consumer", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("consumer-vpc"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSubnetwork(ctx, "consumer", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("consumer-subnet"),
/// 			IpCidrRange: pulumi.String("10.0.2.0/24"),
/// 			Region:      pulumi.String("us-central1"),
/// 			Network:     consumer.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peering1, err := compute.NewNetworkPeering(ctx, "peering1", &compute.NetworkPeeringArgs{
/// 			Name:        pulumi.String("peering-producer-to-consumer"),
/// 			Network:     consumer.ID().ToIDOutput().ToStringOutput(),
/// 			PeerNetwork: producer.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peering2, err := compute.NewNetworkPeering(ctx, "peering2", &compute.NetworkPeeringArgs{
/// 			Name:        pulumi.String("peering-consumer-to-producer"),
/// 			Network:     producer.ID().ToIDOutput().ToStringOutput(),
/// 			PeerNetwork: consumer.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		hc, err := compute.NewHealthCheck(ctx, "hc", &compute.HealthCheckArgs{
/// 			Name:             pulumi.String("proxy-health-check"),
/// 			CheckIntervalSec: pulumi.Int(1),
/// 			TimeoutSec:       pulumi.Int(1),
/// 			TcpHealthCheck: &compute.HealthCheckTcpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		backend, err := compute.NewRegionBackendService(ctx, "backend", &compute.RegionBackendServiceArgs{
/// 			Name:         pulumi.String("compute-backend"),
/// 			Region:       pulumi.String("us-central1"),
/// 			HealthChecks: hc.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := compute.NewForwardingRule(ctx, "default", &compute.ForwardingRuleArgs{
/// 			Name:                pulumi.String("compute-forwarding-rule"),
/// 			Region:              pulumi.String("us-central1"),
/// 			LoadBalancingScheme: pulumi.String("INTERNAL"),
/// 			BackendService:      backend.ID().ToIDOutput().ToStringOutput(),
/// 			AllPorts:            pulumi.Bool(true),
/// 			Network:             producer.Name,
/// 			Subnetwork:          producerSubnetwork.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRoute(ctx, "route-ilb", &compute.RouteArgs{
/// 			Name:       pulumi.String("route-ilb"),
/// 			DestRange:  pulumi.String("0.0.0.0/0"),
/// 			Network:    consumer.Name,
/// 			NextHopIlb: _default.IpAddress,
/// 			Priority:   pulumi.Int(2000),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("tag1"),
/// 				pulumi.String("tag2"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			peering1,
/// 			peering2,
/// 		}))
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
/// resource "gcp_compute_network" "producer" {
///   name                    = "producer-vpc"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "producer" {
///   name          = "producer-subnet"
///   ip_cidr_range = "10.0.1.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.producer.id
/// }
/// resource "gcp_compute_network" "consumer" {
///   name                    = "consumer-vpc"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "consumer" {
///   name          = "consumer-subnet"
///   ip_cidr_range = "10.0.2.0/24"
///   region        = "us-central1"
///   network       = gcp_compute_network.consumer.id
/// }
/// resource "gcp_compute_networkpeering" "peering1" {
///   name         = "peering-producer-to-consumer"
///   network      = gcp_compute_network.consumer.id
///   peer_network = gcp_compute_network.producer.id
/// }
/// resource "gcp_compute_networkpeering" "peering2" {
///   name         = "peering-consumer-to-producer"
///   network      = gcp_compute_network.producer.id
///   peer_network = gcp_compute_network.consumer.id
/// }
/// resource "gcp_compute_healthcheck" "hc" {
///   name               = "proxy-health-check"
///   check_interval_sec = 1
///   timeout_sec        = 1
///   tcp_health_check = {
///     port = "80"
///   }
/// }
/// resource "gcp_compute_regionbackendservice" "backend" {
///   name          = "compute-backend"
///   region        = "us-central1"
///   health_checks = gcp_compute_healthcheck.hc.id
/// }
/// resource "gcp_compute_forwardingrule" "default" {
///   name                  = "compute-forwarding-rule"
///   region                = "us-central1"
///   load_balancing_scheme = "INTERNAL"
///   backend_service       = gcp_compute_regionbackendservice.backend.id
///   all_ports             = true
///   network               = gcp_compute_network.producer.name
///   subnetwork            = gcp_compute_subnetwork.producer.name
/// }
/// resource "gcp_compute_route" "route-ilb" {
///   depends_on   = [gcp_compute_networkpeering.peering1, gcp_compute_networkpeering.peering2]
///   name         = "route-ilb"
///   dest_range   = "0.0.0.0/0"
///   network      = gcp_compute_network.consumer.name
///   next_hop_ilb = gcp_compute_forwardingrule.default.ip_address
///   priority     = 2000
///   tags         = ["tag1", "tag2"]
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
/// import com.pulumi.gcp.compute.NetworkPeering;
/// import com.pulumi.gcp.compute.NetworkPeeringArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckTcpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.ForwardingRule;
/// import com.pulumi.gcp.compute.ForwardingRuleArgs;
/// import com.pulumi.gcp.compute.Route;
/// import com.pulumi.gcp.compute.RouteArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var producer = new Network("producer", NetworkArgs.builder()
///             .name("producer-vpc")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var producerSubnetwork = new Subnetwork("producerSubnetwork", SubnetworkArgs.builder()
///             .name("producer-subnet")
///             .ipCidrRange("10.0.1.0/24")
///             .region("us-central1")
///             .network(producer.id())
///             .build());
///
///         var consumer = new Network("consumer", NetworkArgs.builder()
///             .name("consumer-vpc")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var consumerSubnetwork = new Subnetwork("consumerSubnetwork", SubnetworkArgs.builder()
///             .name("consumer-subnet")
///             .ipCidrRange("10.0.2.0/24")
///             .region("us-central1")
///             .network(consumer.id())
///             .build());
///
///         var peering1 = new NetworkPeering("peering1", NetworkPeeringArgs.builder()
///             .name("peering-producer-to-consumer")
///             .network(consumer.id())
///             .peerNetwork(producer.id())
///             .build());
///
///         var peering2 = new NetworkPeering("peering2", NetworkPeeringArgs.builder()
///             .name("peering-consumer-to-producer")
///             .network(producer.id())
///             .peerNetwork(consumer.id())
///             .build());
///
///         var hc = new HealthCheck("hc", HealthCheckArgs.builder()
///             .name("proxy-health-check")
///             .checkIntervalSec(1)
///             .timeoutSec(1)
///             .tcpHealthCheck(HealthCheckTcpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var backend = new RegionBackendService("backend", RegionBackendServiceArgs.builder()
///             .name("compute-backend")
///             .region("us-central1")
///             .healthChecks(hc.id())
///             .build());
///
///         var default_ = new ForwardingRule("default", ForwardingRuleArgs.builder()
///             .name("compute-forwarding-rule")
///             .region("us-central1")
///             .loadBalancingScheme("INTERNAL")
///             .backendService(backend.id())
///             .allPorts(true)
///             .network(producer.name())
///             .subnetwork(producerSubnetwork.name())
///             .build());
///
///         var route_ilb = new Route("route-ilb", RouteArgs.builder()
///             .name("route-ilb")
///             .destRange("0.0.0.0/0")
///             .network(consumer.name())
///             .nextHopIlb(default_.ipAddress())
///             .priority(2000)
///             .tags(
///                 "tag1",
///                 "tag2")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     peering1,
///                     peering2)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   producer:
///     type: gcp:compute:Network
///     properties:
///       name: producer-vpc
///       autoCreateSubnetworks: false
///   producerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: producer
///     properties:
///       name: producer-subnet
///       ipCidrRange: 10.0.1.0/24
///       region: us-central1
///       network: ${producer.id}
///   consumer:
///     type: gcp:compute:Network
///     properties:
///       name: consumer-vpc
///       autoCreateSubnetworks: false
///   consumerSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: consumer
///     properties:
///       name: consumer-subnet
///       ipCidrRange: 10.0.2.0/24
///       region: us-central1
///       network: ${consumer.id}
///   peering1:
///     type: gcp:compute:NetworkPeering
///     properties:
///       name: peering-producer-to-consumer
///       network: ${consumer.id}
///       peerNetwork: ${producer.id}
///   peering2:
///     type: gcp:compute:NetworkPeering
///     properties:
///       name: peering-consumer-to-producer
///       network: ${producer.id}
///       peerNetwork: ${consumer.id}
///   hc:
///     type: gcp:compute:HealthCheck
///     properties:
///       name: proxy-health-check
///       checkIntervalSec: 1
///       timeoutSec: 1
///       tcpHealthCheck:
///         port: '80'
///   backend:
///     type: gcp:compute:RegionBackendService
///     properties:
///       name: compute-backend
///       region: us-central1
///       healthChecks: ${hc.id}
///   default:
///     type: gcp:compute:ForwardingRule
///     properties:
///       name: compute-forwarding-rule
///       region: us-central1
///       loadBalancingScheme: INTERNAL
///       backendService: ${backend.id}
///       allPorts: true
///       network: ${producer.name}
///       subnetwork: ${producerSubnetwork.name}
///   route-ilb:
///     type: gcp:compute:Route
///     properties:
///       name: route-ilb
///       destRange: 0.0.0.0/0
///       network: ${consumer.name}
///       nextHopIlb: ${default.ipAddress}
///       priority: 2000
///       tags:
///         - tag1
///         - tag2
///     options:
///       dependsOn:
///         - ${peering1}
///         - ${peering2}
/// ```
///
///
/// ## Import
///
/// Route can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/routes/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Route can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/route:Route default projects/{{project}}/global/routes/{{name}}
/// $ pulumi import gcp:compute/route:Route default {{project}}/{{name}}
/// $ pulumi import gcp:compute/route:Route default {{name}}
/// ```
class Route extends pulumi.CustomResource {
  /// Structure is documented below.
  late final pulumi.Output<List<RouteAsPath>> asPaths;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property
  /// when you create the resource.
  late final pulumi.Output<String?> description;
  /// The destination range of outgoing packets that this route applies to.
  /// Only IPv4 is supported.
  late final pulumi.Output<String> destRange;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// The network that this route applies to.
  late final pulumi.Output<String> network;
  /// URL to a gateway that should handle matching packets.
  /// Currently, you can only specify the internet gateway, using a full or
  /// partial valid URL:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway`
  /// * `projects/project/global/gateways/default-internet-gateway`
  /// * `global/gateways/default-internet-gateway`
  /// * The string `default-internet-gateway`.
  late final pulumi.Output<String?> nextHopGateway;
  /// The hub network that should handle matching packets, which should conform to RFC1035.
  late final pulumi.Output<String> nextHopHub;
  /// The IP address or URL to a forwarding rule of type
  /// loadBalancingScheme=INTERNAL that should handle matching
  /// packets.
  /// With the GA provider you can only specify the forwarding
  /// rule as a partial or full URL. For example, the following
  /// are all valid values:
  /// * 10.128.0.56
  /// * https://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule
  /// * regions/region/forwardingRules/forwardingRule
  /// When the beta provider, you can also specify the IP address
  /// of a forwarding rule from the same VPC or any peered VPC.
  /// Note that this can only be used when the destinationRange is
  /// a public (non-RFC 1918) IP CIDR range.
  late final pulumi.Output<String?> nextHopIlb;
  /// URL to an instance that should handle matching packets.
  /// You can specify this as a full or partial URL. For example:
  /// * `https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance`
  /// * `projects/project/zones/zone/instances/instance`
  /// * `zones/zone/instances/instance`
  /// * Just the instance name, with the zone in `nextHopInstanceZone`.
  late final pulumi.Output<String?> nextHopInstance;
  /// (Optional when `nextHopInstance` is
  /// specified)  The zone of the instance specified in
  /// `nextHopInstance`.  Omit if `nextHopInstance` is specified as
  /// a URL.
  late final pulumi.Output<String> nextHopInstanceZone;
  /// Internal fixed region-to-region cost that Google Cloud calculates based on factors such as network performance, distance, and available bandwidth between regions.
  late final pulumi.Output<String> nextHopInterRegionCost;
  /// Network IP address of an instance that should handle matching packets.
  late final pulumi.Output<String> nextHopIp;
  /// Multi-Exit Discriminator, a BGP route metric that indicates the desirability of a particular route in a network.
  late final pulumi.Output<String> nextHopMed;
  /// URL to a Network that should handle matching packets.
  late final pulumi.Output<String> nextHopNetwork;
  /// Indicates the origin of the route. Can be IGP (Interior Gateway Protocol), EGP (Exterior Gateway Protocol), or INCOMPLETE.
  late final pulumi.Output<String> nextHopOrigin;
  /// The network peering name that should handle matching packets, which should conform to RFC1035.
  late final pulumi.Output<String> nextHopPeering;
  /// URL to a VpnTunnel that should handle matching packets.
  late final pulumi.Output<String?> nextHopVpnTunnel;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final pulumi.Output<RouteParams?> params;
  /// The priority of this route. Priority is used to break ties in cases
  /// where there is more than one matching route of equal prefix length.
  /// In the case of two routes with equal prefix length, the one with the
  /// lowest-numbered priority value wins.
  /// Default value is 1000. Valid range is 0 through 65535.
  late final pulumi.Output<int?> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The status of the route, which can be one of the following values:
  /// - 'ACTIVE' for an active route
  /// - 'INACTIVE' for an inactive route
  late final pulumi.Output<String> routeStatus;
  /// The type of this route, which can be one of the following values:
  /// - 'TRANSIT' for a transit route that this router learned from another Cloud Router and will readvertise to one of its BGP peers
  /// - 'SUBNET' for a route from a subnet of the VPC
  /// - 'BGP' for a route learned from a BGP peer of this router
  /// - 'STATIC' for a static route
  late final pulumi.Output<String> routeType;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// A list of instance tags to which this route applies.
  late final pulumi.Output<List<String>?> tags;
  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  /// Structure is documented below.
  late final pulumi.Output<List<RouteWarning>> warnings;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_compute_route_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(
    String name, {
    RouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/route:Route',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    asPaths = registerOutput<List<RouteAsPath>>('asPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteAsPath>(guardedValue, (value) => RouteAsPath.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destRange = registerOutput<String>('destRange');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    nextHopGateway = registerOutput<String?>('nextHopGateway');
    nextHopHub = registerOutput<String>('nextHopHub');
    nextHopIlb = registerOutput<String?>('nextHopIlb');
    nextHopInstance = registerOutput<String?>('nextHopInstance');
    nextHopInstanceZone = registerOutput<String>('nextHopInstanceZone');
    nextHopInterRegionCost = registerOutput<String>('nextHopInterRegionCost');
    nextHopIp = registerOutput<String>('nextHopIp');
    nextHopMed = registerOutput<String>('nextHopMed');
    nextHopNetwork = registerOutput<String>('nextHopNetwork');
    nextHopOrigin = registerOutput<String>('nextHopOrigin');
    nextHopPeering = registerOutput<String>('nextHopPeering');
    nextHopVpnTunnel = registerOutput<String?>('nextHopVpnTunnel');
    params = registerOutput<RouteParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    routeStatus = registerOutput<String>('routeStatus');
    routeType = registerOutput<String>('routeType');
    selfLink = registerOutput<String>('selfLink');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    warnings = registerOutput<List<RouteWarning>>('warnings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteWarning>(guardedValue, (value) => RouteWarning.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Route] resource's state with the given [name] and [id].
  static Route get(
    String name,
    pulumi.Input<String> id, {
    RouteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Route._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Route._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/route:Route',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    asPaths = registerOutput<List<RouteAsPath>>('asPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteAsPath>(guardedValue, (value) => RouteAsPath.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destRange = registerOutput<String>('destRange');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    nextHopGateway = registerOutput<String?>('nextHopGateway');
    nextHopHub = registerOutput<String>('nextHopHub');
    nextHopIlb = registerOutput<String?>('nextHopIlb');
    nextHopInstance = registerOutput<String?>('nextHopInstance');
    nextHopInstanceZone = registerOutput<String>('nextHopInstanceZone');
    nextHopInterRegionCost = registerOutput<String>('nextHopInterRegionCost');
    nextHopIp = registerOutput<String>('nextHopIp');
    nextHopMed = registerOutput<String>('nextHopMed');
    nextHopNetwork = registerOutput<String>('nextHopNetwork');
    nextHopOrigin = registerOutput<String>('nextHopOrigin');
    nextHopPeering = registerOutput<String>('nextHopPeering');
    nextHopVpnTunnel = registerOutput<String?>('nextHopVpnTunnel');
    params = registerOutput<RouteParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    routeStatus = registerOutput<String>('routeStatus');
    routeType = registerOutput<String>('routeType');
    selfLink = registerOutput<String>('selfLink');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    warnings = registerOutput<List<RouteWarning>>('warnings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteWarning>(guardedValue, (value) => RouteWarning.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Route] resource.
  Route.reference(String urn)
    : super(
        'gcp:compute/route:Route',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    asPaths = registerOutput<List<RouteAsPath>>('asPaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteAsPath>(guardedValue, (value) => RouteAsPath.fromMap((value as Map).cast<String, dynamic>())); });
    creationTimestamp = registerOutput<String>('creationTimestamp');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    destRange = registerOutput<String>('destRange');
    this.name = registerOutput<String>('name');
    network = registerOutput<String>('network');
    nextHopGateway = registerOutput<String?>('nextHopGateway');
    nextHopHub = registerOutput<String>('nextHopHub');
    nextHopIlb = registerOutput<String?>('nextHopIlb');
    nextHopInstance = registerOutput<String?>('nextHopInstance');
    nextHopInstanceZone = registerOutput<String>('nextHopInstanceZone');
    nextHopInterRegionCost = registerOutput<String>('nextHopInterRegionCost');
    nextHopIp = registerOutput<String>('nextHopIp');
    nextHopMed = registerOutput<String>('nextHopMed');
    nextHopNetwork = registerOutput<String>('nextHopNetwork');
    nextHopOrigin = registerOutput<String>('nextHopOrigin');
    nextHopPeering = registerOutput<String>('nextHopPeering');
    nextHopVpnTunnel = registerOutput<String?>('nextHopVpnTunnel');
    params = registerOutput<RouteParams?>('params', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RouteParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    priority = registerOutput<int?>('priority');
    project = registerOutput<String>('project');
    routeStatus = registerOutput<String>('routeStatus');
    routeType = registerOutput<String>('routeType');
    selfLink = registerOutput<String>('selfLink');
    tags = registerOutput<List<String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    warnings = registerOutput<List<RouteWarning>>('warnings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RouteWarning>(guardedValue, (value) => RouteWarning.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
