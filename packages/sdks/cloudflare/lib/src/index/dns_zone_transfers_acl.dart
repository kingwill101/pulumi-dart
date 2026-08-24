import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_zone_transfers_acl_args.dart';
import 'dns_zone_transfers_acl_state.dart';

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
/// const exampleDnsZoneTransfersAcl = new cloudflare.DnsZoneTransfersAcl("example_dns_zone_transfers_acl", {
///     accountId: "01a7362d577a6c3019a474fd6f485823",
///     ipRange: "192.0.2.53/28",
///     name: "my-acl-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_dns_zone_transfers_acl = cloudflare.DnsZoneTransfersAcl("example_dns_zone_transfers_acl",
///     account_id="01a7362d577a6c3019a474fd6f485823",
///     ip_range="192.0.2.53/28",
///     name="my-acl-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDnsZoneTransfersAcl = new Cloudflare.DnsZoneTransfersAcl("example_dns_zone_transfers_acl", new()
///     {
///         AccountId = "01a7362d577a6c3019a474fd6f485823",
///         IpRange = "192.0.2.53/28",
///         Name = "my-acl-1",
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
/// 		_, err := cloudflare.NewDnsZoneTransfersAcl(ctx, "example_dns_zone_transfers_acl", &cloudflare.DnsZoneTransfersAclArgs{
/// 			AccountId: pulumi.String("01a7362d577a6c3019a474fd6f485823"),
/// 			IpRange:   pulumi.String("192.0.2.53/28"),
/// 			Name:      pulumi.String("my-acl-1"),
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
/// resource "cloudflare_dnszonetransfersacl" "example_dns_zone_transfers_acl" {
///   account_id = "01a7362d577a6c3019a474fd6f485823"
///   ip_range   = "192.0.2.53/28"
///   name       = "my-acl-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.DnsZoneTransfersAcl;
/// import com.pulumi.cloudflare.DnsZoneTransfersAclArgs;
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
///         var exampleDnsZoneTransfersAcl = new DnsZoneTransfersAcl("exampleDnsZoneTransfersAcl", DnsZoneTransfersAclArgs.builder()
///             .accountId("01a7362d577a6c3019a474fd6f485823")
///             .ipRange("192.0.2.53/28")
///             .name("my-acl-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDnsZoneTransfersAcl:
///     type: cloudflare:DnsZoneTransfersAcl
///     name: example_dns_zone_transfers_acl
///     properties:
///       accountId: 01a7362d577a6c3019a474fd6f485823
///       ipRange: 192.0.2.53/28
///       name: my-acl-1
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/dnsZoneTransfersAcl:DnsZoneTransfersAcl example '<account_id>/<acl_id>'
/// ```
class DnsZoneTransfersAcl extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  /// Allowed IPv4/IPv6 address range of primary or secondary nameservers. This will be applied for the entire account. The IP range is used to allow additional NOTIFY IPs for secondary zones and IPs Cloudflare allows AXFR/IXFR requests from for primary zones. CIDRs are limited to a maximum of /24 for IPv4 and /64 for IPv6 respectively.
  late final pulumi.Output<String> ipRange;
  /// The name of the acl.
  late final pulumi.Output<String> name;

  /// Creates a new [DnsZoneTransfersAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsZoneTransfersAcl]. {@macro pulumi_index_dns_zone_transfers_acl_dns_zone_transfers_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsZoneTransfersAcl(
    String name, {
    DnsZoneTransfersAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersAcl:DnsZoneTransfersAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    ipRange = registerOutput<String>('ipRange');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [DnsZoneTransfersAcl] resource's state with the given [name] and [id].
  static DnsZoneTransfersAcl get(
    String name,
    pulumi.Input<String> id, {
    DnsZoneTransfersAclState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DnsZoneTransfersAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DnsZoneTransfersAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsZoneTransfersAcl:DnsZoneTransfersAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    ipRange = registerOutput<String>('ipRange');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [DnsZoneTransfersAcl] resource.
  DnsZoneTransfersAcl.reference(String urn)
    : super(
        'cloudflare:index/dnsZoneTransfersAcl:DnsZoneTransfersAcl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    ipRange = registerOutput<String>('ipRange');
    this.name = registerOutput<String>('name');
  }
}
