import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_record_args.dart';
import 'dns_record_data.dart';
import 'dns_record_settings.dart';
import 'dns_record_state.dart';

/// Accepted Permissions
///
/// - `DNS Read`
/// - `DNS Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleDnsRecord = new cloudflare.DnsRecord("example_dns_record", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "example.com",
///     ttl: 3600,
///     type: "A",
///     comment: "Domain verification record",
///     content: "198.51.100.4",
///     privateRouting: true,
///     proxied: true,
///     settings: {
///         ipv4Only: true,
///         ipv6Only: true,
///     },
///     tags: ["owner:dns-team"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_dns_record = cloudflare.DnsRecord("example_dns_record",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="example.com",
///     ttl=float(3600),
///     type="A",
///     comment="Domain verification record",
///     content="198.51.100.4",
///     private_routing=True,
///     proxied=True,
///     settings={
///         "ipv4_only": True,
///         "ipv6_only": True,
///     },
///     tags=["owner:dns-team"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDnsRecord = new Cloudflare.DnsRecord("example_dns_record", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "example.com",
///         Ttl = 3600,
///         Type = "A",
///         Comment = "Domain verification record",
///         Content = "198.51.100.4",
///         PrivateRouting = true,
///         Proxied = true,
///         Settings = new Cloudflare.Inputs.DnsRecordSettingsArgs
///         {
///             Ipv4Only = true,
///             Ipv6Only = true,
///         },
///         Tags = new[]
///         {
///             "owner:dns-team",
///         },
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
/// 		_, err := cloudflare.NewDnsRecord(ctx, "example_dns_record", &cloudflare.DnsRecordArgs{
/// 			ZoneId:         pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:           pulumi.String("example.com"),
/// 			Ttl:            pulumi.Float64(3600),
/// 			Type:           pulumi.String("A"),
/// 			Comment:        pulumi.String("Domain verification record"),
/// 			Content:        pulumi.String("198.51.100.4"),
/// 			PrivateRouting: pulumi.Bool(true),
/// 			Proxied:        pulumi.Bool(true),
/// 			Settings: &cloudflare.DnsRecordSettingsArgs{
/// 				Ipv4Only: pulumi.Bool(true),
/// 				Ipv6Only: pulumi.Bool(true),
/// 			},
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("owner:dns-team"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_dnsrecord" "example_dns_record" {
///   zone_id         = "023e105f4ecef8ad9ca31a8372d0c353"
///   name            = "example.com"
///   ttl             = 3600
///   type            = "A"
///   comment         = "Domain verification record"
///   content         = "198.51.100.4"
///   private_routing = true
///   proxied         = true
///   settings = {
///     ipv4_only = true
///     ipv6_only = true
///   }
///   tags = ["owner:dns-team"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.DnsRecord;
/// import com.pulumi.cloudflare.DnsRecordArgs;
/// import com.pulumi.cloudflare.inputs.DnsRecordSettingsArgs;
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
///         var exampleDnsRecord = new DnsRecord("exampleDnsRecord", DnsRecordArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("example.com")
///             .ttl(3600.0)
///             .type("A")
///             .comment("Domain verification record")
///             .content("198.51.100.4")
///             .privateRouting(true)
///             .proxied(true)
///             .settings(DnsRecordSettingsArgs.builder()
///                 .ipv4Only(true)
///                 .ipv6Only(true)
///                 .build())
///             .tags("owner:dns-team")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDnsRecord:
///     type: cloudflare:DnsRecord
///     name: example_dns_record
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: example.com
///       ttl: 3600
///       type: A
///       comment: Domain verification record
///       content: 198.51.100.4
///       privateRouting: true
///       proxied: true
///       settings:
///         ipv4Only: true
///         ipv6Only: true
///       tags:
///         - owner:dns-team
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/dnsRecord:DnsRecord example '<zone_id>/<dns_record_id>'
/// ```
class DnsRecord extends pulumi.CustomResource {
  /// Comments or notes about the DNS record. This field has no effect on DNS responses.
  late final pulumi.Output<String?> comment;
  /// When the record comment was last modified. Omitted if there is no comment.
  late final pulumi.Output<String> commentModifiedOn;
  /// A valid IPv4 address.
  late final pulumi.Output<String> content;
  /// When the record was created.
  late final pulumi.Output<String> createdOn;
  /// Components of a MX record.
  late final pulumi.Output<DnsRecordData?> data;
  /// Extra Cloudflare-specific information about the record.
  late final pulumi.Output<String> meta;
  /// When the record was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// DNS record name (or @ for the zone apex) in Punycode.
  late final pulumi.Output<String> name;
  /// Required for MX, SRV and URI records; unused by other record types. Records with lower priorities are preferred.
  late final pulumi.Output<double?> priority;
  /// Enables private network routing to the origin.
  late final pulumi.Output<bool?> privateRouting;
  /// Whether the record can be proxied by Cloudflare or not.
  late final pulumi.Output<bool> proxiable;
  /// Whether the record is receiving the performance and security benefits of Cloudflare.
  late final pulumi.Output<bool> proxied;
  /// Settings for the DNS record.
  late final pulumi.Output<DnsRecordSettings> settings;
  /// Custom tags for the DNS record. This field has no effect on DNS responses.
  late final pulumi.Output<List<String>> tags;
  /// When the record tags were last modified. Omitted if there are no tags.
  late final pulumi.Output<String> tagsModifiedOn;
  /// Time To Live (TTL) of the DNS record in seconds. Setting to 1 means 'automatic'. Value must be between 60 and 86400, with the minimum reduced to 30 for Enterprise zones.
  late final pulumi.Output<double> ttl;
  /// Record type.
  /// Available values: "A", "AAAA", "CNAME", "MX", "NS", "OPENPGPKEY", "PTR", "TXT", "CAA", "CERT", "DNSKEY", "DS", "HTTPS", "LOC", "NAPTR", "SMIMEA", "SRV", "SSHFP", "SVCB", "TLSA", "URI".
  late final pulumi.Output<String> type;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DnsRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsRecord]. {@macro pulumi_index_dns_record_dns_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsRecord(
    String name, {
    DnsRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsRecord:DnsRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    comment = registerOutput<String?>('comment');
    commentModifiedOn = registerOutput<String>('commentModifiedOn');
    content = registerOutput<String>('content');
    createdOn = registerOutput<String>('createdOn');
    data = registerOutput<DnsRecordData?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsRecordData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    meta = registerOutput<String>('meta');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    priority = registerOutput<double?>('priority');
    privateRouting = registerOutput<bool?>('privateRouting');
    proxiable = registerOutput<bool>('proxiable');
    proxied = registerOutput<bool>('proxied');
    settings = registerOutput<DnsRecordSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsRecordSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsModifiedOn = registerOutput<String>('tagsModifiedOn');
    ttl = registerOutput<double>('ttl');
    type = registerOutput<String>('type');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DnsRecord] resource's state with the given [name] and [id].
  static DnsRecord get(
    String name,
    pulumi.Input<String> id, {
    DnsRecordState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DnsRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DnsRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/dnsRecord:DnsRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    comment = registerOutput<String?>('comment');
    commentModifiedOn = registerOutput<String>('commentModifiedOn');
    content = registerOutput<String>('content');
    createdOn = registerOutput<String>('createdOn');
    data = registerOutput<DnsRecordData?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsRecordData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    meta = registerOutput<String>('meta');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    priority = registerOutput<double?>('priority');
    privateRouting = registerOutput<bool?>('privateRouting');
    proxiable = registerOutput<bool>('proxiable');
    proxied = registerOutput<bool>('proxied');
    settings = registerOutput<DnsRecordSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsRecordSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsModifiedOn = registerOutput<String>('tagsModifiedOn');
    ttl = registerOutput<double>('ttl');
    type = registerOutput<String>('type');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [DnsRecord] resource.
  DnsRecord.reference(String urn)
    : super(
        'cloudflare:index/dnsRecord:DnsRecord',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    comment = registerOutput<String?>('comment');
    commentModifiedOn = registerOutput<String>('commentModifiedOn');
    content = registerOutput<String>('content');
    createdOn = registerOutput<String>('createdOn');
    data = registerOutput<DnsRecordData?>('data', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsRecordData.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    meta = registerOutput<String>('meta');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    priority = registerOutput<double?>('priority');
    privateRouting = registerOutput<bool?>('privateRouting');
    proxiable = registerOutput<bool>('proxiable');
    proxied = registerOutput<bool>('proxied');
    settings = registerOutput<DnsRecordSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DnsRecordSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<List<String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tagsModifiedOn = registerOutput<String>('tagsModifiedOn');
    ttl = registerOutput<double>('ttl');
    type = registerOutput<String>('type');
    zoneId = registerOutput<String>('zoneId');
  }
}
