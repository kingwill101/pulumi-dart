import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_state.dart';

/// Provides a Linode Domain resource.  This can be used to create, modify, and delete Linode Domains through Linode's managed DNS service.
/// For more information, see [DNS Manager](https://www.linode.com/docs/platform/manager/dns-manager/) and the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-domain).
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
///     tags: [
///         "foo",
///         "bar",
///     ],
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
///     soa_email="example@foobar.example",
///     tags=[
///         "foo",
///         "bar",
///     ])
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
///         Tags = new[]
///         {
///             "foo",
///             "bar",
///         },
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
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("foo"),
/// 				pulumi.String("bar"),
/// 			},
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
///             .tags(
///                 "foo",
///                 "bar")
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
///       tags:
///         - foo
///         - bar
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
/// Linodes Domains can be imported using the Linode Domain `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/domain:Domain foobar 1234567
/// ```
class Domain extends pulumi.CustomResource {
  /// The list of IPs that may perform a zone transfer for this Domain. This is potentially dangerous, and should be set to an empty list unless you intend to use it.
  late final pulumi.Output<List<String>?> axfrIps;
  /// A description for this Domain. This is for display purposes only.
  late final pulumi.Output<String?> description;
  /// The domain this Domain represents. These must be unique in our system; you cannot have two Domains representing the same domain.
  late final pulumi.Output<String> domain;
  /// The amount of time in seconds that may pass before this Domain is no longer authoritative. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  late final pulumi.Output<int?> expireSec;
  /// The group this Domain belongs to. This is for display purposes only.
  late final pulumi.Output<String?> group;
  /// The IP addresses representing the master DNS for this Domain.
  ///
  /// - - -
  late final pulumi.Output<List<String>?> masterIps;
  /// The amount of time in seconds before this Domain should be refreshed. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  late final pulumi.Output<int?> refreshSec;
  /// The interval, in seconds, at which a failed refresh should be retried. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  late final pulumi.Output<int?> retrySec;
  /// Start of Authority email address. This is required for master Domains.
  late final pulumi.Output<String?> soaEmail;
  /// Used to control whether this Domain is currently being rendered (defaults to "active").
  late final pulumi.Output<String> status;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  late final pulumi.Output<List<String>> tags;
  /// 'Time to Live' - the amount of time in seconds that this Domain's records may be cached by resolvers or other domain servers. Valid values are 0, 30, 120, 300, 3600, 7200, 14400, 28800, 57600, 86400, 172800, 345600, 604800, 1209600, and 2419200 - any other value will be rounded to the nearest valid value.
  late final pulumi.Output<int?> ttlSec;
  /// If this Domain represents the authoritative source of information for the domain it describes, or if it is a read-only copy of a master (also called a slave).
  late final pulumi.Output<String> type;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_index_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.axfrIps = registerOutput<List<String>?>('axfrIps');
    this.description = registerOutput<String?>('description');
    this.domain = registerOutput<String>('domain');
    this.expireSec = registerOutput<int?>('expireSec');
    this.group = registerOutput<String?>('group');
    this.masterIps = registerOutput<List<String>?>('masterIps');
    this.refreshSec = registerOutput<int?>('refreshSec');
    this.retrySec = registerOutput<int?>('retrySec');
    this.soaEmail = registerOutput<String?>('soaEmail');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<List<String>>('tags');
    this.ttlSec = registerOutput<int?>('ttlSec');
    this.type = registerOutput<String>('type');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.axfrIps = registerOutput<List<String>?>('axfrIps');
    this.description = registerOutput<String?>('description');
    this.domain = registerOutput<String>('domain');
    this.expireSec = registerOutput<int?>('expireSec');
    this.group = registerOutput<String?>('group');
    this.masterIps = registerOutput<List<String>?>('masterIps');
    this.refreshSec = registerOutput<int?>('refreshSec');
    this.retrySec = registerOutput<int?>('retrySec');
    this.soaEmail = registerOutput<String?>('soaEmail');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<List<String>>('tags');
    this.ttlSec = registerOutput<int?>('ttlSec');
    this.type = registerOutput<String>('type');
  }
}
