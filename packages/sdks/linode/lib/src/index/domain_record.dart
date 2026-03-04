import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_record_args.dart';
import 'domain_record_state.dart';

/// Provides a Linode Domain Record resource.  This can be used to create, modify, and delete Linodes Domain Records.
/// For more information, see [DNS Manager](https://www.linode.com/docs/platform/manager/dns-manager/) and the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-domain-record).
///
/// ## Example Usage
///
/// The following example shows how one might use this resource to configure a Domain Record attached to a Linode Domain.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.Domain("foobar", {
///     type: "master",
///     domain: "foobar.example",
///     soaEmail: "example@foobar.example",
/// });
/// const foobarDomainRecord = new linode.DomainRecord("foobar", {
///     domainId: foobar.id,
///     name: "www",
///     recordType: "CNAME",
///     target: "foobar.example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.Domain("foobar",
///     type="master",
///     domain="foobar.example",
///     soa_email="example@foobar.example")
/// foobar_domain_record = linode.DomainRecord("foobar",
///     domain_id=foobar.id,
///     name="www",
///     record_type="CNAME",
///     target="foobar.example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.Domain("foobar", new()
///     {
///         Type = "master",
///         DomainName = "foobar.example",
///         SoaEmail = "example@foobar.example",
///     });
///
///     var foobarDomainRecord = new Linode.DomainRecord("foobar", new()
///     {
///         DomainId = foobar.Id,
///         Name = "www",
///         RecordType = "CNAME",
///         Target = "foobar.example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := linode.NewDomain(ctx, "foobar", &linode.DomainArgs{
/// 			Type:     pulumi.String("master"),
/// 			Domain:   pulumi.String("foobar.example"),
/// 			SoaEmail: pulumi.String("example@foobar.example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewDomainRecord(ctx, "foobar", &linode.DomainRecordArgs{
/// 			DomainId:   foobar.ID(),
/// 			Name:       pulumi.String("www"),
/// 			RecordType: pulumi.String("CNAME"),
/// 			Target:     pulumi.String("foobar.example"),
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
/// import com.pulumi.linode.Domain;
/// import com.pulumi.linode.DomainArgs;
/// import com.pulumi.linode.DomainRecord;
/// import com.pulumi.linode.DomainRecordArgs;
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
///         var foobar = new Domain("foobar", DomainArgs.builder()
///             .type("master")
///             .domain("foobar.example")
///             .soaEmail("example@foobar.example")
///             .build());
///
///         var foobarDomainRecord = new DomainRecord("foobarDomainRecord", DomainRecordArgs.builder()
///             .domainId(foobar.id())
///             .name("www")
///             .recordType("CNAME")
///             .target("foobar.example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:Domain
///     properties:
///       type: master
///       domain: foobar.example
///       soaEmail: example@foobar.example
///   foobarDomainRecord:
///     type: linode:DomainRecord
///     name: foobar
///     properties:
///       domainId: ${foobar.id}
///       name: www
///       recordType: CNAME
///       target: foobar.example
/// ```
///
///
/// ## Import
///
/// Linodes Domain Records can be imported using the Linode Domain `id` followed by the Domain Record `id` separated by a comma, e.g.
///
/// ```sh
/// $ pulumi import linode:index/domainRecord:DomainRecord www-foobar 1234567,7654321
/// ```
class DomainRecord extends pulumi.CustomResource {
  /// The ID of the Domain to access.  *Changing `domain_id` forces the creation of a new Linode Domain Record.*.
  late final pulumi.Output<int> domainId;

  /// The name of this Record. Setting this is invalid for `SRV` records as it is generated by the API. This field's actual usage depends on the type of record this represents. For A and AAAA records, this is the subdomain being associated with an IP address.
  late final pulumi.Output<String> name;

  /// The port this Record points to.
  late final pulumi.Output<int?> port;

  /// The priority of the target host. Lower values are preferred.
  late final pulumi.Output<int?> priority;

  /// The protocol this Record's service communicates with. Only valid for SRV records.
  late final pulumi.Output<String?> protocol;

  /// The type of Record this is in the DNS system. For example, A records associate a domain name with an IPv4 address, and AAAA records associate a domain name with an IPv6 address. See all supported record types [here](https://techdocs.akamai.com/linode-api/reference/post-domain-record). *Changing `record_type` forces the creation of a new Linode Domain Record.*.
  late final pulumi.Output<String> recordType;

  /// The service this Record identified. Only valid for SRV records.
  late final pulumi.Output<String?> service;

  /// The tag portion of a CAA record. It is invalid to set this on other record types.
  late final pulumi.Output<String?> tag;

  /// The target for this Record. This field's actual usage depends on the type of record this represents. For A and AAAA records, this is the address the named Domain should resolve to.
  ///
  /// - - -
  late final pulumi.Output<String> target;

  /// 'Time to Live' - the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers. Valid values are 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  late final pulumi.Output<int?> ttlSec;

  /// The relative weight of this Record. Higher values are preferred.
  late final pulumi.Output<int?> weight;

  /// Creates a new [DomainRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainRecord]. {@macro pulumi_index_domain_record_domain_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainRecord(
    String name, {
    DomainRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/domainRecord:DomainRecord',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainId = registerOutput<int>('domainId');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    priority = registerOutput<int?>('priority');
    protocol = registerOutput<String?>('protocol');
    recordType = registerOutput<String>('recordType');
    service = registerOutput<String?>('service');
    tag = registerOutput<String?>('tag');
    target = registerOutput<String>('target');
    ttlSec = registerOutput<int?>('ttlSec');
    weight = registerOutput<int?>('weight');
  }

  /// Gets an existing [DomainRecord] resource's state with the given [name] and [id].
  static DomainRecord get(
    String name,
    pulumi.Input<String> id, {
    DomainRecordState? state,
  }) {
    return DomainRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/domainRecord:DomainRecord',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    domainId = registerOutput<int>('domainId');
    this.name = registerOutput<String>('name');
    port = registerOutput<int?>('port');
    priority = registerOutput<int?>('priority');
    protocol = registerOutput<String?>('protocol');
    recordType = registerOutput<String>('recordType');
    service = registerOutput<String?>('service');
    tag = registerOutput<String?>('tag');
    target = registerOutput<String>('target');
    ttlSec = registerOutput<int?>('ttlSec');
    weight = registerOutput<int?>('weight');
  }
}
