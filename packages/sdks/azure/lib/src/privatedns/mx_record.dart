import 'package:pulumi/pulumi.dart' as pulumi;
import 'mx_record_args.dart';
import 'mx_record_state.dart';

/// Enables you to manage DNS MX Records within Azure Private DNS.
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
/// const exampleMxRecord = new azure.privatedns.MxRecord("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     zoneName: exampleZone.name,
///     ttl: 300,
///     records: [
///         {
///             preference: 10,
///             exchange: "mx1.contoso.com",
///         },
///         {
///             preference: 20,
///             exchange: "backupmx.contoso.com",
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
/// example_mx_record = azure.privatedns.MxRecord("example",
///     name="example",
///     resource_group_name=example.name,
///     zone_name=example_zone.name,
///     ttl=300,
///     records=[
///         {
///             "preference": 10,
///             "exchange": "mx1.contoso.com",
///         },
///         {
///             "preference": 20,
///             "exchange": "backupmx.contoso.com",
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
///     var exampleMxRecord = new Azure.PrivateDns.MxRecord("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         ZoneName = exampleZone.Name,
///         Ttl = 300,
///         Records = new[]
///         {
///             new Azure.PrivateDns.Inputs.MxRecordRecordArgs
///             {
///                 Preference = 10,
///                 Exchange = "mx1.contoso.com",
///             },
///             new Azure.PrivateDns.Inputs.MxRecordRecordArgs
///             {
///                 Preference = 20,
///                 Exchange = "backupmx.contoso.com",
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
/// 		_, err = privatedns.NewMxRecord(ctx, "example", &privatedns.MxRecordArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			ZoneName:          exampleZone.Name,
/// 			Ttl:               pulumi.Int(300),
/// 			Records: privatedns.MxRecordRecordArray{
/// 				&privatedns.MxRecordRecordArgs{
/// 					Preference: pulumi.Int(10),
/// 					Exchange:   pulumi.String("mx1.contoso.com"),
/// 				},
/// 				&privatedns.MxRecordRecordArgs{
/// 					Preference: pulumi.Int(20),
/// 					Exchange:   pulumi.String("backupmx.contoso.com"),
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
/// import com.pulumi.azure.privatedns.Zone;
/// import com.pulumi.azure.privatedns.ZoneArgs;
/// import com.pulumi.azure.privatedns.MxRecord;
/// import com.pulumi.azure.privatedns.MxRecordArgs;
/// import com.pulumi.azure.privatedns.inputs.MxRecordRecordArgs;
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
///             .name("contoso.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleMxRecord = new MxRecord("exampleMxRecord", MxRecordArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .zoneName(exampleZone.name())
///             .ttl(300)
///             .records(
///                 MxRecordRecordArgs.builder()
///                     .preference(10)
///                     .exchange("mx1.contoso.com")
///                     .build(),
///                 MxRecordRecordArgs.builder()
///                     .preference(20)
///                     .exchange("backupmx.contoso.com")
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
///   exampleMxRecord:
///     type: azure:privatedns:MxRecord
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       zoneName: ${exampleZone.name}
///       ttl: 300
///       records:
///         - preference: 10
///           exchange: mx1.contoso.com
///         - preference: 20
///           exchange: backupmx.contoso.com
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
/// Private DNS MX Records can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatedns/mxRecord:MxRecord example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/privateDnsZones/contoso.com/MX/@
/// ```
class MxRecord extends pulumi.CustomResource {
  /// The FQDN of the DNS MX Record.
  late final pulumi.Output<String> fqdn;
  /// The name of the DNS MX Record. Changing this forces a new resource to be created. Default to '@' for root zone entry.
  late final pulumi.Output<String> name;
  /// One or more `record` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> records;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Time To Live (TTL) of the DNS record in seconds.
  late final pulumi.Output<int> ttl;
  /// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [MxRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MxRecord]. {@macro pulumi_privatedns_mx_record_mx_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MxRecord(
    String name, {
    MxRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/mxRecord:MxRecord',
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

  /// Gets an existing [MxRecord] resource's state with the given [name] and [id].
  static MxRecord get(
    String name,
    pulumi.Input<String> id, {
    MxRecordState? state,
  }) {
    return MxRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MxRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/mxRecord:MxRecord',
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
