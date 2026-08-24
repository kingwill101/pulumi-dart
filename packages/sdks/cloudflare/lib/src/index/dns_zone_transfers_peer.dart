import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_transfers_peer_args.dart';
import 'dns_zone_transfers_peer_state.dart';

/// Accepted Permissions
///
/// - `Account Settings Read`
/// - `Account Settings Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleDnsZoneTransfersPeer = new cloudflare.DnsZoneTransfersPeer("example_dns_zone_transfers_peer", {
///     accountId: "01a7362d577a6c3019a474fd6f485823",
///     name: "my-peer-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_dns_zone_transfers_peer = cloudflare.DnsZoneTransfersPeer("example_dns_zone_transfers_peer",
///     account_id="01a7362d577a6c3019a474fd6f485823",
///     name="my-peer-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDnsZoneTransfersPeer = new Cloudflare.DnsZoneTransfersPeer("example_dns_zone_transfers_peer", new()
///     {
///         AccountId = "01a7362d577a6c3019a474fd6f485823",
///         Name = "my-peer-1",
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
/// 		_, err := cloudflare.NewDnsZoneTransfersPeer(ctx, "example_dns_zone_transfers_peer", &cloudflare.DnsZoneTransfersPeerArgs{
/// 			AccountId: pulumi.String("01a7362d577a6c3019a474fd6f485823"),
/// 			Name:      pulumi.String("my-peer-1"),
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
/// resource "cloudflare_dnszonetransferspeer" "example_dns_zone_transfers_peer" {
///   account_id = "01a7362d577a6c3019a474fd6f485823"
///   name       = "my-peer-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.DnsZoneTransfersPeer;
/// import com.pulumi.cloudflare.DnsZoneTransfersPeerArgs;
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
///         var exampleDnsZoneTransfersPeer = new DnsZoneTransfersPeer("exampleDnsZoneTransfersPeer", DnsZoneTransfersPeerArgs.builder()
///             .accountId("01a7362d577a6c3019a474fd6f485823")
///             .name("my-peer-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDnsZoneTransfersPeer:
///     type: cloudflare:DnsZoneTransfersPeer
///     name: example_dns_zone_transfers_peer
///     properties:
///       accountId: 01a7362d577a6c3019a474fd6f485823
///       name: my-peer-1
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/dnsZoneTransfersPeer:DnsZoneTransfersPeer example '<account_id>/<peer_id>'
/// ```
class DnsZoneTransfersPeer extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// IPv4/IPv6 address of primary or secondary nameserver, depending on what zone this peer is linked to. For primary zones this IP defines the IP of the secondary nameserver Cloudflare will NOTIFY upon zone changes. For secondary zones this IP defines the IP of the primary nameserver Cloudflare will send AXFR/IXFR requests to.
  late final pulumi.Output<String?> ip;
  /// Enable IXFR transfer protocol, default is AXFR. Only applicable to secondary zones.
  late final pulumi.Output<bool?> ixfrEnable;
  /// The name of the peer.
  late final pulumi.Output<String> name;
  /// DNS port of primary or secondary nameserver, depending on what zone this peer is linked to.
  late final pulumi.Output<double?> port;
  /// TSIG authentication will be used for zone transfer if configured.
  late final pulumi.Output<String?> tsigId;

  /// Creates a new [DnsZoneTransfersPeer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsZoneTransfersPeer]. {@macro pulumi_index_dns_zone_transfers_peer_dns_zone_transfers_peer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsZoneTransfersPeer(
    String name, {
    DnsZoneTransfersPeerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersPeer:DnsZoneTransfersPeer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    ip = registerOutput<String?>('ip');
    ixfrEnable = registerOutput<bool?>('ixfrEnable');
    this.name = registerOutput<String>('name');
    port = registerOutput<double?>('port');
    tsigId = registerOutput<String?>('tsigId');
  }

  /// Gets an existing [DnsZoneTransfersPeer] resource's state with the given [name] and [id].
  static DnsZoneTransfersPeer get(
    String name,
    pulumi.Input<String> id, {
    DnsZoneTransfersPeerState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DnsZoneTransfersPeer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DnsZoneTransfersPeer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersPeer:DnsZoneTransfersPeer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    ip = registerOutput<String?>('ip');
    ixfrEnable = registerOutput<bool?>('ixfrEnable');
    this.name = registerOutput<String>('name');
    port = registerOutput<double?>('port');
    tsigId = registerOutput<String?>('tsigId');
  }

  /// Creates a typed reference to an existing [DnsZoneTransfersPeer] resource.
  DnsZoneTransfersPeer.reference(String urn)
    : super(
        'cloudflare:index/dnsZoneTransfersPeer:DnsZoneTransfersPeer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    ip = registerOutput<String?>('ip');
    ixfrEnable = registerOutput<bool?>('ixfrEnable');
    this.name = registerOutput<String>('name');
    port = registerOutput<double?>('port');
    tsigId = registerOutput<String?>('tsigId');
  }
}
