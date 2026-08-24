import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_lan_args.dart';
import 'magic_transit_site_lan_nat.dart';
import 'magic_transit_site_lan_routed_subnet.dart';
import 'magic_transit_site_lan_state.dart';
import 'magic_transit_site_lan_static_addressing.dart';

/// Accepted Permissions
///
/// - `Magic Transit Read`
/// - `Magic Transit Write`
/// - `Magic WAN Read`
/// - `Magic WAN Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicTransitSiteLan = new cloudflare.MagicTransitSiteLan("example_magic_transit_site_lan", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     siteId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bondId: 2,
///     haLink: true,
///     isBreakout: true,
///     isPrioritized: true,
///     name: "name",
///     nat: {
///         staticPrefix: "192.0.2.0/24",
///     },
///     physport: 1,
///     routedSubnets: [{
///         nextHop: "192.0.2.1",
///         prefix: "192.0.2.0/24",
///         nat: {
///             staticPrefix: "192.0.2.0/24",
///         },
///     }],
///     staticAddressing: {
///         address: "192.0.2.0/24",
///         dhcpRelay: {
///             serverAddresses: ["192.0.2.1"],
///         },
///         dhcpServer: {
///             dhcpPoolEnd: "192.0.2.1",
///             dhcpPoolStart: "192.0.2.1",
///             dnsServer: "192.0.2.1",
///             dnsServers: ["192.0.2.1"],
///             reservations: {
///                 "00:11:22:33:44:55": "192.0.2.100",
///                 "AA:BB:CC:DD:EE:FF": "192.168.1.101",
///             },
///         },
///         secondaryAddress: "192.0.2.0/24",
///         virtualAddress: "192.0.2.0/24",
///     },
///     vlanTag: 42,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_transit_site_lan = cloudflare.MagicTransitSiteLan("example_magic_transit_site_lan",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     site_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bond_id=2,
///     ha_link=True,
///     is_breakout=True,
///     is_prioritized=True,
///     name="name",
///     nat={
///         "static_prefix": "192.0.2.0/24",
///     },
///     physport=1,
///     routed_subnets=[{
///         "next_hop": "192.0.2.1",
///         "prefix": "192.0.2.0/24",
///         "nat": {
///             "static_prefix": "192.0.2.0/24",
///         },
///     }],
///     static_addressing={
///         "address": "192.0.2.0/24",
///         "dhcp_relay": {
///             "server_addresses": ["192.0.2.1"],
///         },
///         "dhcp_server": {
///             "dhcp_pool_end": "192.0.2.1",
///             "dhcp_pool_start": "192.0.2.1",
///             "dns_server": "192.0.2.1",
///             "dns_servers": ["192.0.2.1"],
///             "reservations": {
///                 "00:11:22:33:44:55": "192.0.2.100",
///                 "AA:BB:CC:DD:EE:FF": "192.168.1.101",
///             },
///         },
///         "secondary_address": "192.0.2.0/24",
///         "virtual_address": "192.0.2.0/24",
///     },
///     vlan_tag=42)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicTransitSiteLan = new Cloudflare.MagicTransitSiteLan("example_magic_transit_site_lan", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         SiteId = "023e105f4ecef8ad9ca31a8372d0c353",
///         BondId = 2,
///         HaLink = true,
///         IsBreakout = true,
///         IsPrioritized = true,
///         Name = "name",
///         Nat = new Cloudflare.Inputs.MagicTransitSiteLanNatArgs
///         {
///             StaticPrefix = "192.0.2.0/24",
///         },
///         Physport = 1,
///         RoutedSubnets = new[]
///         {
///             new Cloudflare.Inputs.MagicTransitSiteLanRoutedSubnetArgs
///             {
///                 NextHop = "192.0.2.1",
///                 Prefix = "192.0.2.0/24",
///                 Nat = new Cloudflare.Inputs.MagicTransitSiteLanRoutedSubnetNatArgs
///                 {
///                     StaticPrefix = "192.0.2.0/24",
///                 },
///             },
///         },
///         StaticAddressing = new Cloudflare.Inputs.MagicTransitSiteLanStaticAddressingArgs
///         {
///             Address = "192.0.2.0/24",
///             DhcpRelay = new Cloudflare.Inputs.MagicTransitSiteLanStaticAddressingDhcpRelayArgs
///             {
///                 ServerAddresses = new[]
///                 {
///                     "192.0.2.1",
///                 },
///             },
///             DhcpServer = new Cloudflare.Inputs.MagicTransitSiteLanStaticAddressingDhcpServerArgs
///             {
///                 DhcpPoolEnd = "192.0.2.1",
///                 DhcpPoolStart = "192.0.2.1",
///                 DnsServer = "192.0.2.1",
///                 DnsServers = new[]
///                 {
///                     "192.0.2.1",
///                 },
///                 Reservations =
///                 {
///                     { "00:11:22:33:44:55", "192.0.2.100" },
///                     { "AA:BB:CC:DD:EE:FF", "192.168.1.101" },
///                 },
///             },
///             SecondaryAddress = "192.0.2.0/24",
///             VirtualAddress = "192.0.2.0/24",
///         },
///         VlanTag = 42,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewMagicTransitSiteLan(ctx, "example_magic_transit_site_lan", &cloudflare.MagicTransitSiteLanArgs{
/// 			AccountId:     pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			SiteId:        pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			BondId:        pulumi.Int(2),
/// 			HaLink:        pulumi.Bool(true),
/// 			IsBreakout:    pulumi.Bool(true),
/// 			IsPrioritized: pulumi.Bool(true),
/// 			Name:          pulumi.String("name"),
/// 			Nat: &cloudflare.MagicTransitSiteLanNatArgs{
/// 				StaticPrefix: pulumi.String("192.0.2.0/24"),
/// 			},
/// 			Physport: pulumi.Int(1),
/// 			RoutedSubnets: cloudflare.MagicTransitSiteLanRoutedSubnetArray{
/// 				&cloudflare.MagicTransitSiteLanRoutedSubnetArgs{
/// 					NextHop: pulumi.String("192.0.2.1"),
/// 					Prefix:  pulumi.String("192.0.2.0/24"),
/// 					Nat: &cloudflare.MagicTransitSiteLanRoutedSubnetNatArgs{
/// 						StaticPrefix: pulumi.String("192.0.2.0/24"),
/// 					},
/// 				},
/// 			},
/// 			StaticAddressing: &cloudflare.MagicTransitSiteLanStaticAddressingArgs{
/// 				Address: pulumi.String("192.0.2.0/24"),
/// 				DhcpRelay: &cloudflare.MagicTransitSiteLanStaticAddressingDhcpRelayArgs{
/// 					ServerAddresses: pulumi.StringArray{
/// 						pulumi.String("192.0.2.1"),
/// 					},
/// 				},
/// 				DhcpServer: &cloudflare.MagicTransitSiteLanStaticAddressingDhcpServerArgs{
/// 					DhcpPoolEnd:   pulumi.String("192.0.2.1"),
/// 					DhcpPoolStart: pulumi.String("192.0.2.1"),
/// 					DnsServer:     pulumi.String("192.0.2.1"),
/// 					DnsServers: pulumi.StringArray{
/// 						pulumi.String("192.0.2.1"),
/// 					},
/// 					Reservations: pulumi.StringMap{
/// 						"00:11:22:33:44:55": pulumi.String("192.0.2.100"),
/// 						"AA:BB:CC:DD:EE:FF": pulumi.String("192.168.1.101"),
/// 					},
/// 				},
/// 				SecondaryAddress: pulumi.String("192.0.2.0/24"),
/// 				VirtualAddress:   pulumi.String("192.0.2.0/24"),
/// 			},
/// 			VlanTag: pulumi.Int(42),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_magictransitsitelan" "example_magic_transit_site_lan" {
///   account_id     = "023e105f4ecef8ad9ca31a8372d0c353"
///   site_id        = "023e105f4ecef8ad9ca31a8372d0c353"
///   bond_id        = 2
///   ha_link        = true
///   is_breakout    = true
///   is_prioritized = true
///   name           = "name"
///   nat = {
///     static_prefix = "192.0.2.0/24"
///   }
///   physport = 1
///   routed_subnets {
///     next_hop = "192.0.2.1"
///     prefix   = "192.0.2.0/24"
///     nat = {
///       static_prefix = "192.0.2.0/24"
///     }
///   }
///   static_addressing = {
///     address = "192.0.2.0/24"
///     dhcp_relay = {
///       server_addresses = ["192.0.2.1"]
///     }
///     dhcp_server = {
///       dhcp_pool_end   = "192.0.2.1"
///       dhcp_pool_start = "192.0.2.1"
///       dns_server      = "192.0.2.1"
///       dns_servers     = ["192.0.2.1"]
///       reservations = {
///         "00:11:22:33:44:55" = "192.0.2.100"
///         "AA:BB:CC:DD:EE:FF" = "192.168.1.101"
///       }
///     }
///     secondary_address = "192.0.2.0/24"
///     virtual_address   = "192.0.2.0/24"
///   }
///   vlan_tag = 42
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicTransitSiteLan;
/// import com.pulumi.cloudflare.MagicTransitSiteLanArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteLanNatArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteLanRoutedSubnetArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteLanRoutedSubnetNatArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteLanStaticAddressingArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteLanStaticAddressingDhcpRelayArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteLanStaticAddressingDhcpServerArgs;
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
///         var exampleMagicTransitSiteLan = new MagicTransitSiteLan("exampleMagicTransitSiteLan", MagicTransitSiteLanArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .siteId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bondId(2)
///             .haLink(true)
///             .isBreakout(true)
///             .isPrioritized(true)
///             .name("name")
///             .nat(MagicTransitSiteLanNatArgs.builder()
///                 .staticPrefix("192.0.2.0/24")
///                 .build())
///             .physport(1)
///             .routedSubnets(MagicTransitSiteLanRoutedSubnetArgs.builder()
///                 .nextHop("192.0.2.1")
///                 .prefix("192.0.2.0/24")
///                 .nat(MagicTransitSiteLanRoutedSubnetNatArgs.builder()
///                     .staticPrefix("192.0.2.0/24")
///                     .build())
///                 .build())
///             .staticAddressing(MagicTransitSiteLanStaticAddressingArgs.builder()
///                 .address("192.0.2.0/24")
///                 .dhcpRelay(MagicTransitSiteLanStaticAddressingDhcpRelayArgs.builder()
///                     .serverAddresses("192.0.2.1")
///                     .build())
///                 .dhcpServer(MagicTransitSiteLanStaticAddressingDhcpServerArgs.builder()
///                     .dhcpPoolEnd("192.0.2.1")
///                     .dhcpPoolStart("192.0.2.1")
///                     .dnsServer("192.0.2.1")
///                     .dnsServers("192.0.2.1")
///                     .reservations(Map.ofEntries(
///                         Map.entry("00:11:22:33:44:55", "192.0.2.100"),
///                         Map.entry("AA:BB:CC:DD:EE:FF", "192.168.1.101")
///                     ))
///                     .build())
///                 .secondaryAddress("192.0.2.0/24")
///                 .virtualAddress("192.0.2.0/24")
///                 .build())
///             .vlanTag(42)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicTransitSiteLan:
///     type: cloudflare:MagicTransitSiteLan
///     name: example_magic_transit_site_lan
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       siteId: 023e105f4ecef8ad9ca31a8372d0c353
///       bondId: 2
///       haLink: true
///       isBreakout: true
///       isPrioritized: true
///       name: name
///       nat:
///         staticPrefix: 192.0.2.0/24
///       physport: 1
///       routedSubnets:
///         - nextHop: 192.0.2.1
///           prefix: 192.0.2.0/24
///           nat:
///             staticPrefix: 192.0.2.0/24
///       staticAddressing:
///         address: 192.0.2.0/24
///         dhcpRelay:
///           serverAddresses:
///             - 192.0.2.1
///         dhcpServer:
///           dhcpPoolEnd: 192.0.2.1
///           dhcpPoolStart: 192.0.2.1
///           dnsServer: 192.0.2.1
///           dnsServers:
///             - 192.0.2.1
///           reservations:
///             00:11:22:33:44:55: 192.0.2.100
///             AA:BB:CC:DD:EE:FF: 192.168.1.101
///         secondaryAddress: 192.0.2.0/24
///         virtualAddress: 192.0.2.0/24
///       vlanTag: 42
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicTransitSiteLan:MagicTransitSiteLan example '<account_id>/<site_id>/<lan_id>'
/// ```
class MagicTransitSiteLan extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<int?> bondId;
  /// mark true to use this LAN for HA probing. only works for site with HA turned on. only one LAN can be set as the ha_link.
  late final pulumi.Output<bool?> haLink;
  /// mark true to use this LAN for source-based breakout traffic
  late final pulumi.Output<bool?> isBreakout;
  /// mark true to use this LAN for source-based prioritized traffic
  late final pulumi.Output<bool?> isPrioritized;
  late final pulumi.Output<String?> name;
  late final pulumi.Output<MagicTransitSiteLanNat?> nat;
  late final pulumi.Output<int?> physport;
  late final pulumi.Output<List<MagicTransitSiteLanRoutedSubnet>?> routedSubnets;
  /// Identifier
  late final pulumi.Output<String> siteId;
  /// If the site is not configured in high availability mode, this configuration is optional (if omitted, use DHCP). However, if in high availability mode, static*address is required along with secondary and virtual address.
  late final pulumi.Output<MagicTransitSiteLanStaticAddressing?> staticAddressing;
  /// VLAN ID. Use zero for untagged.
  late final pulumi.Output<int?> vlanTag;

  /// Creates a new [MagicTransitSiteLan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicTransitSiteLan]. {@macro pulumi_index_magic_transit_site_lan_magic_transit_site_lan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicTransitSiteLan(
    String name, {
    MagicTransitSiteLanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitSiteLan:MagicTransitSiteLan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bondId = registerOutput<int?>('bondId');
    haLink = registerOutput<bool?>('haLink');
    isBreakout = registerOutput<bool?>('isBreakout');
    isPrioritized = registerOutput<bool?>('isPrioritized');
    this.name = registerOutput<String?>('name');
    nat = registerOutput<MagicTransitSiteLanNat?>('nat', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteLanNat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    physport = registerOutput<int?>('physport');
    routedSubnets = registerOutput<List<MagicTransitSiteLanRoutedSubnet>?>('routedSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MagicTransitSiteLanRoutedSubnet>(guardedValue, (value) => MagicTransitSiteLanRoutedSubnet.fromMap((value as Map).cast<String, dynamic>())); });
    siteId = registerOutput<String>('siteId');
    staticAddressing = registerOutput<MagicTransitSiteLanStaticAddressing?>('staticAddressing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteLanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vlanTag = registerOutput<int?>('vlanTag');
  }

  /// Gets an existing [MagicTransitSiteLan] resource's state with the given [name] and [id].
  static MagicTransitSiteLan get(
    String name,
    pulumi.Input<String> id, {
    MagicTransitSiteLanState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicTransitSiteLan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicTransitSiteLan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitSiteLan:MagicTransitSiteLan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bondId = registerOutput<int?>('bondId');
    haLink = registerOutput<bool?>('haLink');
    isBreakout = registerOutput<bool?>('isBreakout');
    isPrioritized = registerOutput<bool?>('isPrioritized');
    this.name = registerOutput<String?>('name');
    nat = registerOutput<MagicTransitSiteLanNat?>('nat', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteLanNat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    physport = registerOutput<int?>('physport');
    routedSubnets = registerOutput<List<MagicTransitSiteLanRoutedSubnet>?>('routedSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MagicTransitSiteLanRoutedSubnet>(guardedValue, (value) => MagicTransitSiteLanRoutedSubnet.fromMap((value as Map).cast<String, dynamic>())); });
    siteId = registerOutput<String>('siteId');
    staticAddressing = registerOutput<MagicTransitSiteLanStaticAddressing?>('staticAddressing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteLanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vlanTag = registerOutput<int?>('vlanTag');
  }

  /// Creates a typed reference to an existing [MagicTransitSiteLan] resource.
  MagicTransitSiteLan.reference(String urn)
    : super(
        'cloudflare:index/magicTransitSiteLan:MagicTransitSiteLan',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bondId = registerOutput<int?>('bondId');
    haLink = registerOutput<bool?>('haLink');
    isBreakout = registerOutput<bool?>('isBreakout');
    isPrioritized = registerOutput<bool?>('isPrioritized');
    this.name = registerOutput<String?>('name');
    nat = registerOutput<MagicTransitSiteLanNat?>('nat', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteLanNat.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    physport = registerOutput<int?>('physport');
    routedSubnets = registerOutput<List<MagicTransitSiteLanRoutedSubnet>?>('routedSubnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MagicTransitSiteLanRoutedSubnet>(guardedValue, (value) => MagicTransitSiteLanRoutedSubnet.fromMap((value as Map).cast<String, dynamic>())); });
    siteId = registerOutput<String>('siteId');
    staticAddressing = registerOutput<MagicTransitSiteLanStaticAddressing?>('staticAddressing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteLanStaticAddressing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vlanTag = registerOutput<int?>('vlanTag');
  }
}
