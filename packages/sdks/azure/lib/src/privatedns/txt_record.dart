import 'package:pulumi/pulumi.dart' as pulumi;
import 'txt_record_args.dart';
import 'txt_record_record.dart';
import 'txt_record_state.dart';

/// Enables you to manage DNS TXT Records within Azure Private DNS.
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
/// const exampleTxtRecord = new azure.privatedns.TxtRecord("example", {
///     name: "test",
///     resourceGroupName: example.name,
///     zoneName: exampleZone.name,
///     ttl: 300,
///     records: [{
///         value: "v=spf1 mx ~all",
///     }],
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
/// example_txt_record = azure.privatedns.TxtRecord("example",
///     name="test",
///     resource_group_name=example.name,
///     zone_name=example_zone.name,
///     ttl=300,
///     records=[{
///         "value": "v=spf1 mx ~all",
///     }])
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
///     var exampleTxtRecord = new Azure.PrivateDns.TxtRecord("example", new()
///     {
///         Name = "test",
///         ResourceGroupName = example.Name,
///         ZoneName = exampleZone.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             new Azure.PrivateDns.Inputs.TxtRecordRecordArgs
///             {
///                 Value = "v=spf1 mx ~all",
///             },
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
/// 		_, err = privatedns.NewTxtRecord(ctx, "example", &privatedns.TxtRecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ResourceGroupName: example.Name,
/// 			ZoneName:          exampleZone.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: privatedns.TxtRecordRecordArray{
/// 				&privatedns.TxtRecordRecordArgs{
/// 					Value: pulumi.String("v=spf1 mx ~all"),
/// 				},
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
/// resource "azure_privatedns_txtrecord" "example" {
///   name                = "test"
///   resource_group_name = azure_core_resourcegroup.example.name
///   zone_name           = azure_privatedns_zone.example.name
///   ttl                 = 300
///   records {
///     value = "v=spf1 mx ~all"
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
/// import com.pulumi.azure.privatedns.TxtRecord;
/// import com.pulumi.azure.privatedns.TxtRecordArgs;
/// import com.pulumi.azure.privatedns.inputs.TxtRecordRecordArgs;
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
///         var exampleTxtRecord = new TxtRecord("exampleTxtRecord", TxtRecordArgs.builder()
///             .name("test")
///             .resourceGroupName(example.name())
///             .zoneName(exampleZone.name())
///             .ttl(300)
///             .records(TxtRecordRecordArgs.builder()
///                 .value("v=spf1 mx ~all")
///                 .build())
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
///   exampleTxtRecord:
///     type: azure:privatedns:TxtRecord
///     name: example
///     properties:
///       name: test
///       resourceGroupName: ${example.name}
///       zoneName: ${exampleZone.name}
///       ttl: 300
///       records:
///         - value: v=spf1 mx ~all
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
/// Private DNS TXT Records can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatedns/txtRecord:TxtRecord test /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/privateDnsZones/contoso.com/TXT/test
/// ```
class TxtRecord extends pulumi.CustomResource {
  /// The FQDN of the DNS TXT Record.
  late final pulumi.Output<String> fqdn;
  /// The name of the DNS TXT Record. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `record` blocks as defined below.
  late final pulumi.Output<List<TxtRecordRecord>> records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  late final pulumi.Output<int> ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [TxtRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TxtRecord]. {@macro pulumi_privatedns_txt_record_txt_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TxtRecord(
    String name, {
    TxtRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/txtRecord:TxtRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<TxtRecordRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TxtRecordRecord>(guardedValue, (value) => TxtRecordRecord.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [TxtRecord] resource's state with the given [name] and [id].
  static TxtRecord get(
    String name,
    pulumi.Input<String> id, {
    TxtRecordState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TxtRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TxtRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/txtRecord:TxtRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<TxtRecordRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TxtRecordRecord>(guardedValue, (value) => TxtRecordRecord.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Creates a typed reference to an existing [TxtRecord] resource.
  TxtRecord.reference(String urn)
    : super(
        'azure:privatedns/txtRecord:TxtRecord',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<TxtRecordRecord>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TxtRecordRecord>(guardedValue, (value) => TxtRecordRecord.fromMap((value as Map).cast<String, dynamic>())); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }
}
