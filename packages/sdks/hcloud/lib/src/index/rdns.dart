import 'package:pulumi/pulumi.dart' as pulumi;
import 'rdns_args.dart';
import 'rdns_state.dart';

/// Provides a Hetzner Cloud Reverse DNS Entry to create, modify and reset reverse dns entries for Hetzner Cloud Servers, Primary IPs, Floating IPs or Load Balancers.
///
/// ## Example Usage
///
/// For servers:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const node1 = new hcloud.Server("node1", {
///     name: "node1",
///     image: "debian-12",
///     serverType: "cx23",
/// });
/// const master = new hcloud.Rdns("master", {
///     serverId: node1.id,
///     ipAddress: node1.ipv4Address,
///     dnsPtr: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// node1 = hcloud.Server("node1",
///     name="node1",
///     image="debian-12",
///     server_type="cx23")
/// master = hcloud.Rdns("master",
///     server_id=node1.id,
///     ip_address=node1.ipv4_address,
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
///     var node1 = new HCloud.Server("node1", new()
///     {
///         Name = "node1",
///         Image = "debian-12",
///         ServerType = "cx23",
///     });
///
///     var master = new HCloud.Rdns("master", new()
///     {
///         ServerId = node1.Id,
///         IpAddress = node1.Ipv4Address,
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
/// 		node1, err := hcloud.NewServer(ctx, "node1", &hcloud.ServerArgs{
/// 			Name:       pulumi.String("node1"),
/// 			Image:      pulumi.String("debian-12"),
/// 			ServerType: pulumi.String("cx23"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewRdns(ctx, "master", &hcloud.RdnsArgs{
/// 			ServerId:  node1.ID(),
/// 			IpAddress: node1.Ipv4Address,
/// 			DnsPtr:    pulumi.String("example.com"),
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
/// import com.pulumi.hcloud.Rdns;
/// import com.pulumi.hcloud.RdnsArgs;
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
///         var node1 = new Server("node1", ServerArgs.builder()
///             .name("node1")
///             .image("debian-12")
///             .serverType("cx23")
///             .build());
///
///         var master = new Rdns("master", RdnsArgs.builder()
///             .serverId(node1.id())
///             .ipAddress(node1.ipv4Address())
///             .dnsPtr("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   node1:
///     type: hcloud:Server
///     properties:
///       name: node1
///       image: debian-12
///       serverType: cx23
///   master:
///     type: hcloud:Rdns
///     properties:
///       serverId: ${node1.id}
///       ipAddress: ${node1.ipv4Address}
///       dnsPtr: example.com
/// ```
///
///
/// For Primary IPs:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const primary1 = new hcloud.PrimaryIp("primary1", {
///     datacenter: "nbg1-dc3",
///     type: "ipv4",
/// });
/// const primary1Rdns = new hcloud.Rdns("primary1", {
///     primaryIpId: primary1.id,
///     ipAddress: primary1.ipAddress,
///     dnsPtr: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// primary1 = hcloud.PrimaryIp("primary1",
///     datacenter="nbg1-dc3",
///     type="ipv4")
/// primary1_rdns = hcloud.Rdns("primary1",
///     primary_ip_id=primary1.id,
///     ip_address=primary1.ip_address,
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
///     var primary1 = new HCloud.PrimaryIp("primary1", new()
///     {
///         Datacenter = "nbg1-dc3",
///         Type = "ipv4",
///     });
///
///     var primary1Rdns = new HCloud.Rdns("primary1", new()
///     {
///         PrimaryIpId = primary1.Id,
///         IpAddress = primary1.IpAddress,
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
/// 		primary1, err := hcloud.NewPrimaryIp(ctx, "primary1", &hcloud.PrimaryIpArgs{
/// 			Datacenter: pulumi.String("nbg1-dc3"),
/// 			Type:       pulumi.String("ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewRdns(ctx, "primary1", &hcloud.RdnsArgs{
/// 			PrimaryIpId: primary1.ID(),
/// 			IpAddress:   primary1.IpAddress,
/// 			DnsPtr:      pulumi.String("example.com"),
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
/// import com.pulumi.hcloud.Rdns;
/// import com.pulumi.hcloud.RdnsArgs;
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
///         var primary1 = new PrimaryIp("primary1", PrimaryIpArgs.builder()
///             .datacenter("nbg1-dc3")
///             .type("ipv4")
///             .build());
///
///         var primary1Rdns = new Rdns("primary1Rdns", RdnsArgs.builder()
///             .primaryIpId(primary1.id())
///             .ipAddress(primary1.ipAddress())
///             .dnsPtr("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary1:
///     type: hcloud:PrimaryIp
///     properties:
///       datacenter: nbg1-dc3
///       type: ipv4
///   primary1Rdns:
///     type: hcloud:Rdns
///     name: primary1
///     properties:
///       primaryIpId: ${primary1.id}
///       ipAddress: ${primary1.ipAddress}
///       dnsPtr: example.com
/// ```
///
///
/// For Floating IPs:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const floating1 = new hcloud.FloatingIp("floating1", {
///     homeLocation: "nbg1",
///     type: "ipv4",
/// });
/// const floatingMaster = new hcloud.Rdns("floating_master", {
///     floatingIpId: floating1.id,
///     ipAddress: floating1.ipAddress,
///     dnsPtr: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// floating1 = hcloud.FloatingIp("floating1",
///     home_location="nbg1",
///     type="ipv4")
/// floating_master = hcloud.Rdns("floating_master",
///     floating_ip_id=floating1.id,
///     ip_address=floating1.ip_address,
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
///     var floating1 = new HCloud.FloatingIp("floating1", new()
///     {
///         HomeLocation = "nbg1",
///         Type = "ipv4",
///     });
///
///     var floatingMaster = new HCloud.Rdns("floating_master", new()
///     {
///         FloatingIpId = floating1.Id,
///         IpAddress = floating1.IpAddress,
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
/// 		floating1, err := hcloud.NewFloatingIp(ctx, "floating1", &hcloud.FloatingIpArgs{
/// 			HomeLocation: pulumi.String("nbg1"),
/// 			Type:         pulumi.String("ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewRdns(ctx, "floating_master", &hcloud.RdnsArgs{
/// 			FloatingIpId: floating1.ID(),
/// 			IpAddress:    floating1.IpAddress,
/// 			DnsPtr:       pulumi.String("example.com"),
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
/// import com.pulumi.hcloud.FloatingIp;
/// import com.pulumi.hcloud.FloatingIpArgs;
/// import com.pulumi.hcloud.Rdns;
/// import com.pulumi.hcloud.RdnsArgs;
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
///         var floating1 = new FloatingIp("floating1", FloatingIpArgs.builder()
///             .homeLocation("nbg1")
///             .type("ipv4")
///             .build());
///
///         var floatingMaster = new Rdns("floatingMaster", RdnsArgs.builder()
///             .floatingIpId(floating1.id())
///             .ipAddress(floating1.ipAddress())
///             .dnsPtr("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   floating1:
///     type: hcloud:FloatingIp
///     properties:
///       homeLocation: nbg1
///       type: ipv4
///   floatingMaster:
///     type: hcloud:Rdns
///     name: floating_master
///     properties:
///       floatingIpId: ${floating1.id}
///       ipAddress: ${floating1.ipAddress}
///       dnsPtr: example.com
/// ```
///
///
/// For Load Balancers:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
///
/// const loadBalancer1 = new hcloud.LoadBalancer("load_balancer1", {
///     name: "load_balancer1",
///     loadBalancerType: "lb11",
///     location: "fsn1",
/// });
/// const loadBalancerMaster = new hcloud.Rdns("load_balancer_master", {
///     loadBalancerId: loadBalancer1.id,
///     ipAddress: loadBalancer1.ipv4,
///     dnsPtr: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
///
/// load_balancer1 = hcloud.LoadBalancer("load_balancer1",
///     name="load_balancer1",
///     load_balancer_type="lb11",
///     location="fsn1")
/// load_balancer_master = hcloud.Rdns("load_balancer_master",
///     load_balancer_id=load_balancer1.id,
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
///     var loadBalancer1 = new HCloud.LoadBalancer("load_balancer1", new()
///     {
///         Name = "load_balancer1",
///         LoadBalancerType = "lb11",
///         Location = "fsn1",
///     });
///
///     var loadBalancerMaster = new HCloud.Rdns("load_balancer_master", new()
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
/// 		loadBalancer1, err := hcloud.NewLoadBalancer(ctx, "load_balancer1", &hcloud.LoadBalancerArgs{
/// 			Name:             pulumi.String("load_balancer1"),
/// 			LoadBalancerType: pulumi.String("lb11"),
/// 			Location:         pulumi.String("fsn1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewRdns(ctx, "load_balancer_master", &hcloud.RdnsArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.hcloud.LoadBalancer;
/// import com.pulumi.hcloud.LoadBalancerArgs;
/// import com.pulumi.hcloud.Rdns;
/// import com.pulumi.hcloud.RdnsArgs;
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
///         var loadBalancer1 = new LoadBalancer("loadBalancer1", LoadBalancerArgs.builder()
///             .name("load_balancer1")
///             .loadBalancerType("lb11")
///             .location("fsn1")
///             .build());
///
///         var loadBalancerMaster = new Rdns("loadBalancerMaster", RdnsArgs.builder()
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
///   loadBalancer1:
///     type: hcloud:LoadBalancer
///     name: load_balancer1
///     properties:
///       name: load_balancer1
///       loadBalancerType: lb11
///       location: fsn1
///   loadBalancerMaster:
///     type: hcloud:Rdns
///     name: load_balancer_master
///     properties:
///       loadBalancerId: ${loadBalancer1.id}
///       ipAddress: ${loadBalancer1.ipv4}
///       dnsPtr: example.com
/// ```
///
///
/// ## Import
///
/// Reverse DNS entries can be imported using a compound ID with the following format:
/// `&lt;prefix (s for server/ f for floating ip / l for load balancer)&gt;-&lt;server, floating ip or load balancer ID&gt;-&lt;IP address&gt;`
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns example "$PREFIX-$ID-$IP"
/// ```
///
/// import reverse dns entry on server with id 123, ip 192.168.100.1
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns myrdns s-123-192.168.100.1
/// ```
///
/// import reverse dns entry on primary ip with id 123, ip 2001:db8::1
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns myrdns p-123-2001:db8::1
/// ```
///
/// import reverse dns entry on floating ip with id 123, ip 2001:db8::1
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns myrdns f-123-2001:db8::1
/// ```
///
/// import reverse dns entry on load balancer with id 123, ip 2001:db8::1
///
/// ```sh
/// $ pulumi import hcloud:index/rdns:Rdns myrdns l-123-2001:db8::1
/// ```
class Rdns extends pulumi.CustomResource {
  /// The DNS address the `ip_address` should resolve to.
  late final pulumi.Output<String> dnsPtr;

  /// The Floating IP the `ip_address` belongs to.
  late final pulumi.Output<int?> floatingIpId;

  /// The IP address that should point to `dns_ptr`.
  late final pulumi.Output<String> ipAddress;

  /// The Load Balancer the `ip_address` belongs to.
  late final pulumi.Output<int?> loadBalancerId;

  /// The Primary IP the `ip_address` belongs to.
  late final pulumi.Output<int?> primaryIpId;

  /// The server the `ip_address` belongs to.
  late final pulumi.Output<int?> serverId;

  /// Creates a new [Rdns].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rdns]. {@macro pulumi_index_rdns_rdns_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rdns(String name, {RdnsArgs? args, pulumi.CustomResourceOptions? options})
    : super(
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
  static Rdns get(String name, pulumi.Input<String> id, {RdnsState? state}) {
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
