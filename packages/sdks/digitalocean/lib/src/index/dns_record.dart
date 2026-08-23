import 'package:pulumi/pulumi.dart' as pulumi;
import 'dns_record_args.dart';
import 'dns_record_state.dart';

/// Provides a DigitalOcean DNS record resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const _default = new digitalocean.Domain("default", {name: "example.com"});
/// // Add an A record to the domain for www.example.com.
/// const www = new digitalocean.DnsRecord("www", {
///     domain: _default.id,
///     type: digitalocean.RecordType.A,
///     name: "www",
///     value: "192.168.0.11",
/// });
/// // Add a MX record for the example.com domain itself.
/// const mx = new digitalocean.DnsRecord("mx", {
///     domain: _default.id,
///     type: digitalocean.RecordType.MX,
///     name: "@",
///     priority: 10,
///     value: "mail.example.com.",
/// });
/// export const wwwFqdn = www.fqdn;
/// export const mxFqdn = mx.fqdn;
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// default = digitalocean.Domain("default", name="example.com")
/// # Add an A record to the domain for www.example.com.
/// www = digitalocean.DnsRecord("www",
///     domain=default.id,
///     type=digitalocean.RecordType.A,
///     name="www",
///     value="192.168.0.11")
/// # Add a MX record for the example.com domain itself.
/// mx = digitalocean.DnsRecord("mx",
///     domain=default.id,
///     type=digitalocean.RecordType.MX,
///     name="@",
///     priority=10,
///     value="mail.example.com.")
/// pulumi.export("wwwFqdn", www.fqdn)
/// pulumi.export("mxFqdn", mx.fqdn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new DigitalOcean.Domain("default", new()
///     {
///         Name = "example.com",
///     });
///
///     // Add an A record to the domain for www.example.com.
///     var www = new DigitalOcean.DnsRecord("www", new()
///     {
///         Domain = @default.Id,
///         Type = DigitalOcean.RecordType.A,
///         Name = "www",
///         Value = "192.168.0.11",
///     });
///
///     // Add a MX record for the example.com domain itself.
///     var mx = new DigitalOcean.DnsRecord("mx", new()
///     {
///         Domain = @default.Id,
///         Type = DigitalOcean.RecordType.MX,
///         Name = "@",
///         Priority = 10,
///         Value = "mail.example.com.",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["wwwFqdn"] = www.Fqdn,
///         ["mxFqdn"] = mx.Fqdn,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := digitalocean.NewDomain(ctx, "default", &digitalocean.DomainArgs{
/// 			Name: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Add an A record to the domain for www.example.com.
/// 		www, err := digitalocean.NewDnsRecord(ctx, "www", &digitalocean.DnsRecordArgs{
/// 			Domain: _default.ID().ToIDOutput().ToStringOutput(),
/// 			Type:   pulumi.String(digitalocean.RecordTypeA),
/// 			Name:   pulumi.String("www"),
/// 			Value:  pulumi.String("192.168.0.11"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Add a MX record for the example.com domain itself.
/// 		mx, err := digitalocean.NewDnsRecord(ctx, "mx", &digitalocean.DnsRecordArgs{
/// 			Domain:   _default.ID().ToIDOutput().ToStringOutput(),
/// 			Type:     pulumi.String(digitalocean.RecordTypeMX),
/// 			Name:     pulumi.String("@"),
/// 			Priority: pulumi.Int(10),
/// 			Value:    pulumi.String("mail.example.com."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("wwwFqdn", www.Fqdn)
/// 		ctx.Export("mxFqdn", mx.Fqdn)
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     digitalocean = {
///       source = "pulumi/digitalocean"
///     }
///   }
/// }
///
/// resource "digitalocean_domain" "default" {
///   name = "example.com"
/// }
/// # Add an A record to the domain for www.example.com.
/// resource "digitalocean_dnsrecord" "www" {
///   domain = digitalocean_domain.default.id
///   type   = "A"
///   name   = "www"
///   value  = "192.168.0.11"
/// }
/// # Add a MX record for the example.com domain itself.
/// resource "digitalocean_dnsrecord" "mx" {
///   domain   = digitalocean_domain.default.id
///   type     = "MX"
///   name     = "@"
///   priority = 10
///   value    = "mail.example.com."
/// }
/// # Output the FQDN for the www A record.
/// output "wwwFqdn" {
///   value = digitalocean_dnsrecord.www.fqdn
/// }
/// # Output the FQDN for the MX record.
/// output "mxFqdn" {
///   value = digitalocean_dnsrecord.mx.fqdn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.digitalocean.Domain;
/// import com.pulumi.digitalocean.DomainArgs;
/// import com.pulumi.digitalocean.DnsRecord;
/// import com.pulumi.digitalocean.DnsRecordArgs;
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
///         var default_ = new Domain("default", DomainArgs.builder()
///             .name("example.com")
///             .build());
///
///         // Add an A record to the domain for www.example.com.
///         var www = new DnsRecord("www", DnsRecordArgs.builder()
///             .domain(default_.id())
///             .type("A")
///             .name("www")
///             .value("192.168.0.11")
///             .build());
///
///         // Add a MX record for the example.com domain itself.
///         var mx = new DnsRecord("mx", DnsRecordArgs.builder()
///             .domain(default_.id())
///             .type("MX")
///             .name("@")
///             .priority(10)
///             .value("mail.example.com.")
///             .build());
///
///         ctx.export("wwwFqdn", www.fqdn());
///         ctx.export("mxFqdn", mx.fqdn());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: digitalocean:Domain
///     properties:
///       name: example.com
///   # Add an A record to the domain for www.example.com.
///   www:
///     type: digitalocean:DnsRecord
///     properties:
///       domain: ${default.id}
///       type: A
///       name: www
///       value: 192.168.0.11
///   # Add a MX record for the example.com domain itself.
///   mx:
///     type: digitalocean:DnsRecord
///     properties:
///       domain: ${default.id}
///       type: MX
///       name: '@'
///       priority: 10
///       value: mail.example.com.
/// outputs:
///   # Output the FQDN for the www A record.
///   wwwFqdn: ${www.fqdn}
///   # Output the FQDN for the MX record.
///   mxFqdn: ${mx.fqdn}
/// ```
///
///
/// ## Import
///
/// Records can be imported using the domain name and record `id` when joined with a comma. See the following example:
///
/// ```sh
/// $ pulumi import digitalocean:index/dnsRecord:DnsRecord example_record example.com,12345678
/// ```
///
/// &gt;  You find the `id` of the records [using the DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Domain-Records/operation/domains_list_records) or CLI. Run the follow command to list the IDs for all DNS records on a domain: `doctl compute domain records list &lt;domain.name&gt;`
class DnsRecord extends pulumi.CustomResource {
  /// The domain to add the record to.
  late final pulumi.Output<String> domain;
  /// The flags of the record. Only valid when type is `CAA`. Must be between 0 and 255.
  late final pulumi.Output<int?> flags;
  /// The FQDN of the record
  late final pulumi.Output<String> fqdn;
  /// The hostname of the record. Use `@` for records on domain's name itself.
  late final pulumi.Output<String> name;
  /// The port of the record. Only valid when type is `SRV`.  Must be between 1 and 65535.
  late final pulumi.Output<int?> port;
  /// The priority of the record. Only valid when type is `MX` or `SRV`. Must be between 0 and 65535.
  late final pulumi.Output<int?> priority;
  /// The tag of the record. Only valid when type is `CAA`. Must be one of `issue`, `issuewild`, or `iodef`.
  late final pulumi.Output<String?> tag;
  /// The time to live for the record, in seconds. Must be at least 0. Defaults to 1800.
  late final pulumi.Output<int> ttl;
  /// The type of record. Must be one of `A`, `AAAA`, `CAA`, `CNAME`, `MX`, `NS`, `TXT`, or `SRV`.
  late final pulumi.Output<String> type;
  /// The value of the record.
  late final pulumi.Output<String> value;
  /// The weight of the record. Only valid when type is `SRV`.  Must be between 0 and 65535.
  late final pulumi.Output<int?> weight;

  /// Creates a new [DnsRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DnsRecord]. {@macro pulumi_index_dns_record_dns_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DnsRecord(
    String name, {
    DnsRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/dnsRecord:DnsRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domain = registerOutput<String>('domain');
    flags = registerOutput<int?>('flags');
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    priority = registerOutput<int?>('priority');
    tag = registerOutput<String?>('tag');
    ttl = registerOutput<int>('ttl');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
    weight = registerOutput<int?>('weight');
  }

  /// Gets an existing [DnsRecord] resource's state with the given [name] and [id].
  static DnsRecord get(
    String name,
    pulumi.Input<String> id, {
    DnsRecordState? state,
  }) {
    return DnsRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DnsRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/dnsRecord:DnsRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domain = registerOutput<String>('domain');
    flags = registerOutput<int?>('flags');
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    priority = registerOutput<int?>('priority');
    tag = registerOutput<String?>('tag');
    ttl = registerOutput<int>('ttl');
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
    weight = registerOutput<int?>('weight');
  }
}
