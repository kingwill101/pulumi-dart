import 'package:pulumi/pulumi.dart' as pulumi;
import 'arecord_args.dart';
import 'arecord_state.dart';

/// Enables you to manage DNS A Records within Azure DNS.
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
/// const exampleARecord = new azure.dns.ARecord("example", {
///     name: "test",
///     zoneName: exampleZone.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     records: ["10.0.180.17"],
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
/// example_a_record = azure.dns.ARecord("example",
///     name="test",
///     zone_name=example_zone.name,
///     resource_group_name=example.name,
///     ttl=300,
///     records=["10.0.180.17"])
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
///     var exampleARecord = new Azure.Dns.ARecord("example", new()
///     {
///         Name = "test",
///         ZoneName = exampleZone.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             "10.0.180.17",
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
/// 		_, err = dns.NewARecord(ctx, "example", &dns.ARecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          exampleZone.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("10.0.180.17"),
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
/// import com.pulumi.azure.dns.ARecord;
/// import com.pulumi.azure.dns.ARecordArgs;
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
///         var exampleARecord = new ARecord("exampleARecord", ARecordArgs.builder()
///             .name("test")
///             .zoneName(exampleZone.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .records("10.0.180.17")
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
///   exampleARecord:
///     type: azure:dns:ARecord
///     name: example
///     properties:
///       name: test
///       zoneName: ${exampleZone.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       records:
///         - 10.0.180.17
/// ```
///
///
///
/// ### Alias Record)
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
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "mypublicip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Dynamic",
///     ipVersion: "IPv4",
/// });
/// const exampleARecord = new azure.dns.ARecord("example", {
///     name: "test",
///     zoneName: exampleZone.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     targetResourceId: examplePublicIp.id,
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
/// example_public_ip = azure.network.PublicIp("example",
///     name="mypublicip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Dynamic",
///     ip_version="IPv4")
/// example_a_record = azure.dns.ARecord("example",
///     name="test",
///     zone_name=example_zone.name,
///     resource_group_name=example.name,
///     ttl=300,
///     target_resource_id=example_public_ip.id)
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
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "mypublicip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Dynamic",
///         IpVersion = "IPv4",
///     });
///
///     var exampleARecord = new Azure.Dns.ARecord("example", new()
///     {
///         Name = "test",
///         ZoneName = exampleZone.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         TargetResourceId = examplePublicIp.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("mypublicip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Dynamic"),
/// 			IpVersion:         pulumi.String("IPv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewARecord(ctx, "example", &dns.ARecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          exampleZone.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			TargetResourceId:  examplePublicIp.ID(),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.dns.ARecord;
/// import com.pulumi.azure.dns.ARecordArgs;
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
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("mypublicip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Dynamic")
///             .ipVersion("IPv4")
///             .build());
///
///         var exampleARecord = new ARecord("exampleARecord", ARecordArgs.builder()
///             .name("test")
///             .zoneName(exampleZone.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .targetResourceId(examplePublicIp.id())
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
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: mypublicip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Dynamic
///       ipVersion: IPv4
///   exampleARecord:
///     type: azure:dns:ARecord
///     name: example
///     properties:
///       name: test
///       zoneName: ${exampleZone.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       targetResourceId: ${examplePublicIp.id}
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
/// A records can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dns/aRecord:ARecord example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/dnsZones/zone1/A/myrecord1
/// ```
class ARecord extends pulumi.CustomResource {
  /// The FQDN of the DNS A Record.
  late final pulumi.Output<String> fqdn;

  /// The name of the DNS A Record. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// List of IPv4 Addresses. Conflicts with `target_resource_id`.
  late final pulumi.Output<List<String>?> records;

  /// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  ///
  /// &gt; **Note:** either `records` OR `target_resource_id` must be specified, but not both.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The Azure resource id of the target object. Conflicts with `records`.
  late final pulumi.Output<String?> targetResourceId;

  /// The Time To Live (TTL) of the DNS record in seconds.
  late final pulumi.Output<int> ttl;

  /// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `zone_name` should be the name of resource `azure.dns.Zone` instead of `azure.privatedns.Zone`.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [ARecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ARecord]. {@macro pulumi_dns_a_record_arecord_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ARecord(
    String name, {
    ARecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:dns/aRecord:ARecord',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<String>?>('records');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    targetResourceId = registerOutput<String?>('targetResourceId');
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [ARecord] resource's state with the given [name] and [id].
  static ARecord get(
    String name,
    pulumi.Input<String> id, {
    ARecordState? state,
  }) {
    return ARecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ARecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:dns/aRecord:ARecord',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<String>?>('records');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    targetResourceId = registerOutput<String?>('targetResourceId');
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }
}
