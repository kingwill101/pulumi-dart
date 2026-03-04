import 'package:pulumi/pulumi.dart' as pulumi;
import 'srv_record_args.dart';
import 'srv_record_state.dart';

/// Enables you to manage DNS SRV Records within Azure DNS.
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
/// const exampleSrvRecord = new azure.dns.SrvRecord("example", {
///     name: "test",
///     zoneName: exampleZone.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     records: [{
///         priority: 1,
///         weight: 5,
///         port: 8080,
///         target: "target1.contoso.com",
///     }],
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
/// example_srv_record = azure.dns.SrvRecord("example",
///     name="test",
///     zone_name=example_zone.name,
///     resource_group_name=example.name,
///     ttl=300,
///     records=[{
///         "priority": 1,
///         "weight": 5,
///         "port": 8080,
///         "target": "target1.contoso.com",
///     }],
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
///     var exampleSrvRecord = new Azure.Dns.SrvRecord("example", new()
///     {
///         Name = "test",
///         ZoneName = exampleZone.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             new Azure.Dns.Inputs.SrvRecordRecordArgs
///             {
///                 Priority = 1,
///                 Weight = 5,
///                 Port = 8080,
///                 Target = "target1.contoso.com",
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
/// 		_, err = dns.NewSrvRecord(ctx, "example", &dns.SrvRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          exampleZone.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: dns.SrvRecordRecordArray{
/// 				&dns.SrvRecordRecordArgs{
/// 					Priority: pulumi.Int(1),
/// 					Weight:   pulumi.Int(5),
/// 					Port:     pulumi.Int(8080),
/// 					Target:   pulumi.String("target1.contoso.com"),
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
/// import com.pulumi.azure.dns.SrvRecord;
/// import com.pulumi.azure.dns.SrvRecordArgs;
/// import com.pulumi.azure.dns.inputs.SrvRecordRecordArgs;
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
///         var exampleSrvRecord = new SrvRecord("exampleSrvRecord", SrvRecordArgs.builder()
///             .name("test")
///             .zoneName(exampleZone.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .records(SrvRecordRecordArgs.builder()
///                 .priority(1)
///                 .weight(5)
///                 .port(8080)
///                 .target("target1.contoso.com")
///                 .build())
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
///   exampleSrvRecord:
///     type: azure:dns:SrvRecord
///     name: example
///     properties:
///       name: test
///       zoneName: ${exampleZone.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       records:
///         - priority: 1
///           weight: 5
///           port: 8080
///           target: target1.contoso.com
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
/// SRV records can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dns/srvRecord:SrvRecord example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/dnsZones/zone1/SRV/myrecord1
/// ```
class SrvRecord extends pulumi.CustomResource {
  /// The FQDN of the DNS SRV Record.
  late final pulumi.Output<String> fqdn;

  /// The name of the DNS SRV Record. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A list of values that make up the SRV record. Each `record` block supports fields documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> records;

  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The Time To Live (TTL) of the DNS record in seconds.
  late final pulumi.Output<int> ttl;

  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [SrvRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SrvRecord]. {@macro pulumi_dns_srv_record_srv_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SrvRecord(
    String name, {
    SrvRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:dns/srvRecord:SrvRecord',
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

  /// Gets an existing [SrvRecord] resource's state with the given [name] and [id].
  static SrvRecord get(
    String name,
    pulumi.Input<String> id, {
    SrvRecordState? state,
  }) {
    return SrvRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SrvRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:dns/srvRecord:SrvRecord',
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
