import 'package:pulumi/pulumi.dart' as pulumi;
import 'rdns_args.dart';
import 'rdns_state.dart';

/// Provides Hetzner Cloud reverse DNS (rDNS) entries for Servers, Primary IPs, Floating IPs or Load Balancers.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// // For Servers
/// const server1 = new hcloud.Server("server1", {name: "server1"});
/// const server1Rdns = new hcloud.Rdns("server1", {
///     serverId: server1.id.apply(x =>Number(x)),
///     ipAddress: server1.ipv4Address,
///     dnsPtr: "example.com",
/// });
/// // For Primary IPs
/// const primaryIp1 = new hcloud.PrimaryIp("primary_ip1", {
///     name: "primary_ip1",
///     type: "ipv4",
/// });
/// const primaryIp1Rdns = new hcloud.Rdns("primary_ip1", {
///     primaryIpId: primaryIp1.id.apply(x =>Number(x)),
///     ipAddress: primaryIp1.ipAddress,
///     dnsPtr: "example.com",
/// });
/// // For Floating IPs
/// const floatingIp1 = new hcloud.FloatingIp("floating_ip1", {
///     name: "floating_ip1",
///     type: "ipv4",
/// });
/// const floatingIp1Rdns = new hcloud.Rdns("floating_ip1", {
///     floatingIpId: floatingIp1.id.apply(x =>Number(x)),
///     ipAddress: floatingIp1.ipAddress,
///     dnsPtr: "example.com",
/// });
/// // For Load Balancers
/// const loadBalancer1 = new hcloud.LoadBalancer("load_balancer1", {name: "load_balancer1"});
/// const loadBalancer1Rdns = new hcloud.Rdns("load_balancer1", {
///     loadBalancerId: loadBalancer1.id.apply(x =>Number(x)),
///     ipAddress: loadBalancer1.ipv4,
///     dnsPtr: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// # For Servers
/// server1 = hcloud.Server("server1", name="server1")
/// server1_rdns = hcloud.Rdns("server1",
///     server_id=server1.id.apply(lambda x: int(x)),
///     ip_address=server1.ipv4_address,
///     dns_ptr="example.com")
/// # For Primary IPs
/// primary_ip1 = hcloud.PrimaryIp("primary_ip1",
///     name="primary_ip1",
///     type="ipv4")
/// primary_ip1_rdns = hcloud.Rdns("primary_ip1",
///     primary_ip_id=primary_ip1.id.apply(lambda x: int(x)),
///     ip_address=primary_ip1.ip_address,
///     dns_ptr="example.com")
/// # For Floating IPs
/// floating_ip1 = hcloud.FloatingIp("floating_ip1",
///     name="floating_ip1",
///     type="ipv4")
/// floating_ip1_rdns = hcloud.Rdns("floating_ip1",
///     floating_ip_id=floating_ip1.id.apply(lambda x: int(x)),
///     ip_address=floating_ip1.ip_address,
///     dns_ptr="example.com")
/// # For Load Balancers
/// load_balancer1 = hcloud.LoadBalancer("load_balancer1", name="load_balancer1")
/// load_balancer1_rdns = hcloud.Rdns("load_balancer1",
///     load_balancer_id=load_balancer1.id.apply(lambda x: int(x)),
///     ip_address=load_balancer1.ipv4,
///     dns_ptr="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // For Servers
///     var server1 = new HCloud.Server("server1", new()
///     {
///         Name = "server1",
///     });
///
///     var server1Rdns = new HCloud.Rdns("server1", new()
///     {
///         ServerId = server1.Id,
///         IpAddress = server1.Ipv4Address,
///         DnsPtr = "example.com",
///     });
///
///     // For Primary IPs
///     var primaryIp1 = new HCloud.PrimaryIp("primary_ip1", new()
///     {
///         Name = "primary_ip1",
///         Type = "ipv4",
///     });
///
///     var primaryIp1Rdns = new HCloud.Rdns("primary_ip1", new()
///     {
///         PrimaryIpId = primaryIp1.Id,
///         IpAddress = primaryIp1.IpAddress,
///         DnsPtr = "example.com",
///     });
///
///     // For Floating IPs
///     var floatingIp1 = new HCloud.FloatingIp("floating_ip1", new()
///     {
///         Name = "floating_ip1",
///         Type = "ipv4",
///     });
///
///     var floatingIp1Rdns = new HCloud.Rdns("floating_ip1", new()
///     {
///         FloatingIpId = floatingIp1.Id,
///         IpAddress = floatingIp1.IpAddress,
///         DnsPtr = "example.com",
///     });
///
///     // For Load Balancers
///     var loadBalancer1 = new HCloud.LoadBalancer("load_balancer1", new()
///     {
///         Name = "load_balancer1",
///     });
///
///     var loadBalancer1Rdns = new HCloud.Rdns("load_balancer1", new()
///     {
///         LoadBalancerId = loadBalancer1.Id,
///         IpAddress = loadBalancer1.Ipv4,
///         DnsPtr = "example.com",
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
/// 		// For Servers
/// 		server1, err := hcloud.NewServer(ctx, "server1", &hcloud.ServerArgs{
/// 			Name: pulumi.String("server1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewRdns(ctx, "server1", &hcloud.RdnsArgs{
/// 			ServerId:  server1.ID(),
/// 			IpAddress: server1.Ipv4Address,
/// 			DnsPtr:    pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// For Primary IPs
/// 		primaryIp1, err := hcloud.NewPrimaryIp(ctx, "primary_ip1", &hcloud.PrimaryIpArgs{
/// 			Name: pulumi.String("primary_ip1"),
/// 			Type: pulumi.String("ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewRdns(ctx, "primary_ip1", &hcloud.RdnsArgs{
/// 			PrimaryIpId: primaryIp1.ID(),
/// 			IpAddress:   primaryIp1.IpAddress,
/// 			DnsPtr:      pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// For Floating IPs
/// 		floatingIp1, err := hcloud.NewFloatingIp(ctx, "floating_ip1", &hcloud.FloatingIpArgs{
/// 			Name: pulumi.String("floating_ip1"),
/// 			Type: pulumi.String("ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewRdns(ctx, "floating_ip1", &hcloud.RdnsArgs{
/// 			FloatingIpId: floatingIp1.ID(),
/// 			IpAddress:    floatingIp1.IpAddress,
/// 			DnsPtr:       pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// For Load Balancers
/// 		loadBalancer1, err := hcloud.NewLoadBalancer(ctx, "load_balancer1", &hcloud.LoadBalancerArgs{
/// 			Name: pulumi.String("load_balancer1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewRdns(ctx, "load_balancer1", &hcloud.RdnsArgs{
/// 			LoadBalancerId: loadBalancer1.ID(),
/// 			IpAddress:      loadBalancer1.Ipv4,
/// 			DnsPtr:         pulumi.String("example.com"),
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
///     hcloud = {
///       source = "pulumi/hcloud"
///     }
///   }
/// }
///
/// // For Servers
/// resource "hcloud_server" "server1" {
///   name = "server1"
/// }
/// resource "hcloud_rdns" "server1" {
///   server_id  = hcloud_server.server1.id
///   ip_address = hcloud_server.server1.ipv4_address
///   dns_ptr    = "example.com"
/// }
/// // For Primary IPs
/// resource "hcloud_primaryip" "primary_ip1" {
///   name = "primary_ip1"
///   type = "ipv4"
/// }
/// resource "hcloud_rdns" "primary_ip1" {
///   primary_ip_id = hcloud_primaryip.primary_ip1.id
///   ip_address    = hcloud_primaryip.primary_ip1.ip_address
///   dns_ptr       = "example.com"
/// }
/// // For Floating IPs
/// resource "hcloud_floatingip" "floating_ip1" {
///   name = "floating_ip1"
///   type = "ipv4"
/// }
/// resource "hcloud_rdns" "floating_ip1" {
///   floating_ip_id = hcloud_floatingip.floating_ip1.id
///   ip_address     = hcloud_floatingip.floating_ip1.ip_address
///   dns_ptr        = "example.com"
/// }
/// // For Load Balancers
/// resource "hcloud_loadbalancer" "load_balancer1" {
///   name = "load_balancer1"
/// }
/// resource "hcloud_rdns" "load_balancer1" {
///   load_balancer_id = hcloud_loadbalancer.load_balancer1.id
///   ip_address       = hcloud_loadbalancer.load_balancer1.ipv4
///   dns_ptr          = "example.com"
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
/// import com.pulumi.hcloud.Rdns;
/// import com.pulumi.hcloud.RdnsArgs;
/// import com.pulumi.hcloud.PrimaryIp;
/// import com.pulumi.hcloud.PrimaryIpArgs;
/// import com.pulumi.hcloud.FloatingIp;
/// import com.pulumi.hcloud.FloatingIpArgs;
/// import com.pulumi.hcloud.LoadBalancer;
/// import com.pulumi.hcloud.LoadBalancerArgs;
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
///         // For Servers
///         var server1 = new Server("server1", ServerArgs.builder()
///             .name("server1")
///             .build());
///
///         var server1Rdns = new Rdns("server1Rdns", RdnsArgs.builder()
///             .serverId(server1.id())
///             .ipAddress(server1.ipv4Address())
///             .dnsPtr("example.com")
///             .build());
///
///         // For Primary IPs
///         var primaryIp1 = new PrimaryIp("primaryIp1", PrimaryIpArgs.builder()
///             .name("primary_ip1")
///             .type("ipv4")
///             .build());
///
///         var primaryIp1Rdns = new Rdns("primaryIp1Rdns", RdnsArgs.builder()
///             .primaryIpId(primaryIp1.id())
///             .ipAddress(primaryIp1.ipAddress())
///             .dnsPtr("example.com")
///             .build());
///
///         // For Floating IPs
///         var floatingIp1 = new FloatingIp("floatingIp1", FloatingIpArgs.builder()
///             .name("floating_ip1")
///             .type("ipv4")
///             .build());
///
///         var floatingIp1Rdns = new Rdns("floatingIp1Rdns", RdnsArgs.builder()
///             .floatingIpId(floatingIp1.id())
///             .ipAddress(floatingIp1.ipAddress())
///             .dnsPtr("example.com")
///             .build());
///
///         // For Load Balancers
///         var loadBalancer1 = new LoadBalancer("loadBalancer1", LoadBalancerArgs.builder()
///             .name("load_balancer1")
///             .build());
///
///         var loadBalancer1Rdns = new Rdns("loadBalancer1Rdns", RdnsArgs.builder()
///             .loadBalancerId(loadBalancer1.id())
///             .ipAddress(loadBalancer1.ipv4())
///             .dnsPtr("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # For Servers
///   server1:
///     type: hcloud:Server
///     properties:
///       name: server1
///   server1Rdns:
///     type: hcloud:Rdns
///     name: server1
///     properties:
///       serverId: ${server1.id}
///       ipAddress: ${server1.ipv4Address}
///       dnsPtr: example.com
///   # For Primary IPs
///   primaryIp1:
///     type: hcloud:PrimaryIp
///     name: primary_ip1
///     properties:
///       name: primary_ip1
///       type: ipv4
///   primaryIp1Rdns:
///     type: hcloud:Rdns
///     name: primary_ip1
///     properties:
///       primaryIpId: ${primaryIp1.id}
///       ipAddress: ${primaryIp1.ipAddress}
///       dnsPtr: example.com
///   # For Floating IPs
///   floatingIp1:
///     type: hcloud:FloatingIp
///     name: floating_ip1
///     properties:
///       name: floating_ip1
///       type: ipv4
///   floatingIp1Rdns:
///     type: hcloud:Rdns
///     name: floating_ip1
///     properties:
///       floatingIpId: ${floatingIp1.id}
///       ipAddress: ${floatingIp1.ipAddress}
///       dnsPtr: example.com
///   # For Load Balancers
///   loadBalancer1:
///     type: hcloud:LoadBalancer
///     name: load_balancer1
///     properties:
///       name: load_balancer1
///   loadBalancer1Rdns:
///     type: hcloud:Rdns
///     name: load_balancer1
///     properties:
///       loadBalancerId: ${loadBalancer1.id}
///       ipAddress: ${loadBalancer1.ipv4}
///       dnsPtr: example.com
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns example "$RESOURCE_PREFIX-$ID-$IP"
/// ```
///
/// A Server with id 132022102 and ip 203.0.113.10
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns server1 "s-132022102-203.0.113.10"
/// ```
///
/// A Primary IP with id 582026301 and ip 2001:db8::1
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns primary_ip1 "p-582026301-2001:db8::1"
/// ```
///
/// A Floating IP with id 912300308 and ip 2001:db8::1
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns floating_ip1 "f-912300308-2001:db8::1"
/// ```
///
/// A Load Balancer with id 747590326 and ip 203.0.113.25
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns load_balancer1 "l-747590326-203.0.113.25"
/// ```
class Rdns extends pulumi.CustomResource {
  /// Domain name `ipAddress` should point to.
  late final pulumi.Output<String> dnsPtr;
  /// ID of the Floating IP the `ipAddress` belongs to.
  late final pulumi.Output<int?> floatingIpId;
  /// IP address that should point to `dnsPtr`.
  late final pulumi.Output<String> ipAddress;
  /// ID of the Load Balancer the `ipAddress` belongs to.
  late final pulumi.Output<int?> loadBalancerId;
  /// ID of the Primary IP the `ipAddress` belongs to.
  late final pulumi.Output<int?> primaryIpId;
  /// ID of the Server the `ipAddress` belongs to.
  late final pulumi.Output<int?> serverId;

  /// Creates a new [Rdns].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rdns]. {@macro pulumi_index_rdns_rdns_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rdns(
    String name, {
    RdnsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/rdns:Rdns',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dnsPtr = registerOutput<String>('dnsPtr');
    floatingIpId = registerOutput<int?>('floatingIpId');
    ipAddress = registerOutput<String>('ipAddress');
    loadBalancerId = registerOutput<int?>('loadBalancerId');
    primaryIpId = registerOutput<int?>('primaryIpId');
    serverId = registerOutput<int?>('serverId');
  }

  /// Gets an existing [Rdns] resource's state with the given [name] and [id].
  static Rdns get(
    String name,
    pulumi.Input<String> id, {
    RdnsState? state,
  }) {
    return Rdns._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Rdns._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/rdns:Rdns',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dnsPtr = registerOutput<String>('dnsPtr');
    floatingIpId = registerOutput<int?>('floatingIpId');
    ipAddress = registerOutput<String>('ipAddress');
    loadBalancerId = registerOutput<int?>('loadBalancerId');
    primaryIpId = registerOutput<int?>('primaryIpId');
    serverId = registerOutput<int?>('serverId');
  }
}
