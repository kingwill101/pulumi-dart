import 'package:pulumi/pulumi.dart' as pulumi;
import 'aaaarecord_args.dart';
import 'aaaarecord_state.dart';

/// Enables you to manage DNS AAAA Records within Azure Private DNS.
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
/// const test = new azure.privatedns.Zone("test", {
///     name: "mydomain.com",
///     resourceGroupName: example.name,
/// });
/// const testAAAARecord = new azure.privatedns.AAAARecord("test", {
///     name: "test",
///     zoneName: test.name,
///     resourceGroupName: example.name,
///     ttl: 300,
///     records: [
///         "fd5d:70bc:930e:d008:0000:0000:0000:7334",
///         "fd5d:70bc:930e:d008::7335",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// test = azure.privatedns.Zone("test",
///     name="mydomain.com",
///     resource_group_name=example.name)
/// test_aaaa_record = azure.privatedns.AAAARecord("test",
///     name="test",
///     zone_name=test.name,
///     resource_group_name=example.name,
///     ttl=300,
///     records=[
///         "fd5d:70bc:930e:d008:0000:0000:0000:7334",
///         "fd5d:70bc:930e:d008::7335",
///     ])
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
///     var test = new Azure.PrivateDns.Zone("test", new()
///     {
///         Name = "mydomain.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var testAAAARecord = new Azure.PrivateDns.AAAARecord("test", new()
///     {
///         Name = "test",
///         ZoneName = test.Name,
///         ResourceGroupName = example.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             "fd5d:70bc:930e:d008:0000:0000:0000:7334",
///             "fd5d:70bc:930e:d008::7335",
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
/// 		test, err := privatedns.NewZone(ctx, "test", &privatedns.ZoneArgs{
/// 			Name:              pulumi.String("mydomain.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatedns.NewAAAARecord(ctx, "test", &privatedns.AAAARecordArgs{
/// 			Name:              pulumi.String("test"),
/// 			ZoneName:          test.Name,
/// 			ResourceGroupName: example.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: pulumi.StringArray{
/// 				pulumi.String("fd5d:70bc:930e:d008:0000:0000:0000:7334"),
/// 				pulumi.String("fd5d:70bc:930e:d008::7335"),
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
/// resource "azure_privatedns_zone" "test" {
///   name                = "mydomain.com"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_privatedns_aaaarecord" "test" {
///   name                = "test"
///   zone_name           = azure_privatedns_zone.test.name
///   resource_group_name = azure_core_resourcegroup.example.name
///   ttl                 = 300
///   records             = ["fd5d:70bc:930e:d008:0000:0000:0000:7334", "fd5d:70bc:930e:d008::7335"]
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
/// import com.pulumi.azure.privatedns.AAAARecord;
/// import com.pulumi.azure.privatedns.AAAARecordArgs;
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
///         var test = new Zone("test", ZoneArgs.builder()
///             .name("mydomain.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var testAAAARecord = new AAAARecord("testAAAARecord", AAAARecordArgs.builder()
///             .name("test")
///             .zoneName(test.name())
///             .resourceGroupName(example.name())
///             .ttl(300)
///             .records(
///                 "fd5d:70bc:930e:d008:0000:0000:0000:7334",
///                 "fd5d:70bc:930e:d008::7335")
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
///   test:
///     type: azure:privatedns:Zone
///     properties:
///       name: mydomain.com
///       resourceGroupName: ${example.name}
///   testAAAARecord:
///     type: azure:privatedns:AAAARecord
///     name: test
///     properties:
///       name: test
///       zoneName: ${test.name}
///       resourceGroupName: ${example.name}
///       ttl: 300
///       records:
///         - fd5d:70bc:930e:d008:0000:0000:0000:7334
///         - fd5d:70bc:930e:d008::7335
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
/// Private DNS AAAA Records can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatedns/aAAARecord:AAAARecord test /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/privateDnsZones/zone1/AAAA/myrecord1
/// ```
class AAAARecord extends pulumi.CustomResource {
  /// The FQDN of the DNS AAAA Record.
  late final pulumi.Output<String> fqdn;
  /// The name of the DNS A Record. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A list of IPv6 Addresses.
  late final pulumi.Output<List<String>> records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  late final pulumi.Output<int> ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [AAAARecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AAAARecord]. {@macro pulumi_privatedns_a_aaarecord_aaaarecord_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AAAARecord(
    String name, {
    AAAARecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/aAAARecord:AAAARecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<String>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [AAAARecord] resource's state with the given [name] and [id].
  static AAAARecord get(
    String name,
    pulumi.Input<String> id, {
    AAAARecordState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AAAARecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AAAARecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/aAAARecord:AAAARecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<String>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }

  /// Creates a typed reference to an existing [AAAARecord] resource.
  AAAARecord.reference(String urn)
    : super(
        'azure:privatedns/aAAARecord:AAAARecord',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    fqdn = registerOutput<String>('fqdn');
    this.name = registerOutput<String>('name');
    records = registerOutput<List<String>>('records', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    ttl = registerOutput<int>('ttl');
    zoneName = registerOutput<String>('zoneName');
  }
}
