import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_args.dart';
import 'zone_soa_record.dart';
import 'zone_state.dart';

/// Enables you to manage Private DNS zones within Azure DNS. These zones are hosted on Azure's name servers.
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
///     name: "mydomain.com",
///     resourceGroupName: example.name,
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
///     name="mydomain.com",
///     resource_group_name=example.name)
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
///         Name = "mydomain.com",
///         ResourceGroupName = example.Name,
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
/// 		_, err = privatedns.NewZone(ctx, "example", &privatedns.ZoneArgs{
/// 			Name:              pulumi.String("mydomain.com"),
/// 			ResourceGroupName: example.Name,
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
///       name: mydomain.com
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
///
/// ## Import
///
/// Private DNS Zones can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatedns/zone:Zone zone1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/privateDnsZones/zone1
/// ```
class Zone extends pulumi.CustomResource {
  /// The maximum number of record sets that can be created in this Private DNS zone.
  late final pulumi.Output<int> maxNumberOfRecordSets;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone.
  late final pulumi.Output<int> maxNumberOfVirtualNetworkLinks;
  /// The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled.
  late final pulumi.Output<int> maxNumberOfVirtualNetworkLinksWithRegistration;
  /// The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If you are going to be using the Private DNS Zone with a Private Endpoint the name of the Private DNS Zone must follow the **Private DNS Zone name** schema in the [product documentation](https://docs.microsoft.com/azure/private-link/private-endpoint-dns#virtual-network-and-on-premises-workloads-using-a-dns-forwarder) in order for the two resources to be connected successfully.
  late final pulumi.Output<String> name;
  /// The current number of record sets in this Private DNS zone.
  late final pulumi.Output<int> numberOfRecordSets;
  /// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// An `soa_record` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ZoneSoaRecord> soaRecord;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Zone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Zone]. {@macro pulumi_privatedns_zone_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Zone(
    String name, {
    ZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/zone:Zone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.maxNumberOfRecordSets = registerOutput<int>('maxNumberOfRecordSets');
    this.maxNumberOfVirtualNetworkLinks = registerOutput<int>('maxNumberOfVirtualNetworkLinks');
    this.maxNumberOfVirtualNetworkLinksWithRegistration = registerOutput<int>('maxNumberOfVirtualNetworkLinksWithRegistration');
    this.name = registerOutput<String>('name');
    this.numberOfRecordSets = registerOutput<int>('numberOfRecordSets');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.soaRecord = registerOutput<ZoneSoaRecord>('soaRecord');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Zone] resource's state with the given [name] and [id].
  static Zone get(
    String name,
    pulumi.Input<String> id, {
    ZoneState? state,
  }) {
    return Zone._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Zone._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/zone:Zone',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.maxNumberOfRecordSets = registerOutput<int>('maxNumberOfRecordSets');
    this.maxNumberOfVirtualNetworkLinks = registerOutput<int>('maxNumberOfVirtualNetworkLinks');
    this.maxNumberOfVirtualNetworkLinksWithRegistration = registerOutput<int>('maxNumberOfVirtualNetworkLinksWithRegistration');
    this.name = registerOutput<String>('name');
    this.numberOfRecordSets = registerOutput<int>('numberOfRecordSets');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.soaRecord = registerOutput<ZoneSoaRecord>('soaRecord');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
