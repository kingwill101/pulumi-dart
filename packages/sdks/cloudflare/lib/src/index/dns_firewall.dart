import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_firewall_args.dart';
import 'dns_firewall_attack_mitigation.dart';
import 'dns_firewall_state.dart';

/// Accepted Permissions
///
/// - `DNS Firewall Read`
/// - `DNS Firewall Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleDnsFirewall = new cloudflare.DnsFirewall("example_dns_firewall", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "My Awesome DNS Firewall cluster",
///     upstreamIps: [
///         "192.0.2.1",
///         "198.51.100.1",
///         "2001:DB8:100::CF",
///     ],
///     attackMitigation: {
///         enabled: true,
///         onlyWhenUpstreamUnhealthy: false,
///     },
///     deprecateAnyRequests: true,
///     dnsFirewallIpCount: 2,
///     ecsFallback: false,
///     maximumCacheTtl: 900,
///     minimumCacheTtl: 60,
///     negativeCacheTtl: 900,
///     ratelimit: 600,
///     retries: 2,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_dns_firewall = cloudflare.DnsFirewall("example_dns_firewall",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="My Awesome DNS Firewall cluster",
///     upstream_ips=[
///         "192.0.2.1",
///         "198.51.100.1",
///         "2001:DB8:100::CF",
///     ],
///     attack_mitigation={
///         "enabled": True,
///         "only_when_upstream_unhealthy": False,
///     },
///     deprecate_any_requests=True,
///     dns_firewall_ip_count=2,
///     ecs_fallback=False,
///     maximum_cache_ttl=float(900),
///     minimum_cache_ttl=float(60),
///     negative_cache_ttl=float(900),
///     ratelimit=float(600),
///     retries=float(2))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDnsFirewall = new Cloudflare.DnsFirewall("example_dns_firewall", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "My Awesome DNS Firewall cluster",
///         UpstreamIps = new[]
///         {
///             "192.0.2.1",
///             "198.51.100.1",
///             "2001:DB8:100::CF",
///         },
///         AttackMitigation = new Cloudflare.Inputs.DnsFirewallAttackMitigationArgs
///         {
///             Enabled = true,
///             OnlyWhenUpstreamUnhealthy = false,
///         },
///         DeprecateAnyRequests = true,
///         DnsFirewallIpCount = 2,
///         EcsFallback = false,
///         MaximumCacheTtl = 900,
///         MinimumCacheTtl = 60,
///         NegativeCacheTtl = 900,
///         Ratelimit = 600,
///         Retries = 2,
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
/// 		_, err := cloudflare.NewDnsFirewall(ctx, "example_dns_firewall", &cloudflare.DnsFirewallArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("My Awesome DNS Firewall cluster"),
/// 			UpstreamIps: pulumi.StringArray{
/// 				pulumi.String("192.0.2.1"),
/// 				pulumi.String("198.51.100.1"),
/// 				pulumi.String("2001:DB8:100::CF"),
/// 			},
/// 			AttackMitigation: &cloudflare.DnsFirewallAttackMitigationArgs{
/// 				Enabled:                   pulumi.Bool(true),
/// 				OnlyWhenUpstreamUnhealthy: pulumi.Bool(false),
/// 			},
/// 			DeprecateAnyRequests: pulumi.Bool(true),
/// 			DnsFirewallIpCount:   pulumi.Int(2),
/// 			EcsFallback:          pulumi.Bool(false),
/// 			MaximumCacheTtl:      pulumi.Float64(900),
/// 			MinimumCacheTtl:      pulumi.Float64(60),
/// 			NegativeCacheTtl:     pulumi.Float64(900),
/// 			Ratelimit:            pulumi.Float64(600),
/// 			Retries:              pulumi.Float64(2),
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
/// resource "cloudflare_dnsfirewall" "example_dns_firewall" {
///   account_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   name         = "My Awesome DNS Firewall cluster"
///   upstream_ips = ["192.0.2.1", "198.51.100.1", "2001:DB8:100::CF"]
///   attack_mitigation = {
///     enabled                      = true
///     only_when_upstream_unhealthy = false
///   }
///   deprecate_any_requests = true
///   dns_firewall_ip_count  = 2
///   ecs_fallback           = false
///   maximum_cache_ttl      = 900
///   minimum_cache_ttl      = 60
///   negative_cache_ttl     = 900
///   ratelimit              = 600
///   retries                = 2
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.DnsFirewall;
/// import com.pulumi.cloudflare.DnsFirewallArgs;
/// import com.pulumi.cloudflare.inputs.DnsFirewallAttackMitigationArgs;
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
///         var exampleDnsFirewall = new DnsFirewall("exampleDnsFirewall", DnsFirewallArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("My Awesome DNS Firewall cluster")
///             .upstreamIps(
///                 "192.0.2.1",
///                 "198.51.100.1",
///                 "2001:DB8:100::CF")
///             .attackMitigation(DnsFirewallAttackMitigationArgs.builder()
///                 .enabled(true)
///                 .onlyWhenUpstreamUnhealthy(false)
///                 .build())
///             .deprecateAnyRequests(true)
///             .dnsFirewallIpCount(2)
///             .ecsFallback(false)
///             .maximumCacheTtl(900.0)
///             .minimumCacheTtl(60.0)
///             .negativeCacheTtl(900.0)
///             .ratelimit(600.0)
///             .retries(2.0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDnsFirewall:
///     type: cloudflare:DnsFirewall
///     name: example_dns_firewall
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: My Awesome DNS Firewall cluster
///       upstreamIps:
///         - 192.0.2.1
///         - 198.51.100.1
///         - 2001:DB8:100::CF
///       attackMitigation:
///         enabled: true
///         onlyWhenUpstreamUnhealthy: false
///       deprecateAnyRequests: true
///       dnsFirewallIpCount: 2
///       ecsFallback: false
///       maximumCacheTtl: 900
///       minimumCacheTtl: 60
///       negativeCacheTtl: 900
///       ratelimit: 600
///       retries: 2
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/dnsFirewall:DnsFirewall example '<account_id>/<dns_firewall_id>'
/// ```
class DnsFirewall extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// Attack mitigation settings
  late final pulumi.Output<DnsFirewallAttackMitigation> attackMitigation;
  /// Whether to refuse to answer queries for the ANY type
  late final pulumi.Output<bool?> deprecateAnyRequests;
  /// Number of IPv4 addresses to assign to the DNS Firewall cluster. Only used during cluster creation and cannot be changed later.
  late final pulumi.Output<int> dnsFirewallIpCount;
  late final pulumi.Output<List<String>> dnsFirewallIps;
  /// Whether to forward client IP (resolver) subnet if no EDNS Client Subnet is sent
  late final pulumi.Output<bool?> ecsFallback;
  /// By default, Cloudflare attempts to cache responses for as long as
  /// indicated by the TTL received from upstream nameservers. This setting
  /// sets an upper bound on this duration. For caching purposes, higher TTLs
  /// will be decreased to the maximum value defined by this setting.
  late final pulumi.Output<double> maximumCacheTtl;
  /// By default, Cloudflare attempts to cache responses for as long as
  /// indicated by the TTL received from upstream nameservers. This setting
  /// sets a lower bound on this duration. For caching purposes, lower TTLs
  /// will be increased to the minimum value defined by this setting.
  ///
  /// This setting does not affect the TTL value in the DNS response
  /// Cloudflare returns to clients. Cloudflare will always forward the TTL
  /// value received from upstream nameservers.
  ///
  /// Note that, even with this setting, there is no guarantee that a
  /// response will be cached for at least the specified duration. Cached
  /// responses may be removed earlier for capacity or other operational
  /// reasons.
  late final pulumi.Output<double> minimumCacheTtl;
  /// Last modification of DNS Firewall cluster
  late final pulumi.Output<String> modifiedOn;
  /// DNS Firewall cluster name
  late final pulumi.Output<String> name;
  /// This setting controls how long DNS Firewall should cache negative
  /// responses (e.g., NXDOMAIN) from the upstream servers.
  ///
  /// This setting does not affect the TTL value in the DNS response
  /// Cloudflare returns to clients. Cloudflare will always forward the TTL
  /// value received from upstream nameservers.
  late final pulumi.Output<double?> negativeCacheTtl;
  /// Maximum number of DNS queries per second that will be forwarded to your upstream nameservers. The limit is enforced per server, where each server receives a fraction of the configured value. The actual aggregate rate for a data center may vary depending on how many servers are present. Responses served from cache do not count toward this limit. Set to null to disable rate limiting.
  late final pulumi.Output<double?> ratelimit;
  /// Number of retries for fetching DNS responses from upstream nameservers (not counting the initial attempt)
  late final pulumi.Output<double> retries;
  late final pulumi.Output<List<String>> upstreamIps;

  /// Creates a new [DnsFirewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsFirewall]. {@macro pulumi_index_dns_firewall_dns_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsFirewall(
    String name, {
    DnsFirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsFirewall:DnsFirewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    attackMitigation = registerOutput<DnsFirewallAttackMitigation>('attackMitigation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsFirewallAttackMitigation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deprecateAnyRequests = registerOutput<bool?>('deprecateAnyRequests');
    dnsFirewallIpCount = registerOutput<int>('dnsFirewallIpCount');
    dnsFirewallIps = registerOutput<List<String>>('dnsFirewallIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ecsFallback = registerOutput<bool?>('ecsFallback');
    maximumCacheTtl = registerOutput<double>('maximumCacheTtl');
    minimumCacheTtl = registerOutput<double>('minimumCacheTtl');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    negativeCacheTtl = registerOutput<double?>('negativeCacheTtl');
    ratelimit = registerOutput<double?>('ratelimit');
    retries = registerOutput<double>('retries');
    upstreamIps = registerOutput<List<String>>('upstreamIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [DnsFirewall] resource's state with the given [name] and [id].
  static DnsFirewall get(
    String name,
    pulumi.Input<String> id, {
    DnsFirewallState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DnsFirewall._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DnsFirewall._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsFirewall:DnsFirewall',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    attackMitigation = registerOutput<DnsFirewallAttackMitigation>('attackMitigation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsFirewallAttackMitigation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deprecateAnyRequests = registerOutput<bool?>('deprecateAnyRequests');
    dnsFirewallIpCount = registerOutput<int>('dnsFirewallIpCount');
    dnsFirewallIps = registerOutput<List<String>>('dnsFirewallIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ecsFallback = registerOutput<bool?>('ecsFallback');
    maximumCacheTtl = registerOutput<double>('maximumCacheTtl');
    minimumCacheTtl = registerOutput<double>('minimumCacheTtl');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    negativeCacheTtl = registerOutput<double?>('negativeCacheTtl');
    ratelimit = registerOutput<double?>('ratelimit');
    retries = registerOutput<double>('retries');
    upstreamIps = registerOutput<List<String>>('upstreamIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [DnsFirewall] resource.
  DnsFirewall.reference(String urn)
    : super(
        'cloudflare:index/dnsFirewall:DnsFirewall',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    attackMitigation = registerOutput<DnsFirewallAttackMitigation>('attackMitigation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsFirewallAttackMitigation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deprecateAnyRequests = registerOutput<bool?>('deprecateAnyRequests');
    dnsFirewallIpCount = registerOutput<int>('dnsFirewallIpCount');
    dnsFirewallIps = registerOutput<List<String>>('dnsFirewallIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ecsFallback = registerOutput<bool?>('ecsFallback');
    maximumCacheTtl = registerOutput<double>('maximumCacheTtl');
    minimumCacheTtl = registerOutput<double>('minimumCacheTtl');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    negativeCacheTtl = registerOutput<double?>('negativeCacheTtl');
    ratelimit = registerOutput<double?>('ratelimit');
    retries = registerOutput<double>('retries');
    upstreamIps = registerOutput<List<String>>('upstreamIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
