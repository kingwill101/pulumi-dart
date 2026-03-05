import 'package:pulumi/pulumi.dart' as pulumi;
import 'caa_record_args.dart';
import 'caa_record_state.dart';

/// Enables you to manage DNS CAA Records within Azure DNS.
///
/// &gt; **Note:** [The Azure DNS API has a throttle limit of 500 read (GET) operations per 5 minutes](https://docs.microsoft.com/azure/azure-resource-manager/management/request-limits-and-throttling#network-throttling) - whilst the default read timeouts will work for most cases - in larger configurations you may need to set a larger read timeout then the default 5min. Although, we'd generally recommend that you split the resources out into smaller Terraform configurations to avoid the problem entirely.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleZone = new azure.dns.Zone("example", {
///     name: "mydomain.com",
///     resourceGroupName: example.name,
/// });
/// const exampleCaaRecord = new azure.dns.CaaRecord("example", {
///     name: "test",
///     zoneName: exampleZone.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     records: [
///         {
///             flags: 0,
///             tag: "issue",
///             value: "example.com",
///         },
///         {
///             flags: 0,
///             tag: "issue",
///             value: "example.net",
///         },
///         {
///             flags: 0,
///             tag: "issuewild",
///             value: ";",
///         },
///         {
///             flags: 0,
///             tag: "iodef",
///             value: "mailto:user@nonexisting.tld",
///         },
///     ],
///     tags: {
///         Environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_zone = azure.dns.Zone("example",
///     name="mydomain.com",
///     resource_group_name=example.name)
/// example_caa_record = azure.dns.CaaRecord("example",
///     name="test",
///     zone_name=example_zone.name,
///     resource_group_name=example.name,
///     ttl=300,
///     records=[
///         {
///             "flags": 0,
///             "tag": "issue",
///             "value": "example.com",
///         },
///         {
///             "flags": 0,
///             "tag": "issue",
///             "value": "example.net",
///         },
///         {
///             "flags": 0,
///             "tag": "issuewild",
///             "value": ";",
///         },
///         {
///             "flags": 0,
///             "tag": "iodef",
///             "value": "mailto:user@nonexisting.tld",
///         },
///     ],
///     tags={
///         "Environment": "Production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleZone = new Azure.Dns.Zone("example", new()
///     {
///         Name = "mydomain.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleCaaRecord = new Azure.Dns.CaaRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = exampleZone.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             new Azure.Dns.Inputs.CaaRecordRecordArgs
///             {
///                 Flags = 0,
///                 Tag = "issue",
///                 Value = "example.com",
///             },
///             new Azure.Dns.Inputs.CaaRecordRecordArgs
///             {
///                 Flags = 0,
///                 Tag = "issue",
///                 Value = "example.net",
///             },
///             new Azure.Dns.Inputs.CaaRecordRecordArgs
///             {
///                 Flags = 0,
///                 Tag = "issuewild",
///                 Value = ";",
///             },
///             new Azure.Dns.Inputs.CaaRecordRecordArgs
///             {
///                 Flags = 0,
///                 Tag = "iodef",
///                 Value = "mailto:user@nonexisting.tld",
///             },
///         },
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := dns.NewZone(ctx, "example", &dns.ZoneArgs{
/// 			Name:              pulumi.String("mydomain.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewCaaRecord(ctx, "example", &dns.CaaRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          exampleZone.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: dns.CaaRecordRecordArray{
/// 				&dns.CaaRecordRecordArgs{
/// 					Flags: pulumi.Int(0),
/// 					Tag:   pulumi.String("issue"),
/// 					Value: pulumi.String("example.com"),
/// 				},
/// 				&dns.CaaRecordRecordArgs{
/// 					Flags: pulumi.Int(0),
/// 					Tag:   pulumi.String("issue"),
/// 					Value: pulumi.String("example.net"),
/// 				},
/// 				&dns.CaaRecordRecordArgs{
/// 					Flags: pulumi.Int(0),
/// 					Tag:   pulumi.String("issuewild"),
/// 					Value: pulumi.String(";"),
/// 				},
/// 				&dns.CaaRecordRecordArgs{
/// 					Flags: pulumi.Int(0),
/// 					Tag:   pulumi.String("iodef"),
/// 					Value: pulumi.String("mailto:user@nonexisting.tld"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.dns.Zone;
/// import com.pulumi.azure.dns.ZoneArgs;
/// import com.pulumi.azure.dns.CaaRecord;
/// import com.pulumi.azure.dns.CaaRecordArgs;
/// import com.pulumi.azure.dns.inputs.CaaRecordRecordArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("mydomain.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleCaaRecord = new CaaRecord("exampleCaaRecord", CaaRecordArgs.builder()
///             .name("test")
///             .zoneName(exampleZone.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .records(
///                 CaaRecordRecordArgs.builder()
///                     .flags(0)
///                     .tag("issue")
///                     .value("example.com")
///                     .build(),
///                 CaaRecordRecordArgs.builder()
///                     .flags(0)
///                     .tag("issue")
///                     .value("example.net")
///                     .build(),
///                 CaaRecordRecordArgs.builder()
///                     .flags(0)
///                     .tag("issuewild")
///                     .value(";")
///                     .build(),
///                 CaaRecordRecordArgs.builder()
///                     .flags(0)
///                     .tag("iodef")
///                     .value("mailto:user@nonexisting.tld")
///                     .build())
///             .tags(Map.of("Environment", "Production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleZone:
///     type: azure:dns:Zone
///     name: example
///     properties:
///       name: mydomain.com
///       resourceGroupName: ${example.name}
///   exampleCaaRecord:
///     type: azure:dns:CaaRecord
///     name: example
///     properties:
///       name: test
///       zoneName: ${exampleZone.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       records:
///         - flags: 0
///           tag: issue
///           value: example.com
///         - flags: 0
///           tag: issue
///           value: example.net
///         - flags: 0
///           tag: issuewild
///           value: ;
///         - flags: 0
///           tag: iodef
///           value: mailto:user@nonexisting.tld
///       tags:
///         Environment: Production
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2018-05-01
///
/// ## Import
///
/// CAA records can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dns/caaRecord:CaaRecord example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/dnsZones/zone1/CAA/myrecord1
/// ```
class CaaRecord extends pulumi.CustomResource {
  /// The FQDN of the DNS CAA Record.
  late final pulumi.Output<String> fqdn;
  /// The name of the DNS CAA Record. If you are creating the record in the apex of the zone use `"@"` as the name. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of values that make up the CAA record. Each `record` block supports fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> records;
  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  late final pulumi.Output<int> ttl;
  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [CaaRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CaaRecord]. {@macro pulumi_dns_caa_record_caa_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CaaRecord(
    String name, {
    CaaRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dns/caaRecord:CaaRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<Map<String, dynamic>>>('records');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [CaaRecord] resource's state with the given [name] and [id].
  static CaaRecord get(
    String name,
    pulumi.Input<String> id, {
    CaaRecordState? state,
  }) {
    return CaaRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CaaRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dns/caaRecord:CaaRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<Map<String, dynamic>>>('records');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }
}
