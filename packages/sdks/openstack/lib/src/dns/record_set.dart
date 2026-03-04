import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_args.dart';
import 'record_set_state.dart';

/// Manages a DNS record set in the OpenStack DNS Service.
///
/// ## Example Usage
///
/// ### Automatically detect the correct network
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const exampleZone = new openstack.dns.Zone("example_zone", {
///     name: "example.com.",
///     email: "email2@example.com",
///     description: "a zone",
///     ttl: 6000,
///     type: "PRIMARY",
/// });
/// const rsExampleCom = new openstack.dns.RecordSet("rs_example_com", {
///     zoneId: exampleZone.id,
///     name: "rs.example.com.",
///     description: "An example record set",
///     ttl: 3000,
///     type: "A",
///     records: ["10.0.0.1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// example_zone = openstack.dns.Zone("example_zone",
///     name="example.com.",
///     email="email2@example.com",
///     description="a zone",
///     ttl=6000,
///     type="PRIMARY")
/// rs_example_com = openstack.dns.RecordSet("rs_example_com",
///     zone_id=example_zone.id,
///     name="rs.example.com.",
///     description="An example record set",
///     ttl=3000,
///     type="A",
///     records=["10.0.0.1"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZone = new OpenStack.Dns.Zone("example_zone", new()
///     {
///         Name = "example.com.",
///         Email = "email2@example.com",
///         Description = "a zone",
///         Ttl = 6000,
///         Type = "PRIMARY",
///     });
///
///     var rsExampleCom = new OpenStack.Dns.RecordSet("rs_example_com", new()
///     {
///         ZoneId = exampleZone.Id,
///         Name = "rs.example.com.",
///         Description = "An example record set",
///         Ttl = 3000,
///         Type = "A",
///         Records = new[]
///         {
///             "10.0.0.1",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleZone, err := dns.NewZone(ctx, "example_zone", &dns.ZoneArgs{
/// 			Name:        pulumi.String("example.com."),
/// 			Email:       pulumi.String("email2@example.com"),
/// 			Description: pulumi.String("a zone"),
/// 			Ttl:         pulumi.Int(6000),
/// 			Type:        pulumi.String("PRIMARY"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewRecordSet(ctx, "rs_example_com", &dns.RecordSetArgs{
/// 			ZoneId:      exampleZone.ID(),
/// 			Name:        pulumi.String("rs.example.com."),
/// 			Description: pulumi.String("An example record set"),
/// 			Ttl:         pulumi.Int(3000),
/// 			Type:        pulumi.String("A"),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("10.0.0.1"),
/// 			},
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
/// import com.pulumi.openstack.dns.Zone;
/// import com.pulumi.openstack.dns.ZoneArgs;
/// import com.pulumi.openstack.dns.RecordSet;
/// import com.pulumi.openstack.dns.RecordSetArgs;
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
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("example.com.")
///             .email("email2@example.com")
///             .description("a zone")
///             .ttl(6000)
///             .type("PRIMARY")
///             .build());
///
///         var rsExampleCom = new RecordSet("rsExampleCom", RecordSetArgs.builder()
///             .zoneId(exampleZone.id())
///             .name("rs.example.com.")
///             .description("An example record set")
///             .ttl(3000)
///             .type("A")
///             .records("10.0.0.1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZone:
///     type: openstack:dns:Zone
///     name: example_zone
///     properties:
///       name: example.com.
///       email: email2@example.com
///       description: a zone
///       ttl: 6000
///       type: PRIMARY
///   rsExampleCom:
///     type: openstack:dns:RecordSet
///     name: rs_example_com
///     properties:
///       zoneId: ${exampleZone.id}
///       name: rs.example.com.
///       description: An example record set
///       ttl: 3000
///       type: A
///       records:
///         - 10.0.0.1
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the zone ID and recordset ID with an optional project ID as a prefix:
///
/// ```sh
/// $ pulumi import openstack:dns/recordSet:RecordSet recordset_1 project_id/zone_id/recordset_id
/// ```
///
/// ```sh
/// $ pulumi import openstack:dns/recordSet:RecordSet recordset_1 zone_id/recordset_id
/// ```
class RecordSet extends pulumi.CustomResource {
  /// A description of the  record set.
  late final pulumi.Output<String?> description;

  /// Disable wait for recordset to reach ACTIVE
  /// status. This argumen is disabled by default. If it is set to true, the recordset
  /// will be considered as created/updated/deleted if OpenStack request returned success.
  late final pulumi.Output<bool?> disableStatusCheck;

  /// The name of the record set. Note the `.` at the end of the name.
  /// Changing this creates a new DNS  record set.
  late final pulumi.Output<String> name;

  /// The ID of the project DNS zone is created
  /// for, sets `X-Auth-Sudo-Tenant-ID` header (requires an assigned
  /// user role in target project)
  late final pulumi.Output<String> projectId;

  /// An array of DNS records.
  late final pulumi.Output<List<String>> records;

  /// The region in which to obtain the V2 DNS client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new DNS  record set.
  late final pulumi.Output<String> region;

  /// The time to live (TTL) of the record set.
  late final pulumi.Output<int> ttl;

  /// The type of record set. Examples: "A", "MX".
  /// Changing this creates a new DNS  record set.
  late final pulumi.Output<String> type;

  /// Map of additional options. Changing this creates a
  /// new record set.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// The ID of the zone in which to create the record set.
  /// Changing this creates a new DNS  record set.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [RecordSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RecordSet]. {@macro pulumi_dns_record_set_record_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RecordSet(
    String name, {
    RecordSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:dns/recordSet:RecordSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    disableStatusCheck = registerOutput<bool?>('disableStatusCheck');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    records = registerOutput<List<String>>('records');
    region = registerOutput<String>('region');
    ttl = registerOutput<int>('ttl');
    type = registerOutput<String>('type');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [RecordSet] resource's state with the given [name] and [id].
  static RecordSet get(
    String name,
    pulumi.Input<String> id, {
    RecordSetState? state,
  }) {
    return RecordSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RecordSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:dns/recordSet:RecordSet',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    disableStatusCheck = registerOutput<bool?>('disableStatusCheck');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
    records = registerOutput<List<String>>('records');
    region = registerOutput<String>('region');
    ttl = registerOutput<int>('ttl');
    type = registerOutput<String>('type');
    valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
    zoneId = registerOutput<String>('zoneId');
  }
}
