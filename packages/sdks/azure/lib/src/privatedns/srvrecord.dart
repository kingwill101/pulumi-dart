import 'package:pulumi/pulumi.dart' as pulumi;
import 'srvrecord_args.dart';
import 'srvrecord_record.dart';
import 'srvrecord_state.dart';

/// Enables you to manage DNS SRV Records within Azure Private DNS.
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
/// const exampleZone = new azure.privatedns.Zone("example", {
///     name: "contoso.com",
///     resourceGroupName: example.name,
/// });
/// const exampleSRVRecord = new azure.privatedns.SRVRecord("example", {
///     name: "test",
///     resourceGroupName: example.name,
///     zoneName: exampleZone.name,
///     ttl: 300,
///     records: [
///         {
///             priority: 1,
///             weight: 5,
///             port: 8080,
///             target: "target1.contoso.com",
///         },
///         {
///             priority: 10,
///             weight: 10,
///             port: 8080,
///             target: "target2.contoso.com",
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
/// example_zone = azure.privatedns.Zone("example",
///     name="contoso.com",
///     resource_group_name=example.name)
/// example_srv_record = azure.privatedns.SRVRecord("example",
///     name="test",
///     resource_group_name=example.name,
///     zone_name=example_zone.name,
///     ttl=300,
///     records=[
///         {
///             "priority": 1,
///             "weight": 5,
///             "port": 8080,
///             "target": "target1.contoso.com",
///         },
///         {
///             "priority": 10,
///             "weight": 10,
///             "port": 8080,
///             "target": "target2.contoso.com",
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
///     var exampleZone = new Azure.PrivateDns.Zone("example", new()
///     {
///         Name = "contoso.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSRVRecord = new Azure.PrivateDns.SRVRecord("example", new()
///     {
///         Name = "test",
///         ResourceGroupName = example.Name,
///         ZoneName = exampleZone.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             new Azure.PrivateDns.Inputs.SRVRecordRecordArgs
///             {
///                 Priority = 1,
///                 Weight = 5,
///                 Port = 8080,
///                 Target = "target1.contoso.com",
///             },
///             new Azure.PrivateDns.Inputs.SRVRecordRecordArgs
///             {
///                 Priority = 10,
///                 Weight = 10,
///                 Port = 8080,
///                 Target = "target2.contoso.com",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
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
/// 		exampleZone, err := privatedns.NewZone(ctx, "example", &privatedns.ZoneArgs{
/// 			Name:              pulumi.String("contoso.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatedns.NewSRVRecord(ctx, "example", &privatedns.SRVRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ResourceGroupName: example.Name,
/// 			ZoneName:          exampleZone.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: privatedns.SRVRecordRecordArray{
/// 				&privatedns.SRVRecordRecordArgs{
/// 					Priority: pulumi.Int(1),
/// 					Weight:   pulumi.Int(5),
/// 					Port:     pulumi.Int(8080),
/// 					Target:   pulumi.String("target1.contoso.com"),
/// 				},
/// 				&privatedns.SRVRecordRecordArgs{
/// 					Priority: pulumi.Int(10),
/// 					Weight:   pulumi.Int(10),
/// 					Port:     pulumi.Int(8080),
/// 					Target:   pulumi.String("target2.contoso.com"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_privatedns_zone" "example" {
///   name                = "contoso.com"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_privatedns_srvrecord" "example" {
///   name                = "test"
///   resource_group_name = azure_core_resourcegroup.example.name
///   zone_name           = azure_privatedns_zone.example.name
///   ttl                 = 300
///   records {
///     priority = 1
///     weight   = 5
///     port     = 8080
///     target   = "target1.contoso.com"
///   }
///   records {
///     priority = 10
///     weight   = 10
///     port     = 8080
///     target   = "target2.contoso.com"
///   }
///   tags = {
///     "Environment" = "Production"
///   }
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
/// import com.pulumi.azure.privatedns.Zone;
/// import com.pulumi.azure.privatedns.ZoneArgs;
/// import com.pulumi.azure.privatedns.SRVRecord;
/// import com.pulumi.azure.privatedns.SRVRecordArgs;
/// import com.pulumi.azure.privatedns.inputs.SRVRecordRecordArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("contoso.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSRVRecord = new SRVRecord("exampleSRVRecord", SRVRecordArgs.builder()
///             .name("test")
///             .resourceGroupName(example.name())
///             .zoneName(exampleZone.name())
///             .ttl(300)
///             .records(
///                 SRVRecordRecordArgs.builder()
///                     .priority(1)
///                     .weight(5)
///                     .port(8080)
///                     .target("target1.contoso.com")
///                     .build(),
///                 SRVRecordRecordArgs.builder()
///                     .priority(10)
///                     .weight(10)
///                     .port(8080)
///                     .target("target2.contoso.com")
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
///     type: azure:privatedns:Zone
///     name: example
///     properties:
///       name: contoso.com
///       resourceGroupName: ${example.name}
///   exampleSRVRecord:
///     type: azure:privatedns:SRVRecord
///     name: example
///     properties:
///       name: test
///       resourceGroupName: ${example.name}
///       zoneName: ${exampleZone.name}
///       ttl: 300
///       records:
///         - priority: 1
///           weight: 5
///           port: 8080
///           target: target1.contoso.com
///         - priority: 10
///           weight: 10
///           port: 8080
///           target: target2.contoso.com
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
/// * `Microsoft.Network` - 2024-06-01
///
/// ## Import
///
/// Private DNS SRV Records can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatedns/sRVRecord:SRVRecord test /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/privateDnsZones/contoso.com/SRV/test
/// ```
class SRVRecord extends pulumi.CustomResource {
  /// The FQDN of the DNS SRV Record.
  late final pulumi.Output<String> fqdn;
  /// The name of the DNS SRV Record. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `record` blocks as defined below.
  late final pulumi.Output<List<SRVRecordRecord>> records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  late final pulumi.Output<int> ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [SRVRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SRVRecord]. {@macro pulumi_privatedns_s_rvrecord_srvrecord_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SRVRecord(
    String name, {
    SRVRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/sRVRecord:SRVRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<SRVRecordRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SRVRecordRecord>(guardedValue, (value) => SRVRecordRecord.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [SRVRecord] resource's state with the given [name] and [id].
  static SRVRecord get(
    String name,
    pulumi.Input<String> id, {
    SRVRecordState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SRVRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SRVRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/sRVRecord:SRVRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<SRVRecordRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SRVRecordRecord>(guardedValue, (value) => SRVRecordRecord.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Creates a typed reference to an existing [SRVRecord] resource.
  SRVRecord.reference(String urn)
    : super(
        'azure:privatedns/sRVRecord:SRVRecord',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<SRVRecordRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SRVRecordRecord>(guardedValue, (value) => SRVRecordRecord.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }
}
